export default function Marquee({ items }: { items: any[] }) {
  return (
    <div className="relative w-full overflow-hidden border-t-2 border-b-2 border-foreground/50 bg-card text-card-foreground py-4">
      {/* Top row: scroll left */}
      <div className="absolute top-0 left-0 flex whitespace-nowrap animate-marquee-left">
        {items.concat(items).map((item, idx) => (
          <span key={idx} className="mx-4 text-3xl">
            {item}
          </span>
        ))}
      </div>
      {/* Bottom row: scroll right */}
      <div className="absolute bottom-0 left-0 flex whitespace-nowrap animate-marquee-right">
        {items.concat(items).map((item, idx) => (
          <span key={idx} className="mx-4 text-3xl">
            {item}
          </span>
        ))}
      </div>
    </div>
  );
}
