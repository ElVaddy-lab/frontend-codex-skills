---
name: web-ui-designer
description: Use when the user asks for a Web/UI design brief, design direction, UX concept, information architecture, visual system, interface concept, layout idea, UI states, redesign direction, or goal-aware design for a landing page, SaaS product, dashboard, portfolio, ecommerce site, web app, or tool UI. Do not use for code implementation, stack/dependency planning, or copy-ready generator prompts unless a design brief is needed first.
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
- Hand off to `web-ui-reverse-engineer` first when the user wants a redesign based on an existing site, mockup, Figma design, live URL, or codebase that has not been analyzed.
- If the user asks for "design + implementation plan", create the design brief first, then explicitly mark the next step as `frontend-design-planner`.
- Do not choose frameworks, dependencies, package commands, file trees, or implementation phases inside this skill. Those belong in `frontend-design-planner`.

## Style Skill Routing

Use this skill as the style decision point instead of activating every taste skill. Choose one primary style lane and mention it in the design brief when it affects handoff. Load `references/style-lane-routing.md` when the lane is not obvious or the request mentions taste, premium, minimalist, brutalist, GSAP, Awwwards, polish, or visual redesign.

## Core Workflow

1. Identify the product type: landing page, SaaS app, dashboard, portfolio, ecommerce, editorial site, web app, or tool UI.
2. Choose the brief mode: `concept brief`, `production brief`, `redesign brief`, or `handoff-ready brief`. Load `references/design-modes.md` when this is not obvious.
3. Identify the audience, business goal, primary user action, trust needs, content density, assumptions, and non-goals.
4. Choose a design approach and style lane that match the goal: editorial, dashboard, product-led, immersive, utilitarian, ecommerce, portfolio, service-led, tool-first, minimalist, industrial-brutalist, GSAP-led, or agency-polished.
5. Define information architecture before visual styling. Decide what the first viewport must prove and how later sections support it.
6. Create the visual system: typography, palette, spacing, surfaces, media, iconography, density, and layout rhythm.
7. Define UI components and states: navigation, cards, forms, tables, filters, modals, empty/loading/error/success states, hover/focus/active states.
8. Define motion and interaction only where it improves orientation, hierarchy, delight, or product understanding.
9. Define responsive behavior for desktop, tablet, and mobile.
10. Add accessibility and UX constraints.
11. End with handoff guidance: technical planning, implementation, reverse engineering, or master prompt.

Load `references/design-brief-template.md` when writing the final brief.

## Output Contract

Unless the user requests another format, output a structured design brief with:

0. Brief mode, product scenario, and handoff status.
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
- Make the first viewport show the product, interface state, work, object, or primary useful action whenever possible.
- Make text, controls, and media stable across desktop and mobile. Prevent overflow, overlapping content, cramped buttons, and layout shifts.

## Reference Files

- Load `references/design-modes.md` when choosing between concept, production, redesign, or handoff-ready brief modes.
- Load `references/design-brief-template.md` for the canonical design brief structure.
- Load `references/task-goal-mapping.md` when choosing a design direction based on product type or business goal.
- Load `references/style-lane-routing.md` when choosing a primary style lane or avoiding taste-skill over-triggering.
- Load `references/anti-generic-design-rules.md` when the request is broad, the first viewport risks becoming generic, or the design uses common decorative trends.
- Load `references/visual-systems.md` when defining typography, palette, spacing, surfaces, media, or iconography.
- Load `references/ui-patterns.md` when selecting components, navigation, first viewport patterns, and UI states.
- Load `references/handoff-contracts.md` when the brief must feed `frontend-design-planner`, `frontend-implementation`, `website-master-prompts`, or `web-ui-reverse-engineer`.
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
- Treating "redesign this existing site" as a pure invention task when reverse-engineering evidence is needed first.
