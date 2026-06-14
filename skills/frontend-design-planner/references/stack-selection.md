# Stack Selection

Choose the stack from the design requirements, not from habit.

## Decision Table

| Design need | Prefer | Why |
| --- | --- | --- |
| Static page, minimal state, no routing | HTML/CSS/JS | Fastest and lowest complexity |
| Interactive page, repeated components, local state | React + Vite | Good component model with light tooling |
| SEO, multiple routes, content pages, server data | Next.js | Routing, rendering, and production structure |
| Dashboard, CRUD, forms, filters, modals | React + Vite or Next.js | Component reuse and state management |
| Standard app controls and accessible primitives | shadcn/ui | Speeds up complex UI controls |
| Highly bespoke marketing/editorial design | Custom CSS, Tailwind, or CSS Modules | Avoid fighting prebuilt component styles |
| Component transitions and layout motion | Framer Motion | Natural React animation layer |
| Timeline-driven animation or scroll choreography | GSAP | Strong sequencing and scroll control |
| Smooth scrolling as a visible design trait | Lenis | Adds controlled smooth scroll; use sparingly |
| 3D/WebGL/canvas scene | Three.js or React Three Fiber | Required for real 3D rendering |

## Default Recommendations

- For most single-page interactive designs: React + Vite + TypeScript.
- For production landing pages with SEO and route growth: Next.js + TypeScript.
- For simple visual prototypes: HTML/CSS/JS.
- For operational SaaS screens: React/Next.js + shadcn/ui + a focused state strategy.
- For experimental sites: React + Vite plus only the motion/rendering libraries needed by the design.

## Dependency Discipline

Include a dependency only when the plan names its concrete role:

- Icons: `lucide-react`
- Class composition: `clsx` or `tailwind-merge`
- Component animation: `framer-motion`
- Scroll animation: `gsap`, `ScrollTrigger`
- Smooth scroll: `lenis`
- Carousels: prefer CSS scroll snap first; use a library only for complex behavior
- Data/state: use React state first; add Zustand only for shared client state
- Forms: native forms first; add React Hook Form for validation-heavy forms

## Anti-Patterns

- Using Next.js for a one-screen prototype with no SEO or routing need.
- Using shadcn/ui for a highly custom visual site where primitives will be restyled beyond recognition.
- Adding GSAP and Framer Motion together without assigning distinct responsibilities.
- Adding Lenis to content-heavy pages where scroll precision matters more than smoothness.
- Recommending Three.js for decorative depth that CSS can handle.
