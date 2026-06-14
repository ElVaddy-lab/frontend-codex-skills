# Stack Presets

Use these presets when the user requests or needs a specific frontend stack.

## HTML CSS JS

Use for framework-free prompts.

Prompt requirements:

- Files: `index.html`, `styles.css`, `script.js`, `assets/`.
- Semantic HTML sections.
- CSS variables for tokens.
- CSS Grid/Flexbox for layout.
- Vanilla JS only for interactions.
- No React, Vue, Tailwind, build tools, or npm dependencies unless explicitly requested.

## React + Vite

Use for interactive single-page sites and component-heavy prototypes.

Prompt requirements:

- React + Vite + TypeScript.
- Components split into `layout`, `sections`, `ui`.
- Data arrays in `src/data`.
- Icons with `lucide-react` if needed.
- `framer-motion` only if motion is part of the concept.
- Keep state local unless shared state is clearly required.

## Next.js

Use for SEO, multiple routes, content-heavy pages, server rendering, or production marketing sites.

Prompt requirements:

- App Router structure.
- Metadata and semantic pages.
- Static assets in `public`.
- Client components only where interaction requires them.
- Clear route/section structure.

## Tailwind

Use when fast utility styling and token consistency matter.

Prompt requirements:

- Define custom theme colors, spacing, radius, and font choices.
- Avoid one-off arbitrary values everywhere.
- Do not let utility classes replace design decisions.

## shadcn/ui

Use for dashboards, SaaS tools, forms, modals, tabs, tables, and app controls.

Prompt requirements:

- Use components as accessible primitives.
- Restyle them to match the visual system.
- Do not use shadcn/ui for highly custom editorial sites unless standard controls are central.
