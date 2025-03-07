/** @type {import('tailwindcss').Config} */
export default {
  darkMode: ["class"],
  content: ["./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}"],
  theme: {
  	extend: {
  		borderRadius: {
  			base: '6px'
  		},
  		colors: {
  			background: 'hsl(var(--background))',
  			foreground: 'hsl(var(--foreground))',
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
  			secondaryBlack: '#212121'
  		},
  		boxShadow: {
  			shadow: 'var(--shadow)'
  		},
  		translate: {
  			boxShadowX: '-6px',
  			boxShadowY: '3px',
  			reverseBoxShadowX: '6px',
  			reverseBoxShadowY: '-3px'
  		},
  		fontWeight: {
  			base: '600',
  			heading: '900'
  		},
  		fontFamily: {
  			'neo-brutal': [
  				'montserrat',
  				'sans-serif'
  			]
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
  		},
  		animation: {
  			marquee: 'marquee 5s linear infinite',
  			marquee2: 'marquee2 5s linear infinite'
  		},
  		keyframes: {
  			marquee: {
  				'0%': {
  					transform: 'translateX(0%)'
  				},
  				'100%': {
  					transform: 'translateX(-100%)'
  				}
  			},
  			marquee2: {
  				'0%': {
  					transform: 'translateX(100%)'
  				},
  				'100%': {
  					transform: 'translateX(0%)'
  				}
  			}
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
