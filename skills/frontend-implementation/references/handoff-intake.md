# Handoff Intake

Use this reference before editing when the request includes a design brief, technical plan, screenshot, Figma design, written specification, or prior audit findings.

## Intake Order

1. Identify the authoritative source: user request, approved design brief, approved technical plan, mockup, current codebase, or audit findings.
2. Extract must-preserve constraints:
   - product type, user goal, and primary action;
   - visual direction, first viewport, IA, and non-goals;
   - chosen stack, package manager, file tree, dependencies, implementation phases;
   - component inventory, states, motion, responsive behavior, and accessibility constraints;
   - verification commands, deployment expectations, and audit handoffs.
3. Inspect the current project before editing: package files, lockfiles, routes/pages, styling system, component folders, assets, and test scripts.
4. Translate the contract into concrete files and UI surfaces, then implement.

## Upstream Status Handling

- `Planner-ready` or `Implementation-ready`: implement according to the brief/plan.
- `Needs design brief`: route to `web-ui-designer` unless the user explicitly says to build with assumptions.
- `Needs reverse engineering`: route to `web-ui-reverse-engineer` unless the user explicitly says to build from current assumptions.
- `Prompt-ready`: route to `website-master-prompts` unless the user now asks for local code.
- `Audit-ready after build`: implement now, then name the future audit gate.

## Contract Preservation

- Preserve explicit stack and "no stack" constraints.
- Preserve visual non-goals and banned generic patterns.
- Preserve design-specific first viewport composition.
- Preserve required controls and states; do not collapse app/tool UI into a marketing page.
- If implementation must deviate, document the reason in the final response.

## Missing Context

Make minimal assumptions only when the user explicitly asks to build anyway. Record assumptions in the final response and keep them easy to revise.
