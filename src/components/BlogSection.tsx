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
      className="mx-12  xl:mx-auto xl:max-w-7xl"
      orientation="horizontal"
      opts={{
        align: "start",
        loop: true,
      }}
    >
      <CarouselContent>
        {blogs.map((blog, index) => (
          <CarouselItem className="sm:basis-1/2 " key={index}>
            <Card className="flex flex-col h-full">
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
