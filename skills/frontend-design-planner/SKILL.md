---
name: frontend-design-planner
description: Use when the user has a concrete or approved Web/UI design artifact, mockup, screenshot, Figma design, visual reference, or landing/app concept and wants a technical frontend implementation plan. Do not use for pure design direction, code implementation, or copy-ready generator prompts.
---

# Frontend Design Planner

## Overview

Turn a supplied frontend design into a concrete implementation blueprint before coding. Produce practical, scenario-aware plans with framework selection, dependency choices, file structure, component boundaries, state/data strategy, motion rules, testing, deployment, responsive behavior, and QA checks.

Default to the user's language. If the request is in Ukrainian, answer in Ukrainian.

## Core Workflow

1. Inspect the design source: approved design brief, image, Figma notes, screenshot, written concept, target audience, and any explicit stack constraints.
2. Identify the product scenario: content/landing, SaaS/dashboard, ecommerce/catalog, portfolio/editorial, tool UI, prototype, game-like experience, or routed app. If the design direction itself is missing, use `web-ui-designer` first instead of inventing a full visual concept here.
3. Choose an output mode:
   - `compact` for small prototypes, single static pages, or early planning.
   - `full production` for production websites, dashboards, ecommerce, routed apps, or CMS/API-backed work.
   - `handoff-ready` when the next step is `frontend-implementation`, audits, or `website-master-prompts`.
4. Decide whether the work needs plain HTML/CSS/JS, Astro, React + Vite, Next.js, SvelteKit, React Router Framework Mode, or a richer motion/3D stack. Load `references/stack-selection.md`, `references/framework-selection.md`, and `references/project-structures.md` when this decision is not obvious.
5. Break the design into sections, layouts, reusable components, states, assets, data/config files, routing needs, SEO/content needs, and deployment constraints.
6. Define state, data, forms, testing, accessibility/performance audit handoff, and deployment/CI only to the depth the project actually needs. Mark irrelevant sections as `Not material for this build` instead of inventing boilerplate.
7. Produce a staged implementation plan that a developer can follow without re-interpreting the design.
8. End with verification checks for responsiveness, overflow, interaction states, accessibility, performance, visual fidelity, build/test status, and deploy readiness.

Do not jump directly to implementation unless the user explicitly asks for code after the plan.

## Boundary Rules

- Use `web-ui-designer` first when the user needs a design concept, visual direction, IA exploration, or UX decisions before technical planning.
- Use this skill when the design is already supplied or sufficiently implied and the missing piece is how to build it.
- Hand off to `frontend-implementation` when the user approves the plan or asks to implement/build/code it.
- Hand off to `website-master-prompts` when the requested deliverable is a generator prompt rather than a developer implementation plan.
- Hand off to `frontend-performance-audit`, `frontend-accessibility-audit`, or `frontend-acceptance-review` only after there is a finished or near-finished implementation to inspect.
- Keep output technical and implementation-ready; do not turn it into a moodboard or a copy-ready AI prompt.

## Required Output Shape

Use this structure unless the user asks for a shorter format. Start by stating the output mode: `compact`, `full production`, or `handoff-ready`.

1. **Design analysis** - summarize layout, visual language, content hierarchy, interaction density, and likely hard parts.
2. **Recommended stack** - name the stack and explain why it fits this design better than the main alternatives.
3. **Dependencies** - list install commands and the role of each dependency. For React projects, include package-manager commands.
4. **Project structure** - show a file tree with directories and key files.
5. **Component breakdown** - map visual regions to components and describe props/state where useful.
6. **Design tokens** - specify typography, colors, spacing, radii, shadows, breakpoints, and asset strategy.
7. **Animation and interaction plan** - define motion libraries, transitions, scroll behavior, hover states, and reduced-motion handling.
8. **Responsive plan** - cover desktop, tablet, and mobile layout changes.
9. **Data and state plan** - define local state, URL state, server state, forms, and content/config files where relevant.
10. **Testing and audit strategy** - define build/typecheck, unit/component/e2e/visual checks, and handoff to performance/accessibility audits where relevant.
11. **Deployment and CI plan** - define hosting target, environment variables, preview deploys, build checks, and release gates where relevant.
12. **SEO and content plan** - define metadata, semantic content, structured data, sitemap, and content source when public content matters.
13. **Implementation phases** - order the work from setup to QA.
14. **Quality checklist** - list the final checks before calling the build finished.

For the exact response skeleton and proportionality rules, load `references/output-template.md`.

## Scenario Defaults

- **Landing/content site**: Prefer Astro or HTML/CSS/JS when the design is content-led and low-state. Emphasize semantic structure, metadata, media handling, and fast first load.
- **SaaS/dashboard**: Prefer React + Vite, Next.js, or React Router Framework Mode depending on routing/data needs. Include tables, filters, forms, empty/loading/error states, permissions, and testing.
- **Ecommerce/catalog**: Prefer Next.js or Astro depending on cart/account/checkout complexity. Include product media, catalog data, SEO, structured content, performance, and state boundaries.
- **Tool UI/prototype**: Prefer React + Vite or HTML/CSS/JS. Keep CI, SEO, and backend assumptions light unless requested.
- **Vague design idea**: Route to `web-ui-designer` instead of turning an undefined concept into a technical plan.

## Stack Rules

Prefer the smallest stack that can faithfully deliver the design:

