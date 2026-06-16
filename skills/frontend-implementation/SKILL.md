---
name: frontend-implementation
description: Use when the user asks to implement, build, code, recreate, convert, or finish a frontend website, landing page, web app, dashboard, game UI, or design mockup from an approved design, approved technical plan, screenshot, Figma design, reference, or written specification. Do not use for design briefs, stack planning only, or copy-ready generator prompts.
---

# Frontend Implementation

## Overview

Build working frontend experiences from approved plans or supplied designs. Preserve the design intent while producing maintainable files, responsive layouts, real interactions, and verified local output.

Default to the user's language for status updates and final summaries. If the request is in Ukrainian, answer in Ukrainian.

## Entry Rules

- If the user asks to implement an already approved plan, start execution immediately.
- If the user provides only a goal and needs design direction, use `web-ui-designer` first.
- If the user provides only a raw mockup and no stack/plan, use `frontend-design-planner` first when available, unless the user explicitly asks to skip planning and code directly.
- If an existing project is present, inspect it before choosing tools. Follow its package manager, framework, styling system, component conventions, and file organization.
- If there is no project, create the smallest project that can faithfully implement the design.
- If the user names a stack, obey it unless it is technically incompatible with the requested result.

## Boundary Rules

- Use this skill only when the expected output is working code or a completed frontend change.
- Do not produce a design brief here; use `web-ui-designer` for UX/visual direction.
- Do not produce a technical plan only; use `frontend-design-planner` for stack, dependencies, file structure, and implementation phases.
- Do not produce a copy-ready prompt for another AI generator; use `website-master-prompts`.
- Do not perform a deep performance audit here; use `frontend-performance-audit` when the task is diagnosis of Core Web Vitals, Lighthouse/PageSpeed, bundle cost, media/font loading, runtime jank, or animation cost.
- If concrete performance findings already exist, implement the fixes here and re-run the relevant verification.
- If a prerequisite design or plan is missing but the user explicitly says to build anyway, make a minimal local assumption and document it in the final response.

## Implementation Workflow

1. **Read context**: inspect the plan, mockup, package files, source tree, styles, assets, and existing components.
2. **Confirm build target internally**: identify framework, route/page, styling approach, assets, interactions, and test commands.
3. **Create or update structure**: add only the files needed for the requested UI. Keep unrelated files untouched.
4. **Implement static layout first**: establish semantic markup, stable dimensions, design tokens, spacing, typography, and responsive grids before motion.
5. **Extract components**: create components around design responsibilities, not arbitrary visual chunks.
6. **Add interactions**: implement menus, tabs, filters, forms, hover/focus states, toggles, scroll behavior, and animations after the base layout is stable.
7. **Handle assets**: use provided assets when available; otherwise choose appropriate temporary stand-ins, generated images, or clearly scoped CSS/canvas replacements.
8. **Verify**: run build/tests/lint where available, start the dev server for app projects, and perform browser QA for desktop and mobile.
9. **Polish**: fix overflow, spacing, responsiveness, contrast, console errors, broken assets, and motion issues before final response.

Use `references/implementation-workflow.md` for the detailed execution checklist.

## Stack-Specific Guidance

- Load `references/react-vite.md` for React + Vite implementations.
- Load `references/nextjs.md` for Next.js implementations.
- Load `references/html-css-js.md` for framework-free implementations.
- Load `references/browser-qa.md` before calling the work done.
- For ambiguous multi-step Web/UI requests, consult `../web-ui-designer/references/workflow-routing.md` before deciding whether to implement immediately or hand off to design/planning first.
- For performance-focused requests, hand off to `frontend-performance-audit` unless the user already provided specific findings to fix.

When current library syntax, install commands, or framework behavior may have changed, verify against current official documentation or the available docs tool before relying on memory.

## Design Fidelity Rules

- Build the actual requested experience as the first screen. Do not replace an app/tool/game request with a marketing landing page.
- Do not force a generic navbar + hero + cards structure onto a design with different information architecture.
- Use real controls and states a target user would expect: icon buttons, tabs, toggles, sliders, menus, inputs, empty states, loading states, and error states where relevant.
- Keep text inside its container at desktop and mobile widths. Fix long words, wrapping, truncation, and cramped buttons.
- Give fixed-format UI elements stable dimensions with responsive constraints: aspect ratios, grid tracks, min/max sizes, or container-relative sizing.
- Use icons from the existing icon library when available; otherwise prefer `lucide-react` in React projects.
- Keep cards for actual repeated items, modals, and framed tools. Avoid nesting cards inside cards.
- Avoid one-note palettes and generic decorative gradients unless the design specifically calls for them.

## Coding Standards

- Prefer the repo's existing architecture over introducing new abstractions.
- Keep components focused and named by product/design role.
- Keep shared state minimal; start with local state and lift only when necessary.
- Store repeated content in data/config files instead of duplicating JSX/HTML.
- Add comments only for non-obvious logic.
- Avoid broad refactors unless required for the requested implementation.
- Preserve unrelated user changes in the worktree.

## Output Completeness Guardrail

- Treat every created or edited file as complete and runnable. Do not leave partial files for the user to finish.
- Never output placeholder code markers such as `// ...`, `/* rest of code */`, `TODO: implement`, `for brevity`, `same as above`, `omitted`, or ellipses inside code blocks.
- If a file is too large to show in full, edit the actual file and summarize the important changes instead of emitting an abbreviated replacement.
- If the user explicitly asks for full source in chat and the output is too long, split only at complete file or complete section boundaries and clearly continue from the next boundary.
- Temporary visual data is allowed only when it is intentional product content or a scoped asset placeholder. It must not hide missing implementation logic.

## Verification Standard

Before the final response, verify with evidence:

- Build or typecheck command passes, if the project provides one.
- Tests pass when relevant and available.
- Dev server starts for app projects.
- Browser QA covers at least one desktop and one mobile viewport.
- Console and network errors are checked.
- Screenshots or visual inspection confirm the main UI is nonblank, framed correctly, and not overlapping.

If any verification cannot run, say exactly why in the final response.

## Common Mistakes

- Writing code before inspecting the existing project.
- Treating visual implementation as complete after desktop-only layout.
- Adding motion before layout and responsive constraints are stable.
- Ignoring long text, small screens, keyboard focus, reduced motion, and loading/error states.
- Installing dependencies without explaining why the design needs them.
- Claiming completion without running the available build or browser checks.
- Treating broad performance complaints as implementation tasks before diagnosing the bottleneck.
- Spending the response on design or planning when the user asked for implementation.
