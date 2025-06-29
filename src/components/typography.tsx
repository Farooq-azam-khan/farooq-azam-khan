import { cn } from "@/lib/utils";

import { cva } from "class-variance-authority";

const aVariants = cva(
  "text-foreground hover:bg-foreground hover:text-background",

  {
    variants: {
      variant: {
        default: "",
      },
      size: {
        default: "",
      },
    },
    defaultVariants: {
      variant: "default",
      size: "default",
    },
  },
);

const h2Variants = cva(
  "text-center font-heading leading-none tracking-tight lg:mx-auto lg:max-w-3xl",

  {
    variants: {
      variant: {
        default: "",
      },
      size: {
        default: "px-5 md:px-0 text-4xl",
      },
    },
    defaultVariants: {
      variant: "default",
      size: "default",
    },
  },
);

function A({ className, children, ...props }: any) {
  return (
    <a className={cn(aVariants({ className }))} {...props}>
      {" "}
      {children}
    </a>
  );
}

A.displayName = "A";

function H2({ className, children, ...props }: any) {
  return (
    <h2 className={cn(h2Variants({ className }))} {...props}>
      {children}
    </h2>
  );
}

H2.displayName = "H2";

export { H2, h2Variants, A, aVariants };
