# Project Overview & Developer Guide

This document captures the core points and conventions for new developers and any automation agents working on this codebase.

## Quick Start
- Install dependencies: `pnpm install`
- Development server: `pnpm dev`
- Build for production: `pnpm build`

## Tooling & Config
- pnpm-workspace.yaml, package.json, pnpm-lock.yaml: pnpm is used for package management.
- astro.config.mjs: Main Astro configuration and integrations.
- tailwind.config.mjs & src/styles/globals.css: Tailwind CSS setup and global styles.
- tmux_conf.sh: Helper script for local TMUX setup.

## Pages & Layouts
- src/pages/: `.astro` files map to routes (e.g., index.astro, gallery.astro).
- src/layouts/Layout.astro: Global layout wrapper (header, footer, navigation).

## Components
- src/components/ui/: Core UI primitives (buttons, cards, dropdowns, navigation-menu, marquee, carousel, progress bar).
- src/components/: Higher-level sections and helpers (BlogSection.tsx, InspirationsSection.tsx, LinkButton.tsx, stars/s39.tsx, typography.tsx).
- .astro SVG components: posthog.astro, GithubIcon.astro, LinkIcon.astro, RightArrow.astro.
- src/lib/utils.ts: Miscellaneous utility functions.

## Static Assets
- public/: Static files served at root (favicon, logos, images).
- src/assets/: Assets imported directly into components (e.g., background.svg).

## Environment & Analytics
- src/env.d.ts: Type definitions for environment variables.
- posthog.astro: PostHog analytics snippet (requires env var for project key).

## Linting & Types
- tsconfig.json: TypeScript settings for `.ts`, `.tsx`, and `.astro` files.
- eslint.config.js: ESLint configuration covering TypeScript and Astro syntax.

## Design Conventions
- Visual style follows a **neobrutalism** aesthetic: bold outlines, raw edges, high contrast colors.
- Always adhere to definitions and variables in **src/styles/globals.css** before writing any new style code.
- Use Tailwind utility classes consistently; extend via `tailwind.config.mjs` only when necessary.

## Miscellaneous
- AGENTS.md: This document (developer/agent reference).
- components.json: Metadata for component registry.

Keep this document up to date as the project evolves.
