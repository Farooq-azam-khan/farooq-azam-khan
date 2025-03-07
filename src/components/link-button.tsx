import { Button } from '@/components/ui/button'


export function LinkButton({ variant, size, children, ...props }: any) {
  return (<Button variant={variant} size={size} asChild>
    <a  {...props}>
      {children}</a>
  </Button >)

}
