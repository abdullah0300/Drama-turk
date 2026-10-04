// Generate reviewed content only; this script does not write to Supabase.
const fs = require('fs');
if (fs.existsSync('docs/seo/mehmed-all-seasons-approved.json')) throw new Error('Season 4 is included in the reviewed all-season batch; use that workflow to preserve official episode previews.');
const before = JSON.parse(fs.readFileSync('docs/seo/mehmed-season4-before.json'));
const official = 'https://www.trt1.com.tr/diziler/mehmed-fetihler-sultani';
const reference = n => ({name:`TRT 1: Bolum ${n}`,url:`${official}/bolum/${n}-bolum`});
const section = (heading,content,sources) => ({heading,content,...(sources?{sources}:{})});
for(const r of before) {
  if(r.source_id==='mehmed-fetihler-sultani') {
    r.seo_description='Explore Sultan Muhammad Fateh (Mehmed Fetihler Sultani), season guides, Urdu and English subtitles, Urdu dubbed editions and episode-to-Bolum numbers.';
    r.short_description='Mehmed: Fetihler Sultani follows Sultan Mehmed II in a Turkish historical drama. Find available seasons, choose subtitles or Urdu dubbed audio, and match local episode numbers to the original broadcasts.';
    r.structured_article=[
      section('Which Sultan Muhammad Fatih drama is this?', 'Mehmed: Fetihler Sultani is TRT 1’s drama about Sultan Mehmed II. Sultan Muhammad Fateh and Sultan Muhammad Fatih are alternate names viewers use for this series. This page brings its subtitled and Urdu dubbed releases together.',[{name:'TRT 1: official series',url:official}]),
      section('Who plays Sultan Mehmed?', 'Serkan Çayoğlu plays Fatih Sultan Mehmed. TRT’s cast list also identifies Hilmi Cem İntepe as Has Murad Paşa and Rüzgar Aksoy as Uzun Hasan.',[{name:'TRT 1: cast',url:official+'/oyuncu'}]),
      section('Choose subtitles or Urdu dubbed audio','Subtitled editions retain Turkish audio and offer the subtitle renditions listed on each episode page. Urdu dubbed editions offer Urdu audio and have separate season lists. Use the viewing-edition table to choose your preferred release; a language is listed only when a usable rendition is available.'),
      section('Why do episode numbers sometimes differ?','Subtitled Seasons 1–3 keep continuous broadcast numbers in their episode labels. Season 4 starts with local Episode 1, corresponding to Bolum 84, followed by Episodes 2 and 3 for Bolum 85 and 86. Season 1 dubbed numbering has not been independently matched to broadcast numbers, so its pages retain their source labels.'),
      section('How to continue watching','Open a season, choose an episode and select a rendition beside the player. Episode pages link to the previous and next available episodes. Where another viewing edition of the same broadcast exists, a direct link lets you switch between subtitled and dubbed releases without searching again.')];
  } else if(['collection-82','collection-88'].includes(r.source_id)) {
    const dubbed=r.source_id==='collection-88';
    r.short_description=dubbed?'Choose the Season 4 Urdu dubbed release. Episode pages show both the local episode number and its continuous Bolum number.':'Explore Season 4 in original Turkish audio with Urdu or English subtitles. Match each local episode to its Bolum number using the guide below.';
    r.seo_description=dubbed?'Watch Mehmed Fetihler Sultani Season 4 in Urdu dubbed audio. Match Episodes 1–2 to Bolum 84–85 and find subtitled editions of the same broadcasts.':'Watch Mehmed Fetihler Sultani Season 4 with Urdu or English subtitles. Match Episodes 1–3 to Bolum 84–86 and choose a rendition for each episode.';
    r.structured_article=[
      section('Where does Season 4 begin?','This release starts at local Episode 1, corresponding to the original broadcast Bolum 84. Episode 2 is Bolum 85 and Episode 3 is Bolum 86. TRT’s episode pages provide the original broadcast references; the local numbering identifies this site’s Season 4 release.',[84,85,86].map(reference)),
      section(dubbed?'Urdu audio or original audio?':'Which subtitles can I choose?',dubbed?'This edition changes the dialogue to Urdu audio. For original Turkish audio, open the subtitled edition. The dubbed and subtitled lists can grow at different times; use the available episode links rather than assuming both editions contain every broadcast.':'Each watch page lists its available subtitle renditions beside the player. Choose Urdu or English there. For Urdu dialogue rather than subtitles, open the separate dubbed edition. The episode guide below reflects current working choices.'),
      section('Find the correct episode','Use the local episode and Bolum together. The table links directly to the watch page and shows the available language choices. If you are returning from another site’s broadcast list, match its Bolum number rather than assuming its season episode numbering is identical.')];
  } else {
    const n=Number(r.source_id.split('-').pop()),e=n-83,dubbed=r.source_id.startsWith('collection-88');
    r.seo_title=`Mehmed Fetihler Sultani S4 E${e} | Bolum ${n} | ${dubbed?'Urdu Dubbed':'Urdu/English Subs'}`;
    r.seo_description=`Watch Mehmed Fetihler Sultani Season 4 Episode ${e} (Bolum ${n}) ${dubbed?'in Urdu dubbed audio':'with Urdu or English subtitles'}. ${e===1?'Start Season 4 and find the next episode.':e===2?'Continue from Bolum 84 and explore viewing choices.':'Continue from Bolum 85 and browse Season 4.'}`;
    r.short_description=r.seo_description;
    const position=e===1?'This is the first episode in this site’s Season 4 release. In the continuous broadcast list, it follows Bolum 83.':`This is episode ${e} in this site’s Season 4 release, following Episode ${e-1} / Bolum ${n-1}.`;
    r.structured_article=[
      section('Episode and broadcast number',`Season 4 Episode ${e} corresponds to Bolum ${n} in this release. ${position}`,[reference(n)]),
      section(dubbed?'Watch with Urdu dialogue':'Choose Urdu or English subtitles',dubbed?'This page offers Urdu dubbed audio. If you prefer the original Turkish dialogue, use the subtitled link for the same broadcast below. Both editions share the broadcast number, even when their release availability differs.':'This page offers original Turkish audio with separate Urdu and English subtitle renditions. Select your preferred rendition beside the player. Subtitle availability is shown for this episode rather than inferred from the season title.'),
      section('Continue through Season 4',e===1?'Next in the subtitled list is Episode 2 / Bolum 85. The season guide shows which episodes are available in your selected edition.':e===2?(dubbed?'Previous is Episode 1 / Bolum 84. The subtitled edition also lists Episode 3 / Bolum 86; that broadcast is not currently listed in this dubbed release.':'Previous is Episode 1 / Bolum 84; next is Episode 3 / Bolum 86. Use the episode links to stay in the subtitled edition.'):'Previous is Episode 2 / Bolum 85. Check the live season list for subsequent releases.')];
  }
  r.updated_at=new Date().toISOString();
  if(r.seo_title.length>60||r.seo_description.length>160) throw new Error(r.source_id+': metadata exceeds budget');
}
fs.writeFileSync('docs/seo/mehmed-season4-approved.json',JSON.stringify(before,null,2));
const all=JSON.parse(fs.readFileSync('docs/seo/mehmed-editorial-batch.json'));
for(const row of all){const revised=before.find(r=>r.source_id===row.source_id);if(revised)for(const key of ['seo_title','seo_description','short_description','structured_article','updated_at'])row[key]=revised[key];}
fs.writeFileSync('docs/seo/mehmed-editorial-batch.json',JSON.stringify(all,null,2));
console.log(before.map(r=>({id:r.source_id,title:r.seo_title.length,description:r.seo_description.length})));
