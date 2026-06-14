---
name: website-master-prompts
description: Use when the user asks to create, write, improve, vary, or analyze a copy-ready master prompt for AI website generation, landing pages, frontend prototypes, site concepts, HTML/CSS/JS sites, React sites, motion-heavy websites, or visually detailed web design prompts. Do not use for design briefs, technical implementation plans, or writing code unless the deliverable is explicitly a prompt.
---

# Website Master Prompts

## Overview

Create high-detail master prompts that another AI website generator or coding agent can use to build a distinctive website. The output should read like a production-ready creative and technical brief, not a generic landing-page request.

Default to the user's language. If the user asks in Ukrainian, write the surrounding answer and the prompt in Ukrainian unless they explicitly request English.

## Goal

Generate copy-ready prompts with:

- A concrete site concept and target audience.
- Exact frontend stack and dependency roles.
- Visual direction: typography, palette, spacing, layout rhythm, media, and UI texture.
- Information architecture and section order.
- Interaction and animation rules.
- Responsive behavior.
- File structure or implementation expectations.
- Anti-pattern constraints that prevent generic output.

## Core Workflow

1. Identify the requested site type, business/theme, stack, and quality level.
2. If the user provides a design brief from `web-ui-designer`, preserve its IA, visual system, and component/state intent inside the prompt.
3. If the user gives examples, synthesize their strengths instead of rewriting one example.
4. If the user asks for a random business/theme, choose a concrete one and make it visually specific.
5. Select the stack from the request. If no stack is given, pick a reasonable default and state it inside the prompt.
6. Design the information architecture before writing visual styling. Avoid defaulting to navbar -> hero -> cards -> CTA.
7. Write the master prompt in a single copy-ready block.
8. Add a short note only when useful: stack choice, concept rationale, or how this prompt differs from previous variants.

Load `references/master-prompt-template.md` for the output structure.

## Boundary Rules

- Use this skill only when the requested artifact is a prompt another AI generator or coding agent can consume.
- Use `web-ui-designer` when the user wants a design brief, UX/IA direction, or visual system but not a prompt.
- Use `frontend-design-planner` when the user wants stack, dependencies, file structure, and developer implementation phases.
- Use `frontend-implementation` when the user wants the site/app coded in the local workspace.
- Keep the final output copy-ready; avoid turning it into analysis unless the user explicitly asks for critique.

## Approach Options

Use one of these approaches based on the request:

- **Direct master prompt**: best when the user names the site theme or stack.
- **Concept-first prompt**: best when the user asks for "some business" or "another one"; choose a fresh niche and design grammar.
- **Variant prompt**: best when the user says "write another"; change business/theme, IA, first screen, motion model, and visual system.
- **Stack-specific prompt**: best when the user names HTML/CSS/JS, React, Framer Motion + Lenis, Three.js, React Three Fiber, GSAP, or another stack.
- **Prompt critique then replacement**: best when the user supplies several prompts and asks for a better unique one.

## Required Output Rules

- Give the actual master prompt, not only advice about prompts.
- Make the prompt immediately usable by another generator.
- Include exact stack, fonts, palette, media direction, section order, animation rules, responsive rules, and implementation constraints.
- Use library names with their concrete roles: for example, Lenis for smooth scroll, Framer Motion for reveals/layout transitions, GSAP ScrollTrigger for pinned sequences, Three.js/R3F for WebGL scenes.
- If the user says plain HTML/CSS/JS, keep the prompt framework-free.
- If the user asks for novelty, change the site grammar, not just colors or topic.
- For landing pages, avoid vague "modern and clean" phrasing unless expanded into concrete visual rules.
- Do not overuse purple/blue gradients, generic glass cards, floating orbs, stock-photo hero layouts, or repetitive card grids.
- Do not include long explanations unless the user asks for analysis.

## Reference Files

- Load `references/master-prompt-template.md` for the canonical copy-ready prompt structure.
- Load `references/novelty-rules.md` when the user wants a unique, premium, or structurally different site.
- Load `references/stack-presets.md` when the user names or needs a stack.
- Load `references/motion-stacks.md` for Framer Motion, Lenis, GSAP, Three.js, React Three Fiber, Anime.js, or scroll animation prompts.
- Load `references/prompt-review.md` when the user supplies existing prompts to analyze or improve.
- For ambiguous multi-step Web/UI requests, consult `../web-ui-designer/references/workflow-routing.md` before deciding whether prompt output is actually the requested artifact.

## Common Mistakes

- Writing a generic "create a modern responsive website" prompt.
- Reusing the same navbar, hero, feature cards, testimonials, CTA, footer structure.
- Naming a stack without defining what each library must do.
- Ignoring file structure and implementation deliverables.
- Changing only the business theme when the user asked for a new design direction.
- Producing explanation instead of a copy-ready master prompt.
- Replacing a design brief or implementation plan with a prompt when the user did not ask for prompt output.
