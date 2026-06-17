# Handoff Contracts

Use this reference when the design brief feeds another skill or workflow.

## Handoff Status

End substantial briefs with one status:

- `Planner-ready`: send to `frontend-design-planner` for stack, dependencies, file structure, implementation phases, testing, deployment, and SEO/content planning.
- `Implementation-ready`: send to `frontend-implementation` only when the design is approved and the user explicitly wants code.
- `Prompt-ready`: send to `website-master-prompts` when the deliverable is a copy-ready external generator prompt.
- `Needs reverse engineering`: send to `web-ui-reverse-engineer` when the redesign depends on an existing site, Figma, screenshot, live URL, or codebase that has not been analyzed.
- `Needs product input`: ask for missing product/action/brand constraints when assumptions would change the IA.

## To `frontend-design-planner`

Include:

- brief mode and product scenario;
- audience, business goal, primary user action;
- IA and first viewport;
- visual system decisions;
- component and state expectations;
- motion and responsive behavior;
- accessibility and UX constraints;
- explicit non-goals and banned generic patterns.

Do not include frameworks, package dependencies, file trees, build commands, or implementation phases.

## To `frontend-implementation`

Use only after the user approves the design or already has a plan. Include:

- the approved design brief;
- must-preserve visual and UX decisions;
- known assets or media requirements;
- responsive and state requirements;
- what must be verified visually after build.

## To `website-master-prompts`

Use when the user wants a generator prompt. Include:

- design direction;
- IA and first viewport;
- visual system;
- components/states;
- responsive and accessibility constraints;
- negative constraints that prevent generic output.

## To `web-ui-reverse-engineer`

Use when redesign quality depends on understanding an existing interface. Ask for or inspect the existing artifact first, then write a `redesign brief` from the evidence.
