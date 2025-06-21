export default function Marquee({ items }: { items: string[] }) {
  return (
    <div className="relative flex w-full overflow-x-hidden border-b-2 border-t-2 border-foreground/50 bg-card text-text text-card-foreground font-base">
      <div className="animate-marquee whitespace-nowrap py-8">
        {items.map((item, idx) => {
          return (
            <span key={idx} className="mx-2 text-4xl">
              {item}
            </span>
          );
        })}
      </div>

      <div className="absolute top-0 animate-marquee2 whitespace-nowrap py-8">
        {items.map((item, idx) => {
          return (
            <span key={idx} className="mx-2 text-4xl">
              {item}
            </span>
          );
        })}
      </div>

      {/* must have both of these in order to work */}
    </div>
  );
}
