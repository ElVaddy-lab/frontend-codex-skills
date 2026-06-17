# Web Workflow Routing

Use this reference for ambiguous or multi-step Web/UI requests where several local skills could apply.

## Intent Matrix

| User intent | Use first | Output |
| --- | --- | --- |
| Analyze or decompose an existing site, mockup, Figma design, live URL, or frontend codebase | `web-ui-reverse-engineer` | Evidence-aware reverse-engineering report |
| Design direction, UX concept, visual system, layout idea, brief mode, first viewport | `web-ui-designer` | Scenario-aware design brief |
| Development plan, stack choice, dependencies, file structure, implementation phases | `frontend-design-planner` | Scenario-aware technical frontend plan |
| Build, implement, code, recreate, finish, make it work | `frontend-implementation` | Working frontend code and QA |
| Performance audit, Core Web Vitals, Lighthouse/PageSpeed, bundle cost, media/font loading, runtime jank, animation cost | `frontend-performance-audit` | Evidence-backed performance report |
| Accessibility audit, WCAG 2.2, keyboard navigation, focus, ARIA, labels, landmarks, forms, contrast, screen-reader flow | `frontend-accessibility-audit` | Evidence-backed accessibility report |
| Master prompt, prompt for site generation, AI generator prompt | `website-master-prompts` | Copy-ready generator prompt |
| Think through options, compare approaches, choose strategy | `brainstorm` | Options, tradeoffs, recommendation |

## Standard Pipeline

For broad "create a site/app from scratch" requests, route in this order unless the user asks to skip a step:

1. `web-ui-designer` for the design direction, UX/visual brief, brief mode, first viewport, and handoff status.
2. `frontend-design-planner` for stack, dependencies, file structure, components as code units, testing, deployment, SEO/content, and phases.
3. `frontend-implementation` for code, build, dev server, and browser QA.
4. `frontend-performance-audit` when production performance, Core Web Vitals, bundle cost, or runtime smoothness matters.
5. `frontend-accessibility-audit` when WCAG, keyboard, focus, screen-reader, contrast, forms, or ARIA quality matters.
6. `website-master-prompts` only if the requested deliverable is a prompt for another generator.

For an existing interface:

1. `web-ui-reverse-engineer` documents components, tokens, layout, behavior, evidence, and unknowns.
2. Continue to `web-ui-designer` for a redesign, or `frontend-design-planner` for a faithful reconstruction.
3. Use `frontend-implementation` only after the intended result is approved.

## Combined Requests

- **Design + plan**: use `web-ui-designer` for the design brief, then hand off to `frontend-design-planner` for stack and implementation planning.
- **Analyze + redesign**: use `web-ui-reverse-engineer`, then hand off to `web-ui-designer`.
- **Analyze + rebuild plan**: use `web-ui-reverse-engineer`, then hand off to `frontend-design-planner`.
- **Plan + implementation**: use `frontend-design-planner`, then hand off to `frontend-implementation`.
- **Implementation + performance**: use `frontend-implementation`, then hand off to `frontend-performance-audit`.
- **Performance findings + fixes**: use `frontend-performance-audit` first when diagnosis is missing; use `frontend-implementation` when findings are already concrete.
- **Implementation + accessibility**: use `frontend-implementation`, then hand off to `frontend-accessibility-audit`.
- **Accessibility findings + fixes**: use `frontend-accessibility-audit` first when diagnosis is missing; use `frontend-implementation` when findings are already concrete.
- **Design + prompt**: use `web-ui-designer`, then convert the approved direction with `website-master-prompts`.
- **Prompt only**: use `website-master-prompts` directly; do not create a full design brief first unless the prompt lacks concept direction.
- **Code now**: use `frontend-implementation` directly when the user explicitly asks to build and accepts local assumptions.

## Do Not Over-Route

- Do not use all web skills for a narrow task.
- Do not run `brainstorm` when the user already gave a clear implementation command.
- Do not use `website-master-prompts` when the user wants local code or a developer plan.
- Do not use `frontend-design-planner` for pure visual direction without stack or implementation planning.
- Do not use `web-ui-designer` to choose package dependencies.
- Do not use `web-ui-designer` to choose frameworks, build tools, file trees, package commands, or implementation phases.
- Do not use `web-ui-reverse-engineer` to issue an acceptance verdict or silently redesign the inspected interface.
- Do not use `frontend-performance-audit` as a replacement for acceptance review or code implementation.
- Do not use `frontend-accessibility-audit` as a replacement for acceptance review or code implementation.

## Default Ambiguity Rule

If the user gives a broad but unclear Web/UI request, start with the earliest missing layer:

- existing artifact must be understood -> `web-ui-reverse-engineer`;
- missing concept/design -> `web-ui-designer`;
- design exists but build path is unclear -> `frontend-design-planner`;
- plan/design exists and user wants output -> `frontend-implementation`;
- performance is the question -> `frontend-performance-audit`;
- accessibility is the question -> `frontend-accessibility-audit`;
- requested output is a prompt -> `website-master-prompts`.
