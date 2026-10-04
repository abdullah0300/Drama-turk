import type { PublishedEditorial } from '@/types/catalog';

export function EditorialSections({ sections }: { sections: PublishedEditorial['sections'] }) {
  return <section className="dw-sec" aria-label="Viewing guide">
    {sections.filter(s => !s.is_spoiler).map((s, i) => <div key={i} className="ed-block">
      <h2>{s.heading}</h2><p>{s.content}</p>
      {s.sources?.length ? <p>{s.sources.map((source, j) => <span key={source.url}>
        {j > 0 ? ' · ' : ''}<a href={source.url} rel="noopener noreferrer">{source.name}</a>
      </span>)}</p> : null}
    </div>)}
  </section>;
}
