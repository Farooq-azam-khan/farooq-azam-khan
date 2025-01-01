
import {
  Carousel,
  CarouselContent,
  CarouselItem,
  CarouselNext,
  CarouselPrevious,
} from "@/components/ui/carousel"
import { Card, CardContent,CardHeader, CardTitle, CardFooter, CardDescription} from "@/components/ui/card"
import { MoveRight } from "lucide-react"

const blogs = [ {title: 'Scaling LLMs with Triton Inference Server: A Hands-on Guide', description: `Get hands-on experience with deploying Large Language Models
              (LLMs) at scale using NVIDIA's Triton Inference Server.`, cta: 'https://blog.farooqkhan.ca/fast-llm-inferencing'} ,
            {title: 'Term Frequency-Inverse Document Frequency', description: `In this tutorial we will look at what TF and IDF are and how they
              can be use to process text data for Machine learning.`, cta:'https://blog.farooqkhan.ca/tfidf' }, 
            {
              title: 'Large Scale Vector Comparison', 
              description: `In this post, we will look at the quora qna dataset and aim to
              encode and compare all question pairs. The purpose of is to look
              at a real dataset.`, 
              cta: 'https://blog.farooqkhan.ca/cosine-similarity-pt-2'
            }, {
              title: 'Comparing Vectors with Cosine Simlarity Function', 
              description: `This tutorial will focus on the math behind text vector similarity
              using numpy, pytorch, and stentence-transformers libraries in
              python.`, 
              cta: 'https://blog.farooqkhan.ca/cosine-similarity'
            }]
export function BlogSectionCarousel() {
  return (
    <Carousel className="mx-12  xl:mx-auto xl:max-w-7xl" orientation="horizontal" opts={{
      align:"start", 
      loop:true
    }}>
      <CarouselContent>
        {
        blogs.map((blog, index) => (<CarouselItem className="sm:basis-1/2 " key={index}>
          <div className="p-1">
          <Card>
          <CardHeader>
            <CardTitle
              >{blog.title}</CardTitle>
            <CardDescription
              >{blog.description}
            </CardDescription>
          </CardHeader>
          <CardContent />
          <CardFooter
            ><a
              href={blog.cta}
              target="blank_"
              className="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-indigo-700 rounded-lg hover:bg-indigo-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-indigo-600 dark:hover:bg-indigo-700 dark:focus:ring-indgio-800"
              >Read more<MoveRight />
              </a>
            </CardFooter>
        </Card>
        </div>
        </CarouselItem>))
        }
      </CarouselContent>
      <CarouselPrevious />
      <CarouselNext />
    </Carousel>
  )
}
