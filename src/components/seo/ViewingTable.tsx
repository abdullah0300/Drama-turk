import Link from 'next/link';

export interface ViewingRow { label: string; href: string; detail: string; availability: string }
export function ViewingTable({ heading, rows }: { heading: string; rows: ViewingRow[] }) {
  if (!rows.length) return null;
  return <section className="dw-sec"><h2>{heading}</h2>
    <div className="viewing-table-wrap"><table className="viewing-table">
      <thead><tr><th scope="col">Release</th><th scope="col">Episode details</th><th scope="col">Available choices</th></tr></thead>
      <tbody>{rows.map(row => <tr key={row.href}><th scope="row"><Link href={row.href}>{row.label}</Link></th>
        <td>{row.detail}</td><td>{row.availability}</td></tr>)}</tbody>
    </table></div></section>;
}