- Use **HTML/CSS/JS** for static, low-state pages, quick prototypes, or when the user asks for no framework.
- Use **Astro** for content-led marketing, portfolio, documentation, editorial, blog, and mostly static ecommerce/catalog pages where fast content delivery and low client JavaScript matter.
- Use **React + Vite** for component-heavy sites, interactive landing pages, dashboards without heavy server requirements, and fast local development.
- Use **Next.js** for SEO-sensitive sites, routed marketing pages, content-heavy sites, server-rendered pages, or CMS/API-backed production work.
- Use **SvelteKit** when the project benefits from Svelte's component model, integrated routing/data loading, forms, and a lighter app feel without React-specific dependencies.
- Use **React Router Framework Mode** for React apps that need nested routes, data loading/actions, progressive enhancement, or Remix-style full-stack routing without choosing Next.js.
- Add **Tailwind CSS** when the project benefits from fast utility styling and consistent tokens; use CSS Modules or SCSS when the design is highly bespoke or the codebase already uses them.
- Add **Framer Motion** for component transitions and layout animation.
- Add **GSAP** for timeline-heavy, scroll-orchestrated, or art-directed animation.
- Add **Lenis** only when smooth scrolling is part of the experience and does not harm usability.
- Add **Three.js / React Three Fiber** only for real 3D/WebGL requirements.
- Add **shadcn/ui** only for app-like interfaces where accessible primitives help; avoid it for highly custom editorial or experimental layouts unless the design calls for standard controls.

When the user asks for "latest" versions, current package commands, or version-sensitive APIs, verify with current official docs or the appropriate documentation tool before giving exact version guidance.

## Planning Standards

- Be concrete: include actual dependency names, file names, component names, and implementation order.
- Preserve explicit user constraints such as "only HTML CSS JS", "React only", "Framer Motion + Lenis", or "no Tailwind".
- Explain why each library is present; do not list fashionable dependencies without a design need.
- Avoid generic landing-page assumptions. If the design is not a classic navbar + hero + cards page, reflect its actual information architecture.
- If the supplied design is visually novel, vary the navigation model, entry experience, section rhythm, and interaction model instead of forcing a standard template.
- Call out risky or expensive parts early: complex canvas/WebGL, heavy scroll animation, custom cursors, video backgrounds, asset production, CMS/data needs, authentication, ecommerce, or localization.
- Include a "what not to build" note when a tempting library or pattern would add complexity without improving fidelity.
- Keep testing, deployment, SEO, and state strategy proportional. A throwaway prototype should not receive enterprise CI, and a production ecommerce flow should not stop at visual sections.
- Avoid filling every section with boilerplate. When a section does not materially affect the build, write `Not material for this build` and move on.
- Before finalizing, check the plan against `references/planning-quality-checklist.md`.

## Reference Files

- Load `references/output-template.md` when writing the final plan.
- Load `references/stack-selection.md` for the quick framework/dependency matrix.
- Load `references/framework-selection.md` when choosing between HTML/CSS/JS, Astro, React + Vite, Next.js, SvelteKit, React Router Framework Mode, motion libraries, shadcn/ui, or 3D.
- Load `references/project-structures.md` when the plan needs framework-specific file trees for Astro, SvelteKit, React Router Framework Mode, Next.js, React + Vite, or HTML/CSS/JS.
- Load `references/react-project-structure.md` when the plan uses React, Vite, or Next.js.
- Load `references/planning-quality-checklist.md` before finalizing any substantial plan or when the request is broad, vague, or production-oriented.
- Load `references/handoff-contracts.md` when the output must feed `frontend-implementation`, audit skills, acceptance review, or `website-master-prompts`.
- Load `references/example-plans.md` when the expected output shape is unclear or when calibrating a compact scenario-specific plan.
- Load `references/motion-guidelines.md` when the mockup implies animation, smooth scrolling, parallax, canvas, WebGL, or advanced interactions.
- Load `references/data-state-strategy.md` when the design includes forms, filters, search, auth state, dashboards, server data, URL-driven state, CMS content, or repeated configurable content.
- Load `references/testing-strategy.md` when the plan should define unit, component, e2e, visual, accessibility, performance, or regression checks.
- Load `references/deployment-ci.md` when the project is intended for production, preview deploys, multiple environments, GitHub Actions, Vercel, Netlify, Render, static hosting, or environment variables.
- Load `references/seo-content-strategy.md` when the project is a landing page, content site, portfolio, ecommerce/catalog, documentation site, or any route where metadata and semantic content affect success.
- For ambiguous multi-step Web/UI requests, consult `../web-ui-designer/references/workflow-routing.md` before deciding whether this skill is the right first step.

## Common Mistakes

- Treating every site as a navbar, hero, feature cards, testimonials, CTA, footer template.
- Choosing React or Next.js without explaining the design-driven reason.
- Listing dependencies without install commands or library roles.
- Forcing full production CI, SEO, or test suites into disposable prototypes.
- Omitting state, form, routing, or data details for app-like interfaces.
- Treating testing, deployment, state, SEO, or content strategy as an afterthought for production-oriented designs.
- Ignoring mobile states, long text, hover/focus states, loading states, and reduced motion.
- Producing a plan that describes sections but not files, components, or implementation order.
- Recommending animation libraries before deciding what motion the design actually needs.
- Re-solving the product's design direction when the correct handoff is from `web-ui-designer`.
