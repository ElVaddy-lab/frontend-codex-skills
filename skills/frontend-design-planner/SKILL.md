---
name: frontend-design-planner
description: Use when the user provides an approved Web/UI design brief, mockup, screenshot, Figma design, visual reference, landing-page concept, or UI idea and asks for a frontend development plan, stack choice, dependencies, file structure, component breakdown, implementation sequence, or design-to-code blueprint. Do not use for pure design direction, code implementation, or copy-ready generator prompts.
---

# Frontend Design Planner

## Overview

Turn a supplied frontend design into a concrete implementation blueprint before coding. Produce practical, design-aware plans with stack selection, dependency choices, file structure, component boundaries, motion rules, responsive behavior, and QA checks.

Default to the user's language. If the request is in Ukrainian, answer in Ukrainian.

## Core Workflow

1. Inspect the design source: approved design brief, image, Figma notes, screenshot, written concept, target audience, and any explicit stack constraints.
2. Identify the product type: marketing site, SaaS app, dashboard, portfolio, ecommerce, editorial site, game-like experience, or utility. If the design direction itself is missing, use `web-ui-designer` first instead of inventing a full visual concept here.
3. Decide whether the work needs plain HTML/CSS/JS, React + Vite, Next.js, or a richer motion/3D stack. Load `references/stack-selection.md` when this decision is not obvious.
4. Break the design into sections, layouts, reusable components, states, assets, and data/config files.
5. Produce a staged implementation plan that a developer can follow without re-interpreting the design.
6. End with verification checks for responsiveness, overflow, interaction states, accessibility, performance, and visual fidelity.

Do not jump directly to implementation unless the user explicitly asks for code after the plan.

## Boundary Rules

- Use `web-ui-designer` first when the user needs a design concept, visual direction, IA exploration, or UX decisions before technical planning.
- Use this skill when the design is already supplied or sufficiently implied and the missing piece is how to build it.
- Hand off to `frontend-implementation` when the user approves the plan or asks to implement/build/code it.
- Hand off to `website-master-prompts` when the requested deliverable is a generator prompt rather than a developer implementation plan.
- Keep output technical and implementation-ready; do not turn it into a moodboard or a copy-ready AI prompt.

## Required Output Shape

Use this structure unless the user asks for a shorter format:

1. **Design analysis** - summarize layout, visual language, content hierarchy, interaction density, and likely hard parts.
2. **Recommended stack** - name the stack and explain why it fits this design better than the main alternatives.
3. **Dependencies** - list install commands and the role of each dependency. For React projects, include package-manager commands.
4. **Project structure** - show a file tree with directories and key files.
5. **Component breakdown** - map visual regions to components and describe props/state where useful.
6. **Design tokens** - specify typography, colors, spacing, radii, shadows, breakpoints, and asset strategy.
7. **Animation and interaction plan** - define motion libraries, transitions, scroll behavior, hover states, and reduced-motion handling.
8. **Responsive plan** - cover desktop, tablet, and mobile layout changes.
9. **Implementation phases** - order the work from setup to QA.
10. **Quality checklist** - list the final checks before calling the build finished.

For the exact response skeleton, load `references/output-template.md`.

## Stack Rules

Prefer the smallest stack that can faithfully deliver the design:

- Use **HTML/CSS/JS** for static, low-state pages, quick prototypes, or when the user asks for no framework.
- Use **React + Vite** for component-heavy sites, interactive landing pages, dashboards without heavy server requirements, and fast local development.
- Use **Next.js** for SEO-sensitive sites, routed marketing pages, content-heavy sites, server-rendered pages, or CMS/API-backed production work.
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

## Reference Files

- Load `references/output-template.md` when writing the final plan.
- Load `references/stack-selection.md` when choosing between HTML/CSS/JS, React + Vite, Next.js, motion libraries, shadcn/ui, or 3D.
- Load `references/react-project-structure.md` when the plan uses React, Vite, or Next.js.
- Load `references/motion-guidelines.md` when the mockup implies animation, smooth scrolling, parallax, canvas, WebGL, or advanced interactions.
- For ambiguous multi-step Web/UI requests, consult `../web-ui-designer/references/workflow-routing.md` before deciding whether this skill is the right first step.

## Common Mistakes

- Treating every site as a navbar, hero, feature cards, testimonials, CTA, footer template.
- Choosing React or Next.js without explaining the design-driven reason.
- Listing dependencies without install commands or library roles.
- Ignoring mobile states, long text, hover/focus states, loading states, and reduced motion.
- Producing a plan that describes sections but not files, components, or implementation order.
- Recommending animation libraries before deciding what motion the design actually needs.
- Re-solving the product's design direction when the correct handoff is from `web-ui-designer`.
