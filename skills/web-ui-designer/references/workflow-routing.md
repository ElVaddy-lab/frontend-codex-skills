# Web Workflow Routing

Use this reference for ambiguous or multi-step Web/UI requests where several local skills could apply.

## Intent Matrix

| User intent | Use first | Output |
| --- | --- | --- |
| Design direction, UX concept, visual system, layout idea | `web-ui-designer` | Design brief |
| Development plan, stack choice, dependencies, file structure | `frontend-design-planner` | Technical frontend plan |
| Build, implement, code, recreate, finish, make it work | `frontend-implementation` | Working frontend code and QA |
| Master prompt, prompt for site generation, AI generator prompt | `website-master-prompts` | Copy-ready generator prompt |
| Think through options, compare approaches, choose strategy | `brainstorm` | Options, tradeoffs, recommendation |

## Standard Pipeline

For broad "create a site/app from scratch" requests, route in this order unless the user asks to skip a step:

1. `web-ui-designer` for the design direction and UX/visual brief.
2. `frontend-design-planner` for stack, dependencies, file structure, components, and phases.
3. `frontend-implementation` for code, build, dev server, and browser QA.
4. `website-master-prompts` only if the requested deliverable is a prompt for another generator.

## Combined Requests

- **Design + plan**: use `web-ui-designer`, then hand off to `frontend-design-planner`.
- **Plan + implementation**: use `frontend-design-planner`, then hand off to `frontend-implementation`.
- **Design + prompt**: use `web-ui-designer`, then convert the approved direction with `website-master-prompts`.
- **Prompt only**: use `website-master-prompts` directly; do not create a full design brief first unless the prompt lacks concept direction.
- **Code now**: use `frontend-implementation` directly when the user explicitly asks to build and accepts local assumptions.

## Do Not Over-Route

- Do not use all web skills for a narrow task.
- Do not run `brainstorm` when the user already gave a clear implementation command.
- Do not use `website-master-prompts` when the user wants local code or a developer plan.
- Do not use `frontend-design-planner` for pure visual direction without stack or implementation planning.
- Do not use `web-ui-designer` to choose package dependencies.

## Default Ambiguity Rule

If the user gives a broad but unclear Web/UI request, start with the earliest missing layer:

- missing concept/design -> `web-ui-designer`;
- design exists but build path is unclear -> `frontend-design-planner`;
- plan/design exists and user wants output -> `frontend-implementation`;
- requested output is a prompt -> `website-master-prompts`.
