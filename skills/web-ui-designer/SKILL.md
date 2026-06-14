---
name: web-ui-designer
description: Use when the user asks for a Web/UI design brief, design direction, UX concept, information architecture, visual system, interface concept, layout idea, UI states, or goal-aware design for a landing page, SaaS product, dashboard, portfolio, ecommerce site, web app, or tool UI. Do not use for code implementation, stack/dependency planning, or copy-ready generator prompts unless a design brief is needed first.
---

# Web UI Designer

## Overview

Generate complete Web/UI design briefs from a task and goal. This skill defines the design direction, UX structure, visual system, components, states, motion, responsive behavior, and handoff guidance before technical planning or implementation.

Default to the user's language. If the user asks in Ukrainian, write the design brief in Ukrainian.

## Position in the Workflow

Use this skill as the design layer:

1. `web-ui-designer` creates the goal-aware design brief.
2. `frontend-design-planner` turns the approved design into a technical frontend plan.
3. `frontend-implementation` builds the approved design or plan.
4. `website-master-prompts` converts the design direction into a copy-ready generator prompt when the user asks for prompt output.

Do not turn this into a code implementation plan unless the user explicitly asks for development planning. Do not output only a generator prompt unless the user asks for a prompt.

## Boundary Rules

- Use this skill when the missing piece is design intent: UX direction, IA, first viewport, visual system, component/state expectations, or responsive behavior.
- Hand off to `frontend-design-planner` when the user asks for stack, dependencies, file structure, components as code units, or implementation phases.
- Hand off to `frontend-implementation` when the user asks to build, code, recreate, implement, or finish the UI.
- Hand off to `website-master-prompts` when the requested artifact is a copy-ready prompt for another AI generator.
- If the user asks for "design + implementation plan", create the design brief first, then explicitly mark the next step as `frontend-design-planner`.

## Style Skill Routing

Use this skill as the style decision point instead of activating every taste skill. Choose one primary style lane and mention it in the design brief when it affects handoff.

- Use `design-taste-frontend` as the default production lane for balanced premium frontend work, SaaS, dashboards, apps, and restrained landing pages that need strong engineering discipline.
- Use `gpt-taste` only when the brief calls for GSAP-heavy, Awwwards-style, scroll-driven, pinned, scrubbed, editorial, or experimental motion-led interfaces.
- Use `high-end-visual-design` as a polish layer when the design direction already exists but needs more premium typography, surfaces, spacing, visual depth, and micro-interaction detail.
- Use `minimalist-ui` when the user explicitly asks for minimal, clean, editorial, document-style, warm monochrome, muted pastel, low-shadow, or workspace-like design.
- Use `industrial-brutalist-ui` when the user explicitly asks for industrial, brutalist, tactical, terminal, telemetry, declassified blueprint, cyber/security, or raw mechanical aesthetics.
- Do not combine style skills by default. If two seem relevant, pick the stronger primary lane and record the secondary influence as a constraint, not as a second active style system.

## Core Workflow

1. Identify the product type: landing page, SaaS app, dashboard, portfolio, ecommerce, editorial site, web app, or tool UI.
2. Identify the audience, business goal, primary user action, trust needs, and content density.
3. Choose a design approach and style lane that match the goal: editorial, dashboard, product-led, immersive, utilitarian, ecommerce, portfolio, service-led, tool-first, minimalist, industrial-brutalist, GSAP-led, or agency-polished.
4. Define information architecture before visual styling. Decide what the first viewport must prove and how later sections support it.
5. Create the visual system: typography, palette, spacing, surfaces, media, iconography, density, and layout rhythm.
6. Define UI components and states: navigation, cards, forms, tables, filters, modals, empty/loading/error/success states, hover/focus/active states.
7. Define motion and interaction only where it improves orientation, hierarchy, delight, or product understanding.
8. Define responsive behavior for desktop, tablet, and mobile.
9. Add accessibility and UX constraints.
10. End with handoff guidance: technical planning, implementation, or master prompt.

Load `references/design-brief-template.md` when writing the final brief.

## Output Contract

Unless the user requests another format, output a structured design brief with:

1. Goal and audience.
2. Design direction.
3. Information architecture.
4. First viewport.
5. Visual system.
6. Components and UI states.
7. Motion and interactions.
8. Responsive behavior.
9. Accessibility and UX constraints.
10. Handoff guidance.

Keep the answer practical and directly usable. Prefer concrete design decisions over broad adjectives like "modern", "clean", or "premium" unless those adjectives are translated into layout, type, color, surface, and interaction rules.

## Design Standards

- Design for the task and goal, not for decoration.
- For SaaS, dashboards, and operational tools, prioritize dense but readable information, predictable navigation, clear controls, and fast repeated use.
- For portfolio, editorial, launch, and brand-led sites, create stronger narrative rhythm, media direction, and visual signature.
- For ecommerce, prioritize inspection, comparison, trust, cart flow, filters, product media, and purchase confidence.
- For tool UI, place the actual tool/work surface in the first experience instead of a marketing explanation.
- Avoid forcing every design into `navbar -> hero -> cards -> CTA`.
- Avoid generic glassmorphism, purple/blue gradients, floating orbs, decorative blobs, and stock-like hero compositions unless the brief gives a specific reason.
- Make text, controls, and media stable across desktop and mobile. Prevent overflow, overlapping content, cramped buttons, and layout shifts.

## Reference Files

- Load `references/design-brief-template.md` for the canonical design brief structure.
- Load `references/task-goal-mapping.md` when choosing a design direction based on product type or business goal.
- Load `references/visual-systems.md` when defining typography, palette, spacing, surfaces, media, or iconography.
- Load `references/ui-patterns.md` when selecting components, navigation, first viewport patterns, and UI states.
- Load `references/quality-checklist.md` before finalizing the brief or handing off to another skill.
- Load `references/workflow-routing.md` when the user request is broad or could involve multiple web/frontend skills.

## Common Mistakes

- Producing a frontend implementation plan instead of a design brief.
- Creating only a style moodboard without IA, components, states, and responsive rules.
- Reusing a generic landing-page grammar for dashboards, tools, ecommerce, or portfolio sites.
- Choosing colors, fonts, or animation before understanding the business goal and user action.
- Ignoring empty, loading, error, success, hover, focus, and mobile states.
- Leaving the next-step handoff ambiguous.
- Recommending React, Next.js, or dependencies here instead of leaving technical stack decisions to `frontend-design-planner`.
