const fs = require('node:fs');
const path = require('node:path');
const crypto = require('node:crypto');
const { z } = require('zod');
const ROOT = path.resolve(__dirname, '../..');
const RULES = fs.readFileSync(path.join(__dirname, 'rules.md'), 'utf8');
const modelName = () => process.env.SEO_AI_MODEL || 'gemma-4-31b-it';
const hash = value => crypto.createHash('sha256').update(JSON.stringify(value)).digest('hex');
function loadEnv() { require('@next/env').loadEnvConfig(ROOT, true, { info() {}, error() {} }); }
const sourceSchema = z.object({ id: z.string().min(1), url: z.string().url().refine(s => s.startsWith('https://')), name: z.string().min(1), extract: z.string().min(1).max(18000) }).strict();
const recordSchema = z.object({
  id: z.string().min(1), kind: z.enum(['drama', 'season', 'episode']),
  imported_facts: z.record(z.unknown()), existing: z.record(z.unknown()),
  verified_facts: z.object({ episode: z.number().int().positive().optional(), broadcast: z.number().int().positive().optional(), part: z.number().int().positive().optional(), season: z.number().int().positive().optional(), languages: z.array(z.string()).optional(), edition: z.enum(['subtitled','dubbed','original']).optional(), approved_short_name: z.string().optional(), notes: z.array(z.string()).optional() }).strict(),
  source_ids: z.array(z.string()),
}).strict();
const inputSchema = z.object({ version: z.literal(1), drama_id: z.string().min(1), sources: z.array(sourceSchema), records: z.array(recordSchema).min(1) }).strict();
const draftSchema = z.object({ items: z.array(z.object({
  id: z.string().min(1), seo_title: z.string().trim().min(1).max(60), seo_description: z.string().trim().min(1).max(160),
  display_title: z.string().trim().min(1).max(300), short_description: z.string().trim().min(1).max(800),
  sections: z.array(z.object({ heading: z.string().min(1).max(200), content: z.string().min(1).max(1800), source_ids: z.array(z.string()) }).strict()).max(8),
  unresolved: z.array(z.string().min(1).max(500)).max(30),
}).strict()) }).strict();
function validateInput(value) {
  const input = inputSchema.parse(value);
  if (new Set(input.records.map(r => r.id)).size !== input.records.length) throw new Error('Duplicate input IDs');
  const sources = new Set(input.sources.map(s => s.id));
  if (sources.size !== input.sources.length) throw new Error('Duplicate source IDs');
  for (const r of input.records) if (r.source_ids.some(id => !sources.has(id))) throw new Error('Unknown input source ID');
  return input;
}
function validateDraft(value, input) {
  const parsed = draftSchema.safeParse(value);
  if (!parsed.success) return { errors: parsed.error.issues.map(e => `${e.path.join('.')}: ${e.message}`), review: [] };
  const errors = [], review = [], expected = new Map(input.records.map(r => [r.id,r]));
  const ids = new Set(), titles = new Set(), descriptions = new Set();
  for (const item of parsed.data.items) {
    const r = expected.get(item.id);
    if (!r) { errors.push(`Unknown output ID: ${item.id}`); continue; }
    if (ids.has(item.id)) errors.push(`Duplicate output ID: ${item.id}`);
    ids.add(item.id);
    for (const [text,set,label] of [[item.seo_title,titles,'title'],[item.seo_description,descriptions,'description']]) {
      const normalized = text.toLowerCase(); if(set.has(normalized)) errors.push(`Duplicate ${label}: ${item.id}`); set.add(normalized);
    }
    const allowed = new Set(r.source_ids);
    for (const section of item.sections) if (section.source_ids.some(id => !allowed.has(id))) errors.push(`Unapproved source: ${item.id}`);
    const allText = [item.seo_title,item.seo_description,item.display_title,item.short_description,...item.sections.map(s=>s.content)].join(' ');
    if (/https?:\/\/|<[^>]+>/.test(allText)) errors.push(`Unexpected URL/HTML: ${item.id}`);
    const v = r.verified_facts;
    const identities = [[/\b(?:episode\s*|e\s*)(\d+)\b/ig,'episode'],[/\b(?:bolum|bölüm)\s*(\d+)\b/ig,'broadcast'],[/\b(?:season\s*|s\s*)(\d+)\b/ig,'season'],[/\b(?:part\s*|p\s*)(\d+)\b/ig,'part']];
    if (r.kind === 'episode') {
      for (const field of ['seo_title','display_title']) for(const [rx,key] of identities) {
        const matches = [...item[field].matchAll(new RegExp(rx.source,rx.flags))];
        if(v[key] !== undefined && !matches.some(m=>Number(m[1])===v[key])) errors.push(`Missing verified ${key} in ${field}: ${item.id}`);
        if(matches.some(m=>v[key] === undefined || Number(m[1])!==v[key])) errors.push(`Unsupported ${key} in ${field}: ${item.id}`);
      }
    }
    for (const lang of ['Urdu','English','Turkish','Arabic']) if(new RegExp(`\\b${lang}\\b`,'i').test(allText) && !(v.languages||[]).includes(lang)) review.push(`${item.id}: ${lang} claim needs review`);
    if(!r.source_ids.length) review.push(`${item.id}: no supporting source extracts`);
    if(r.kind==='episode' && v.episode===undefined) review.push(`${item.id}: imported episode identity requires verification`);
    review.push(...item.unresolved.map(s=>`${item.id}: ${s}`));
  }
  for(const id of expected.keys()) if(!ids.has(id)) errors.push(`Missing output ID: ${id}`);
  return { errors, review: [...new Set(review)] };
}
function parseJSON(text) { return JSON.parse(text.trim().replace(/^```(?:json)?\s*/i,'').replace(/\s*```$/,'')); }
async function callGemma(prompt, { maxTokens = 4096, attempts = 3, systemRules = RULES, onAttempt = () => {} } = {}) {
  const key = process.env.GEMINI_API_KEY;
  if(!key) throw new Error('GEMINI_API_KEY is missing in .env.local');
  const model = modelName();
  if(!/^gemma-4-(31b|26b-a4b)-it$/.test(model)) throw new Error('Unsupported SEO_AI_MODEL');
  for(let n=0; n<attempts; n++) {
    onAttempt();
    let response;
    try { response = await fetch(`https://generativelanguage.googleapis.com/v1beta/models/${model}:generateContent`, {
      method:'POST', headers:{'Content-Type':'application/json','x-goog-api-key':key},
      body:JSON.stringify({ systemInstruction:{parts:[{text:systemRules}]}, contents:[{role:'user',parts:[{text:prompt}]}], generationConfig:{ maxOutputTokens:maxTokens, thinkingConfig:{thinkingLevel:'minimal'} } }),
      signal:AbortSignal.timeout(90000),
    }); } catch { if(n+1===attempts) throw new Error('Google API network/timeout failure; resume later'); await new Promise(r=>setTimeout(r,1500*2**n)); continue; }
    if(!response.ok) {
      // Never log provider error bodies, which may contain credentials or prompt text.
      const code = response.status;
      await response.body?.cancel();
      if((code===429 || code>=500) && n+1<attempts) { await new Promise(r=>setTimeout(r,2000*2**n)); continue; }
      throw new Error(`Google API HTTP ${code}; check key, model access and quota in AI Studio`);
    }
    const data = await response.json();
    const candidate = data.candidates?.[0];
    if(candidate?.finishReason!=='STOP') throw new Error(`Generation incomplete (${candidate?.finishReason || 'blocked'}); reduce batch size`);
    const text = (candidate.content?.parts||[]).filter(p=>!p.thought).map(p=>p.text||'').join('');
    if(!text.trim()) throw new Error('Google API returned no draft text');
    return { text, usage:data.usageMetadata || {} };
  }
}
function writeJSON(file,value) { fs.mkdirSync(path.dirname(file),{recursive:true}); const temp=`${file}.${process.pid}.tmp`; fs.writeFileSync(temp,JSON.stringify(value,null,2)+'\n'); fs.renameSync(temp,file); }
module.exports={ROOT,RULES,loadEnv,modelName,hash,validateInput,validateDraft,parseJSON,callGemma,writeJSON};
