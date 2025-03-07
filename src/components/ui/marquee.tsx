export default function Marquee({ items }: { items: string[] }) {
  return (
    <div className="relative flex w-full overflow-x-hidden border-b-2 border-t-2 border-foreground/50 bg-background text-text font-base">
      <div className="animate-marquee whitespace-nowrap py-8">
        {items.map((item) => {
          return (
            <span key={item} className="mx-2 text-4xl">
              {item}
            </span>
          )
        })}
      </div>

      <div className="absolute top-0 animate-marquee2 whitespace-nowrap py-8">
        {items.map((item) => {
          return (
            <span key={item} className="mx-2 text-4xl">
              {item}
            </span>
          )
        })}
      </div>

      {/* must have both of these in order to work */}
    </div>
  )
}
