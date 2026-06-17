# Handoff Contracts

Use this reference when the planning output must feed another skill or workflow.

## Handoff Status

End substantial plans with one status:

- `Implementation-ready`: the plan has enough detail for `frontend-implementation`.
- `Needs design brief`: the visual direction, IA, or UX decisions are not defined; route to `web-ui-designer`.
- `Prompt-ready`: the user wants an external generator prompt; route to `website-master-prompts`.
- `Audit-ready after build`: the implementation does not exist yet, but the plan defines what later audits should check.

## To `frontend-implementation`

Include:

- chosen stack and install commands;
- framework-specific file tree;
- component map with responsibilities;
- design tokens and asset strategy;
- data/state/form requirements;
- routing and metadata requirements;
- animation and interaction rules;
- responsive behavior;
- implementation phases;
- verification commands and browser QA expectations.

Do not hand off if the design direction is still speculative.

## To Audit Skills

Use audit skills only for finished or near-finished frontends:

- `frontend-performance-audit`: Core Web Vitals, Lighthouse/PageSpeed, media, fonts, bundle/runtime, animation cost, caching, and budgets.
- `frontend-accessibility-audit`: WCAG, keyboard, focus, ARIA/name-role-value, forms, landmarks, contrast, motion, and screen-reader flow.
- `frontend-acceptance-review`: requirements/design/implementation comparison with evidence and acceptance verdict.

In the plan, name the future audit gates but do not duplicate their full checklists.

## To `website-master-prompts`

Route here when the deliverable is a copy-ready prompt for another AI builder. Provide:

- product type and audience;
- approved design direction;
- stack or no-stack preference;
- section/component inventory;
- interaction and responsive expectations;
- constraints and banned generic patterns.

## To `web-ui-designer`

Route here when the user provides only an idea, business goal, niche, or vague taste reference. Request a design brief before technical planning.
