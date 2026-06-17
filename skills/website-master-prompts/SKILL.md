---
name: website-master-prompts
description: Use when the user asks to create, write, improve, review, rewrite, vary, or convert a copy-ready master prompt for AI website generation or frontend prototype generation, including landing pages, SaaS/dashboard, ecommerce, portfolio/editorial, tool UI, HTML/CSS/JS, React, Next.js, Astro, motion-heavy, GSAP, Three.js, or prompt variants. Do not use for design briefs, technical plans, local code edits, or website analysis unless the requested deliverable is explicitly a prompt.
---

# Website Master Prompts

## Overview

Create high-detail master prompts that another AI website generator or coding agent can use to build a distinctive website or frontend prototype. The output should read like a production-ready creative and technical brief, not a generic landing-page request.

Default to the user's language. If the user asks in Ukrainian, write the surrounding answer and the prompt in Ukrainian unless they explicitly request English.

## Role in the Workflow

Use this skill only as the prompt-generation layer:

- `web-ui-designer` creates the design brief.
- `frontend-design-planner` creates the technical implementation plan.
- `web-ui-reverse-engineer` analyzes an existing site, design, or codebase.
- `frontend-implementation` writes local code.
- `website-master-prompts` converts approved intent, design, analysis, or plan input into a copy-ready prompt for another AI generator or coding agent.

Do not silently replace a design brief, implementation plan, local build, or reverse-engineering report with a prompt. Route to the relevant skill when the requested deliverable is not explicitly a prompt.

## Prompt Modes

Select one primary mode:

- `concept-to-prompt`: turn an early idea into a complete generator prompt.
- `design-brief-to-prompt`: preserve a `web-ui-designer` brief inside a generator prompt.
- `reverse-engineered-to-prompt`: convert `web-ui-reverse-engineer` findings into a prompt without inventing unknowns.
- `plan-to-prompt`: convert an approved `frontend-design-planner` output into a build prompt.
- `prompt-review-rewrite`: critique supplied prompts only enough to write a stronger replacement.
- `variant-pack`: produce 2-3 distinct prompt directions when the user asks for variants.

Use one primary mode. Treat secondary modes only as constraints.

## Core Workflow

1. Confirm the requested artifact is a prompt; otherwise route to the correct workflow skill.
2. Select the prompt mode and generator target. Load `references/output-modes.md` and `references/generator-targets.md`.
3. Preserve source handoff when provided. Load `references/prompt-input-handoffs.md`.
4. Identify site type, audience, primary user action, stack, quality level, and any explicit exclusions.
5. Design the information architecture before visual styling. Avoid defaulting to `navbar -> hero -> cards -> CTA`.
6. Write the master prompt in a fenced `prompt` block using `references/master-prompt-template.md`.
7. Run `references/prompt-quality-checklist.md` before finalizing.
8. Add a short note only when useful: mode, target, stack choice, or variant distinction.

## Boundary Rules

- Use this skill only when the requested artifact is a prompt another AI generator or coding agent can consume.
- Use `web-ui-designer` when the user wants a design brief, UX/IA direction, or visual system but not a prompt.
- Use `frontend-design-planner` when the user wants stack, dependencies, file structure, and developer implementation phases.
- Use `frontend-implementation` when the user wants the site/app coded in the local workspace.
- Use `web-ui-reverse-engineer` when the user wants an existing site, screenshot, Figma file, or codebase analyzed before prompt generation.
- Keep the final output copy-ready; avoid turning it into analysis unless the user explicitly asks for critique.

## Required Output Rules

- Give the actual master prompt, not only advice about prompts.
- Make the prompt immediately usable by another generator.
- Start prompt content with `Prompt mode`, `Generator target`, `Source handoff`, and `Non-goals`.
- Include exact stack, dependency roles, first viewport, IA, visual system, components, states, media direction, animation rules, responsive rules, implementation constraints, and acceptance checks.
- Use library names with their concrete roles: for example, Lenis for smooth scroll, Framer Motion for reveals/layout transitions, GSAP ScrollTrigger for pinned sequences, Three.js/R3F for WebGL scenes.
- If the user says plain HTML/CSS/JS, keep the prompt framework-free.
- If the user asks for novelty or another variant, change the site grammar, first viewport, IA, motion model, palette/media direction, and interaction pattern, not just colors or topic.
- For landing pages, avoid vague "modern and clean" phrasing unless expanded into concrete visual rules.
- Do not overuse purple/blue gradients, generic glass cards, floating orbs, stock-photo hero layouts, repetitive card grids, or placeholder content.
- Do not contradict approved handoff material from design, planning, or reverse-engineering inputs.
- Do not include long explanations unless the user asks for analysis.

## Reference Files

- Load `references/output-modes.md` to choose the prompt mode and mode-specific output shape.
- Load `references/generator-targets.md` to adapt the prompt to the intended AI generator or coding agent.
- Load `references/prompt-input-handoffs.md` when converting design briefs, plans, or reverse-engineering reports into prompts.
- Load `references/master-prompt-template.md` for the canonical copy-ready prompt structure.
- Load `references/novelty-rules.md` when the user wants a unique, premium, or structurally different site.
- Load `references/stack-presets.md` when the user names or needs a stack.
- Load `references/motion-stacks.md` for Framer Motion, Lenis, GSAP, Three.js, React Three Fiber, Anime.js, or scroll animation prompts.
- Load `references/prompt-review.md` when the user supplies existing prompts to analyze or improve.
- Load `references/example-master-prompts.md` when output shape is unclear or a compact example would prevent generic prompts.
- Load `references/prompt-quality-checklist.md` before finalizing any substantial prompt.
- For ambiguous multi-step Web/UI requests, consult `../web-ui-designer/references/workflow-routing.md` before deciding whether prompt output is actually the requested artifact.

## Common Mistakes

- Writing a generic "create a modern responsive website" prompt.
- Reusing the same navbar, hero, feature cards, testimonials, CTA, footer structure.
- Naming a stack without defining what each library must do.
- Ignoring first viewport, responsive behavior, asset direction, states, QA checks, and implementation deliverables.
- Changing only the business theme when the user asked for a new design direction.
- Producing explanation instead of a copy-ready master prompt.
- Replacing a design brief or implementation plan with a prompt when the user did not ask for prompt output.
- Inventing details that conflict with supplied design, plan, or reverse-engineering evidence.
