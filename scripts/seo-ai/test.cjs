const test=require('node:test');
const assert=require('node:assert/strict');
const C=require('./core.cjs');
const input={version:1,drama_id:'example',sources:[{id:'official',url:'https://example.org/episode',name:'Official preview',extract:'An official episode preview.'}],records:[{id:'episode-1',kind:'episode',imported_facts:{},existing:{},verified_facts:{season:1,episode:1,broadcast:10,languages:['Urdu'],edition:'subtitled'},source_ids:['official']}]};
const draft=()=>({items:[{id:'episode-1',seo_title:'Example S1 E1 | Bolum 10 | Urdu Subtitles',seo_description:'Watch Example Season 1 Episode 1 (Bolum 10) with Urdu subtitles.',display_title:'Example Season 1 Episode 1 | Bolum 10',short_description:'Choose an available rendition.',sections:[{heading:'Viewing guidance',content:'Choose an available rendition.',source_ids:['official']}],unresolved:[]}]});
test('valid supplied identities and source references pass',()=>{assert.equal(C.validateDraft(draft(),input).errors.length,0);});
test('unknown, missing and duplicate records fail',()=>{const d=draft();d.items.push({...d.items[0],id:'invented'});assert.ok(C.validateDraft(d,input).errors.some(e=>e.includes('Unknown')));assert.ok(C.validateDraft({items:[]},input).errors.some(e=>e.includes('Missing')));d.items[1].id='episode-1';assert.ok(C.validateDraft(d,input).errors.some(e=>e.includes('Duplicate output')));});
test('invented or removed numbering fails',()=>{const d=draft();d.items[0].seo_title='Example S1 E2 | Bolum 10';assert.ok(C.validateDraft(d,input).errors.some(e=>e.includes('episode')));d.items[0].seo_title='Example S1 E1';assert.ok(C.validateDraft(d,input).errors.some(e=>e.includes('broadcast')));});
test('invented citation and excessive metadata fail',()=>{const d=draft();d.items[0].sections[0].source_ids=['fake'];assert.ok(C.validateDraft(d,input).errors.some(e=>e.includes('Unapproved')));d.items[0].seo_title='x'.repeat(61);assert.ok(C.validateDraft(d,input).errors.length);});
test('unverified identities cannot be promoted',()=>{const unverified=structuredClone(input);unverified.records[0].verified_facts={};assert.ok(C.validateDraft(draft(),unverified).errors.some(e=>e.includes('Unsupported')));});
test('unknown language is a review flag, never factual approval',()=>{const d=draft();d.items[0].short_description='English subtitles are available.';assert.ok(C.validateDraft(d,input).review.some(e=>e.includes('English')));});
test('extra fields and undefined source associations are rejected',()=>{const d=draft();d.items[0].sql='UPDATE';assert.ok(C.validateDraft(d,input).errors.length);const bad=structuredClone(input);bad.records[0].source_ids=['missing'];assert.throws(()=>C.validateInput(bad));});
test('network failures are bounded and do not leak the key',async()=>{const original=global.fetch,oldKey=process.env.GEMINI_API_KEY;process.env.GEMINI_API_KEY='test-private-key';global.fetch=async()=>new Response('test-private-key',{status:403});try{await assert.rejects(C.callGemma('test',{attempts:1}),e=>e.message.includes('403')&&!e.message.includes('test-private-key'));}finally{global.fetch=original;if(oldKey===undefined)delete process.env.GEMINI_API_KEY;else process.env.GEMINI_API_KEY=oldKey;}});
test('worker persists drafts, resumes without API requests, and reports review boundary',()=>{
  const fs=require('node:fs'),os=require('node:os'),path=require('node:path'),{spawnSync}=require('node:child_process');
  const dir=fs.mkdtempSync(path.join(os.tmpdir(),'seo-ai-test-')),inputFile=path.join(dir,'input.json'),out=path.join(dir,'drafts');
  fs.writeFileSync(inputFile,JSON.stringify(input));
  const run=(command,fetchCode)=>spawnSync(process.execPath,['-e',`process.env.GEMINI_API_KEY='mock-only';global.fetch=${fetchCode};process.argv=['node','run.cjs',...${JSON.stringify(command)}];require(${JSON.stringify(path.join(__dirname,'run.cjs'))});`],{cwd:C.ROOT,encoding:'utf8',timeout:20000});
  try{
    const commands=['generate','--input',inputFile,'--out',out,'--batch-size','1','--max-calls','1'];
    const first=run(commands,`async()=>new Response(JSON.stringify({candidates:[{finishReason:'STOP',content:{parts:[{text:${JSON.stringify(JSON.stringify(draft()))}}]}}],usageMetadata:{totalTokenCount:100}}),{status:200})`);
    assert.equal(first.status,0,first.stderr);
    const second=run(commands,`async()=>{throw new Error('must not call network');}`);
    assert.equal(second.status,0,second.stderr);assert.match(second.stdout,/reused validated draft/);assert.match(second.stdout,/Used 0 API/);
    const report=run(['report','--out',out],`async()=>{throw new Error('no network');}`);assert.equal(report.status,0,report.stderr);
    const result=JSON.parse(fs.readFileSync(path.join(out,'review-report.json')));assert.equal(result.batches[0].requires_human_review,true);
  }finally{fs.rmSync(dir,{recursive:true,force:true});}
});
