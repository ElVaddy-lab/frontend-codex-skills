---
name: frontend-code-architecture
description: Use when frontend code must be organized, refactored, or implemented with maintainable architecture: component boundaries, file structure, hooks, utilities, state/data separation, styling tokens, feature folders, and safe refactor guardrails. Prefer when the user says not to put everything in one file, asks to split App/page files into components, clean up frontend structure, reduce JSX duplication, organize React/Vite/Next code, or make frontend code easier to maintain. Do not use for visual design direction, stack planning only, deep audits, or code changes where architecture is not material.
---

# Frontend Code Architecture

## Overview

Guide frontend implementation and refactoring toward maintainable code structure. Keep UI code understandable, modular, and easy to extend without over-engineering small projects.

Default to the user's language for status updates and final summaries. If the request is in Ukrainian, answer in Ukrainian.

## Position in the Workflow

Use this skill as an architecture guardrail for `frontend-implementation` or as a focused refactor workflow for existing frontend code.

Typical flow:

1. `web-ui-designer` defines the design direction when needed.
2. `frontend-design-planner` defines stack, dependencies, file structure, and phases when needed.
3. `frontend-implementation` writes or changes code.
4. `frontend-code-architecture` keeps code organization, component boundaries, state/data separation, and refactor safety explicit.
5. `frontend-qa-orchestrator`, `frontend-acceptance-review`, `frontend-performance-audit`, or `frontend-accessibility-audit` verify finished work when relevant.

Do not turn this skill into a style guide detached from the actual repo. Read the current project before changing structure.

## Use Cases

- Split an oversized `App.tsx`, `page.tsx`, route file, or single-file prototype into focused modules.
- Refactor repeated JSX, repeated data blocks, or duplicated UI sections into components and data/config.
- Organize React + Vite, Next.js, Astro islands, SvelteKit, or HTML/CSS/JS project structure around the existing framework.
- Separate layout, domain features, reusable primitives, hooks, utilities, content, assets, and styles.
- Add architecture guardrails while implementing a new frontend so the result is not one large file.
- Review a frontend diff for maintainability issues and propose a scoped refactor plan.

## Boundary Rules

- Do not create visual design direction; use `web-ui-designer`.
- Do not choose the whole stack or dependency plan from scratch; use `frontend-design-planner`.
- Do not replace implementation; use this skill with `frontend-implementation` when code changes are required.
- Do not perform deep performance, accessibility, or acceptance audits.
- Do not split files merely to increase file count. Split when it improves readability, reuse, testability, ownership, or change safety.
- Do not introduce framework, state management, styling, or utility dependencies unless the existing repo already uses them or the complexity clearly justifies them.
- Do not reorganize unrelated areas of the repo during a scoped feature or bug fix.

## Core Workflow

1. **Inspect the project**: read package files, route structure, existing components, styles, state/data patterns, and naming conventions.
2. **Identify architecture pressure**: oversized files, mixed responsibilities, duplicated JSX, hard-coded repeated content, tangled state/effects, style drift, or unclear feature ownership.
3. **Choose refactor mode**:
   - `guardrail` for new implementation work;
   - `targeted split` for one oversized file or route;
   - `feature organization` for a specific product area;
   - `architecture review` when the output is a plan or findings only.
4. **Map boundaries before editing**: decide which pieces are components, hooks, utilities, data/config, styles, or feature modules.
5. **Refactor behavior-preservingly**: move code in small steps, keep public behavior stable, and avoid unrelated rewrites.
6. **Verify imports and runtime behavior**: run typecheck/build/tests where available, then browser QA for UI changes.
7. **Report structure changes**: explain the new files, why each boundary exists, and what verification ran.

Load `references/refactor-workflow.md` before changing existing architecture.

## Architecture Rules

- Keep route/page files as composition layers: data loading, page-level layout, and feature assembly. Avoid burying every section, card, modal, and helper in a route file.
- Create components around product or design responsibilities, not arbitrary visual slices.
- Keep reusable primitives separate from domain-specific feature components.
- Keep hooks focused on reusable state/effects. Do not hide simple local state in a hook unless reuse, testing, or complexity justifies it.
- Keep pure formatting, parsing, filtering, and mapping logic in utilities when it grows beyond obvious inline expressions.
- Move repeated content arrays, navigation items, pricing tiers, feature lists, testimonials, mock rows, and demo data into `data/`, `content/`, or feature-local config.
- Keep global styles, tokens, and resets in predictable style entrypoints. Keep component-specific styling close to the component when the repo pattern supports it.
- Prefer existing repo conventions over a new idealized folder structure.
- Preserve unrelated user changes and existing public APIs.

Load `references/component-boundaries.md`, `references/project-structure-patterns.md`, `references/state-data-effects.md`, and `references/styling-and-tokens.md` as needed.

## Output Contract

For architecture planning or review, include:

1. Current structure summary.
2. Main maintainability risks.
3. Proposed boundaries.
4. File/module plan.
5. What should stay local and why.
6. Refactor sequence.
7. Verification plan.

For code changes, include in the final response:

1. Files changed and each file's role.
2. Behavior-preservation notes.
3. Verification commands and results.
4. Any remaining architecture risk or intentionally deferred cleanup.

## Reference Files

- Load `references/component-boundaries.md` when deciding what should become a component, stay inline, or become a primitive.
- Load `references/project-structure-patterns.md` when organizing files for React + Vite, Next.js, Astro, SvelteKit, routed apps, dashboards, or static sites.
- Load `references/state-data-effects.md` when separating local state, shared state, effects, hooks, derived data, and configuration.
- Load `references/styling-and-tokens.md` when organizing CSS modules, Tailwind, global styles, design tokens, variants, and responsive rules.
- Load `references/refactor-workflow.md` before moving existing code.
- Load `references/anti-patterns.md` when reviewing or explaining maintainability problems.
- Load `references/architecture-review-template.md` when the user asks for a review or plan instead of edits.

## Common Mistakes

- Splitting every small element into its own file.
- Creating `components/` as a junk drawer with no feature or ownership boundaries.
- Moving code without preserving imports, behavior, and tests.
- Hiding one-off markup in generic components that are harder to read than the original.
- Creating hooks for simple state that is only used once.
- Keeping repeated content embedded in JSX after extracting components.
- Refactoring styling into a new system while ignoring the repo's existing styling convention.
- Claiming architecture quality without running build/typecheck after moving files.
