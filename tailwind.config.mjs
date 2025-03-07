/** @type {import('tailwindcss').Config} */
export default {
  darkMode: ["class"],
  content: ["./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}"],
  theme: {
    extend: {
      borderRadius: {
        lg: 'var(--radius)',
        md: 'calc(var(--radius) - 2px)',
        sm: 'calc(var(--radius) - 4px)'
      },
      colors: {
        background: 'var(--bg)',//'hsl(var(--background))',
        foreground: 'var(--bg)',//'hsl(var(--foreground))',

        main: 'var(--main)',
        overlay: 'var(--overlay)',
        bg: 'var(--bg)',
        bw: 'var(--bw)',
        blank: 'var(--blank)',
        text: 'var(--text)',
        mtext: 'var(--mtext)',
        border: 'var(--border)',
        ring: 'var(--ring)',
        ringOffset: 'var(--ring-offset)',

        secondaryBlack: '#212121',
      },
      /*colors: {
         card: {
            DEFAULT: 'hsl(var(--card))',
            foreground: 'hsl(var(--card-foreground))'
          },
          popover: {
            DEFAULT: 'hsl(var(--popover))',
            foreground: 'hsl(var(--popover-foreground))'
          },
          primary: {
            DEFAULT: 'hsl(var(--primary))',
            foreground: 'hsl(var(--primary-foreground))'
          },
          secondary: {
            DEFAULT: 'hsl(var(--secondary))',
            foreground: 'hsl(var(--secondary-foreground))'
          },
          muted: {
            DEFAULT: 'hsl(var(--muted))',
            foreground: 'hsl(var(--muted-foreground))'
          },
          accent: {
            DEFAULT: 'hsl(var(--accent))',
            foreground: 'hsl(var(--accent-foreground))'
          },
          destructive: {
            DEFAULT: 'hsl(var(--destructive))',
            foreground: 'hsl(var(--destructive-foreground))'
          }, */
      borderRadius: {
        base: '6px'
      },
      boxShadow: {
        shadow: 'var(--shadow)'
      },
      translate: {
        boxShadowX: '-6px',
        boxShadowY: '3px',
        reverseBoxShadowX: '6px',
        reverseBoxShadowY: '-3px',
      },
      fontWeight: {
        base: '600',
        heading: '900',
      },
      border: 'hsl(var(--border))',
      input: 'hsl(var(--input))',
      ring: 'hsl(var(--ring))',
      chart: {
        '1': 'hsl(var(--chart-1))',
        '2': 'hsl(var(--chart-2))',
        '3': 'hsl(var(--chart-3))',
        '4': 'hsl(var(--chart-4))',
        '5': 'hsl(var(--chart-5))'
      }
    },
    animation: {
      circling: 'circling calc(var(--duration-duration)*1s) linear infinite'
    },
    keyframes: {
      circling: {
        '0%': {
          transform: 'rotate(calc(var(--offset) * 1deg)) translate(calc(var(--radius) * 1px), 0) rotate(calc(var(--offset) * -1deg))'
        },
        '100%': {
          transform: 'rotate(calc(360deg + (var(--offset) * 1deg))) translate(calc(var(--radius) * 1px), 0) rotate(calc(-360deg + (var(--offset) * -1deg)))'
        }
      }
    }
  },
  plugins: [require("tailwindcss-animate")],
};
