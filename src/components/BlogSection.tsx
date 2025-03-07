import {
  Carousel,
  CarouselContent,
  CarouselItem,
  CarouselNext,
  CarouselPrevious,
} from "@/components/ui/carousel";
import { Button, buttonVariants } from "@/components/ui/button";
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

type Blog = {
  title: string, description: string, cta: string
}

//className="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-indigo-700 rounded-lg hover:bg-indigo-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-indigo-600 dark:hover:bg-indigo-700 dark:focus:ring-indgio-800"
export function BlogSectionCarousel({ blogs }: { blogs: Blog[] }) {
  return (
    <Carousel
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
                <CardDescription className="line-clamp-3">{blog.description}</CardDescription>
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
