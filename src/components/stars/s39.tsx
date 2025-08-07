export default function Star39({
  color,
  size,
  stroke,
  strokeWidth,
  pathClassName,
  width,
  height,
  ...props
}: React.SVGProps<SVGSVGElement> & {
  color?: string
  size?: number
  stroke?: string
  pathClassName?: string
  strokeWidth?: number
}) {
  return (
    <svg
      xmlns="http://www.w3.org/2000/svg"
      fill="none"
      viewBox="0 0 200 200"
      width={size ?? width}
      height={size ?? height}
      {...props}
    >
      <path
        fill={color ?? "currentColor"}
        stroke={stroke}
        strokeWidth={strokeWidth}
        className={pathClassName}
        d="M190.791 9.21c14.055 48.529-7.693 106.08-56.222 126.593-10.257 34.474 26.876 54.988 56.222 54.988-48.53 14.055-106.081-7.693-126.594-56.222-34.474-10.257-54.988 26.781-54.988 56.222-14.055-48.53 7.693-106.081 56.222-126.594C75.688 29.723 38.65 9.209 9.21 9.209c48.53-14.055 106.08 7.693 126.593 56.222 34.474 10.257 54.988-26.781 54.988-56.222"
      />
    </svg>
  )
}
