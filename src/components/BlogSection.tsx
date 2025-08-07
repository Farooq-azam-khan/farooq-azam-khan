import {
  Carousel,
  CarouselContent,
  CarouselItem,
  CarouselNext,
  CarouselPrevious,
} from "@/components/ui/carousel";
import { LinkButton } from "@/components/link-button";
import {
  Card,
  CardContent,
  CardHeader,
  CardTitle,
  CardFooter,
  CardDescription,
} from "@/components/ui/card";
import { MoveRight } from "lucide-react";
import Autoplay from "embla-carousel-autoplay";
type Blog = {
  title: string;
  description: string;
  cta: string;
};
import { useRef } from "react";
import { A, H2 } from "@/components/typography";
export function BlogSectionCarousel({ blogs }: { blogs: Blog[] }) {
  const plugin = useRef(Autoplay({ delay: 1500 }));
  return (
    <Carousel
      plugins={[plugin.current]}
      className="px-4 mx-auto xl:px-0 xl:max-w-7xl"
      orientation="horizontal"
      opts={{
        align: "center",
        loop: true,
        skipSnaps: false,
      }}
    >
      <CarouselContent>
        {blogs.map((blog, index) => {
          const bgColors = [
            'bg-purple-200',
            'bg-yellow-200',
            'bg-green-200',
            'bg-pink-200',
            'bg-indigo-200',
          ];
          const num = (index + 1).toString().padStart(2, '0');
          return (
            <CarouselItem
              key={index}
              className="flex-none snap-center w-[80%] sm:w-[60%] md:w-[45%] lg:w-[30%]"
            >
              <Card
                className={`relative flex flex-col h-full border-4 border-black shadow-[4px_4px_0_rgba(0,0,0,1)] transition-transform duration-200 hover:skew-y-1 hover:shadow-[6px_6px_0_rgba(0,0,0,1)] ${bgColors[index % bgColors.length]}`}
              >
                <div className="absolute top-2 left-2 font-mono font-bold text-lg">{num}</div>
                <CardHeader>
                  <CardTitle className="text-2xl md:text-3xl lg:text-4xl font-extrabold line-clamp-2">
                    {blog.title}
                  </CardTitle>
                  <CardDescription className="line-clamp-3">
                    {blog.description}
                  </CardDescription>
                </CardHeader>
                <CardContent className="flex-grow" />
                <CardFooter className="w-full">
                  <LinkButton
                    href={blog.cta}
                    target="blank_"
                    className="w-full py-2 text-center bg-pink-500 text-white font-bold"
                  >
                    Read more →
                  </LinkButton>
                </CardFooter>
              </Card>
            </CarouselItem>
          );
        })}
      </CarouselContent>
      <CarouselPrevious disabled={false} />
      <CarouselNext disabled={false} />
    </Carousel>
  );
}

export const inspirations = [
  <A target="blank_" href="https://www.tldraw.com/">
    tldraw
  </A>,
  <A target="blank_" href="https://notebooklm.google/">
    notebooklm
  </A>,
  <A target="blank_" href="https://openai.com/sora/">
    sora
  </A>,
];
