// Reviewed source-based refinements. Generates artifacts; never writes the database.
const fs = require('fs');
const { loadTypescript } = require('./lib/load-typescript.cjs');
const seo = loadTypescript('src/lib/seo/catalog-seo.ts');
const snapshot = JSON.parse(fs.readFileSync('docs/seo/mehmed-before-update.json'));
const before = JSON.parse(fs.readFileSync('docs/seo/mehmed-all-seasons-before.json'));
const batch = JSON.parse(fs.readFileSync('docs/seo/mehmed-editorial-batch.json'));
const officialInput = JSON.parse(fs.readFileSync(fs.existsSync('.next/fatih-official-preview-input.json')?'.next/fatih-official-preview-input.json':'docs/seo/mehmed-official-episode-context.json'));
// Original, brief English paraphrases of TRT's public episode previews, not full recaps.
const teasers = `
Murad withdraws from court as Mehmed faces the challenge posed by Orhan.
Mehmed returns to Saruhan, where piracy threatens trade.
Mehmed presents Capello to Murad while suspicious coins raise questions.
An ambush by Yanos puts Mehmed in danger.
Mehmed secretly travels to Constantinople to rescue Zaganos.
An ambush threatens Mehmed as Ishak approaches.
Murad's death opens a struggle over the succession.
Ahmed's attempted escape raises suspicions around Halime and Chandarli.
Mehmed's Karaman expedition leaves Evrenosoglu Ali responsible for the palace.
Mehmed prepares to discipline the rebels after Ahmed's death.
Urban advances conquest preparations while Hizir pursues justice.
A cannon explosion and Mara's kidnapping create a crisis.
Mehmed targets Dimitria as Mara confronts Chandarli's actions.
Zaganos presses the siege of Dimitria with Mehmed's support.
Mehmed turns toward Constantinople, with Orhan still presenting an obstacle.
Mehmed prepares his fleet and forces for the Constantinople campaign.
Rizzo's betrayal forces Mehmed to consider his response.
Mehmed continues conquest preparations after confronting Notaras.
Giustiniani's arrival in the city places Baltaoglu under scrutiny.
An incident involving Bayezid draws Gulsah and Bahar into palace scrutiny.
A poisoned robe plot demands a judgment from Mehmed.
Mehmed considers how to breach the walls and reach the Golden Horn.
Siege preparations raise questions about command and Janissary tactics.
A damaged cannon creates a dangerous decision for Saruca.
Plethon's peace proposal prompts a response from the leaders.
Mehmed reassesses his strategy after an attack at the walls.
New cannon preparations accompany plans to tunnel beneath the walls.
Suleyman Pasha is tasked with stopping aid arriving by sea.
Kurtchu confronts an epidemic at Rumeli Hisari as Mehmed faces a setback.
Mehmed responds to unrest among the Janissaries.
Unexpected setbacks complicate Mehmed's planned assault.
Ferhat's exposure as a spy places the pashas under scrutiny.
The discovery of a wounded Baltaoglu Suleyman prompts an investigation.
Losses among the akincis intensify tensions in the Ottoman camp.
Harry's death unsettles the camp.
Mehmed balances competing counsel before the next attack.
Assault preparations accompany plans to move ships toward the Golden Horn.
Mehmed prepares to move his fleet overland into the Golden Horn.
Ottoman ships in the Golden Horn alarm the Byzantine defenders.
Koko faces punishment while Satilmish's rescue becomes urgent.
Mehmed addresses his forces ahead of the final assault on Constantinople.
Ottoman forces break through the city walls.
Victory in Constantinople opens a new chapter for Mehmed.
Rebuilding the city becomes a priority after the conquest.
Hristo's withdrawn lawsuit brings Ottoman justice into focus.
Plethon faces questioning as the court adjusts to a new order.
Attacks involving Kurtchu and Hristo expose a clandestine organization.
Zaganos uses Notaras in his plans against Chandarli.
Chandarli's imprisonment accompanies Mahmud Pasha's summons to the capital.
Mehmed turns toward Pontus as Komnenos seeks papal support.
A Karaman envoy's demands place Bayezid and state interests in conflict.
Bayezid's dismissal of Ishak Pasha stirs unrest in the palace.
Bayezid's injuries intensify palace tensions as outside alliances develop.
Mahmud Pasha brings Zaganos back into the council.
Mehmed launches a campaign whose objective remains concealed.
An attack leaves Mahmud Pasha gravely wounded.
Vlad faces questioning after the attack on Mahmud Pasha.
Mehmed turns toward Pontus after victory over Isfendiyar.
The camp rallies against Pontus following the loss of Zeynel.
The Pontus siege unfolds alongside a search for a traitor.
Akinci forces encounter Draven's trap at the walls of Pontus.
Fighting continues within the walls of Pontus.
Suleyman's plans place Bayezid and Mustafa in danger.
Mehmed seeks revenge following Shahabeddin's death.
Financial irregularities at the palace draw Gulsah into action.
Janissary unrest develops as Mahmud and Huseyin challenge Kurtchu.
Janissary tensions accompany decisions involving Stefan, Vlad and Bosnia.
Bosnian strategy develops alongside corruption and unrest in the capital.
Major campaign preparations coincide with Mahmud's return to the council.
Mehmed announces Bosnia as the campaign's objective.
The council in Sofia discusses a concealed Hungarian objective.
Drina's strategic importance grows as Hungarian forces approach.
Ishak's request to resign creates a leadership decision in Sofia.
Mehmed confronts Vlad while Katerina orders cannon fire.
An attack on Cicek Hatun exposes a palace trap.
Mehmed demands campaign resources from Mahmud.
News involving Hamza Pasha reaches Radu.
Destructive news from Nigbolu raises questions about Evrenosoglu Ali's fate.
An ambush threatens the princes' cavalry as Mustafa fights.
Mehmed regroups after losses on the road to Targoviste.
Mehmed reaches Targoviste while Vlad considers a bargain with Mattias.
Vlad's raid on the Ottoman camp is repelled, but he escapes.
Civilian hostages complicate Mehmed's confrontation with Vlad at Targoviste.
Mehmed's ambitions expand after campaigns in Constantinople, Pontus and the Balkans.
Bloodshed at Karasu raises tensions between the Ottomans and Akkoyunlu.
Savcu faces arrest while Ottoman envoys encounter a trap in Tebriz.
`.trim().split('\n');
if(teasers.length !== 86 || teasers.some(t=>t.split(/\s+/).length>15)) throw Error('Preview review budget');
const facts = officialInput.map(r=>({broadcast:r.broadcast, source:r.source,listSource:r.listSource,context:teasers[r.broadcast-1]}));
const byBroadcast = new Map(facts.map(r=>[r.broadcast,r]));
const pageWords = {};
for(const f of facts) pageWords[f.listSource]=(pageWords[f.listSource]||0)+f.context.split(/\s+/).length;
if(Object.values(pageWords).some(n=>n>190)) throw Error('Source paraphrase budget');
fs.writeFileSync('docs/seo/mehmed-official-episode-context.json',JSON.stringify(facts,null,2));
const section = (heading,content,sources)=>({heading,content,...(sources?{sources}:{})});
const now = new Date().toISOString();
for(const row of batch) {
  const current=before.find(r=>r.source_id===row.source_id);
  if(!current) throw Error('Missing backup '+row.source_id);
  for(const k of ['approved_display_title','short_description','structured_article','seo_title','seo_description']) row[k]=current[k];
  row.structured_article = JSON.parse(JSON.stringify(row.structured_article).replace(/\/oyuncular/g, '/oyuncu'));
  if(row.target==='collection' && !['collection-82','collection-88'].includes(row.source_id)) {
    const c=snapshot.collections.find(c=>c.source_id===row.source_id), season=c.reported_seasons[0],dub=c.collection_type==='dubbed';
    const ranges={1:[1,15],2:[16,49],3:[50,83]}, [start,end]=ranges[season];
    const language=dub?'Urdu dubbed audio':'Urdu or English subtitles';
    row.short_description=`Explore Mehmed: Fetihler Sultani Season ${season} with ${language}. Use the episode guide to check each release's available languages and broadcast numbers.`;
    row.seo_description=dub?'Watch Mehmed Fetihler Sultani Season 1 in Urdu dubbed audio. Browse Episodes 1–8; original broadcast numbers remain unverified for this dubbed release.':`Watch Mehmed Fetihler Sultani Season ${season} with Urdu or English subtitles. Find Episodes ${start}–${end}, matching Bolum numbers and each episode's viewing choices.`;
    const seasonalContext={1:'Mehmed faces succession challenges before preparing his campaign against Constantinople.',2:'The Constantinople campaign progresses into conquest, rebuilding and court tensions.',3:'Campaigns in Pontus and the Balkans bring conflict with Vlad and pressure within the court.'}[season];
    const references=[start,end].map(n=>({name:`TRT 1: broadcast ${n}`,url:byBroadcast.get(n).source}));
    row.structured_article=[
      ...(!dub?[section(`Season ${season} context`,seasonalContext,references)]:[]),
      section('Episode and broadcast numbering',dub?'This dubbed collection uses Episodes 1–8 as its source labels. A reliable match to the original Turkish broadcast has not been established. Its shorter dubbed releases may divide the original material differently, so no Bolum number is inferred.':`This subtitled collection retains continuous Episode ${start}–${end} labels, matching Bolum ${start}–${end}. These are the site's release labels; they do not restart at Season ${season} Episode 1. The guide below links each available broadcast.`,dub?undefined:references),
      section('Available viewing choices',dub?'This release offers Urdu dialogue. For Turkish audio with subtitles, use the separate subtitled Season 1 guide. Dubbed and subtitled editions have different release lists.':'The guide lists the usable Urdu and English subtitle renditions for each episode. A language appears only where a verified media source is available; not every episode has both languages.'),
      section('Follow the available episode order','Open an episode from the guide and use its previous and next links to continue within this edition. Missing or unresolved source records are excluded from the watch list; the listed range does not promise uninterrupted availability.')];
  }
  if(row.target==='episode_group' && row.source_id!=='collection-68-episode-1') {
    const canonical=seo.canonicalGroupId(row.source_id);
    const g=snapshot.groups.find(g=>g.source_id===canonical);
    const c=snapshot.collections.find(c=>c.id===g.collection_id);
    const season=c.reported_seasons[0],dub=c.collection_type==='dubbed';
    const model={id:canonical,drama_id:seo.FATIH_ID,episode_number:g.reported_episode_number,bolum:g.bolum};
    const numbers=seo.episodeNumbers({reported_seasons:c.reported_seasons,version:c.collection_type},model);
    if(season===1 && dub){
      row.seo_description=`Watch Mehmed Fetihler Sultani Season 1 Episode ${numbers.episode} in Urdu dubbed audio. Use this release's episode order; its Bolum mapping is unverified.`;
      row.short_description=`This Urdu dubbed release lists Season 1 Episode ${numbers.episode}. Follow this edition's episode order; a match to the original Bolum has not been verified.`;
    }
    const fact=byBroadcast.get(numbers.broadcast);
    if(fact && !row.structured_article.some(s=>s.heading==='Official episode preview')) {
      row.structured_article.splice(1,0,section('Official episode preview',fact.context,[{name:`TRT 1: episode ${fact.broadcast} preview`,url:fact.listSource}]));
      const numbering=row.structured_article.find(s=>s.heading==='Episode and broadcast number');
      if(numbering) numbering.sources=[{name:`TRT 1: Bolum ${fact.broadcast}`,url:fact.source}];
    }
    if(season<4 && fact && canonical!=='collection-76-bolum-64') {
      const urduOnly=[65,69,70].includes(fact.broadcast);
      const lang=dub?'Urdu Dubbed':urduOnly?'Urdu Subtitles':'Urdu/English Subs';
      row.seo_title=`Mehmed Fetihler Sultani S${season} E${numbers.episode} | Bolum ${fact.broadcast} | ${lang}`;
      if(row.seo_title.length>60)row.seo_title=row.seo_title.replace(`S${season} E`,`S${season}E`);
      const meta=`Watch Mehmed S${season} Episode ${numbers.episode} (Bolum ${fact.broadcast}) ${dub?'in Urdu dubbed audio':urduOnly?'with Urdu subtitles':'with Urdu or English subtitles'}. ${fact.context}`;
      row.seo_description=meta.length<=160?meta:`Watch Mehmed Fetihler Sultani Season ${season} Episode ${numbers.episode} (Bolum ${fact.broadcast}) ${urduOnly?'with Urdu subtitles':'with Urdu or English subtitles'}. Find viewing choices and the season guide.`;
      row.short_description=`Mehmed: Fetihler Sultani Season ${season} Episode ${numbers.episode} corresponds to Bolum ${fact.broadcast}. ${fact.context}`;
      if(urduOnly){const choices=row.structured_article.find(s=>s.heading==='Viewing choices for this episode');if(choices)choices.content='This episode offers Urdu subtitles with the original Turkish audio. The English rendition is currently excluded because its media source is unusable or incomplete. Choose the Urdu rendition beside the player, or browse the season guide.';}
    }
  }
  row.updated_at=now;
  if(row.seo_title.length>60||row.seo_description.length>160) throw Error(row.source_id+': metadata budget '+row.seo_title.length+'/'+row.seo_description.length);
}
fs.writeFileSync('docs/seo/mehmed-editorial-batch.json',JSON.stringify(batch,null,2));
const approved=before.map(r=>({...r,...Object.fromEntries(['approved_display_title','short_description','structured_article','seo_title','seo_description','updated_at'].map(k=>[k,batch.find(b=>b.source_id===r.source_id)[k]]))}));
fs.writeFileSync('docs/seo/mehmed-all-seasons-approved.json',JSON.stringify(approved,null,2));
fs.writeFileSync('docs/seo/mehmed-season4-approved.json',JSON.stringify(approved.filter(r=>['mehmed-fetihler-sultani','collection-82','collection-88'].includes(r.source_id)||/^collection-(82|88)-/.test(r.source_id)),null,2));
const quote=s=>'"'+String(s).replaceAll('"','""')+'"';
fs.writeFileSync('docs/seo/mehmed-final-metadata.csv',[['target','source_id','title','title_characters','description','description_characters'],...batch.map(r=>[r.target,r.source_id,r.seo_title,r.seo_title.length,r.seo_description,r.seo_description.length])].map(r=>r.map(quote).join(',')).join('\n'));
console.log(JSON.stringify({rows:batch.length,withOfficialPreview:batch.filter(r=>r.structured_article.some(s=>s.heading==='Official episode preview')).length,maxTitle:Math.max(...batch.map(r=>r.seo_title.length)),maxDescription:Math.max(...batch.map(r=>r.seo_description.length)),sourceWords:pageWords},null,2));
