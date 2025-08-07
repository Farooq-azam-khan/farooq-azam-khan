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
        {blogs.map((blog, index) => (
          <CarouselItem
            key={index}
            className="flex-none snap-center w-[80%] sm:w-[60%] md:w-[45%] lg:w-[30%]"
          >
            <Card className="flex flex-col h-full hover:shadow-lg transform hover:scale-105 transition duration-300">
              <CardHeader>
                <CardTitle className="line-clamp-2">{blog.title}</CardTitle>
                <CardDescription className="line-clamp-3">
                  {blog.description}
                </CardDescription>
              </CardHeader>
              <CardContent />
              <CardFooter className="flex items-center justify-between w-full h-full">
                <LinkButton
                  href={blog.cta}
                  target="blank_"
                  className="inline-flex items-center space-x-3"
                >
                  Read more
                  <MoveRight />
                </LinkButton>
              </CardFooter>
            </Card>
          </CarouselItem>
        ))}
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
