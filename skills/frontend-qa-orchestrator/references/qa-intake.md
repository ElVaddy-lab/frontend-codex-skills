# QA Intake

Use this before selecting QA gates.

## Required Intake

Record:

- target: local project, local URL, deployed URL, route, branch, or build artifact;
- current state: finished, near-finished, fix branch, release candidate, or regression check;
- source artifacts: design, Figma, screenshot, brief, specification, approved plan, previous audit findings, or issue;
- route coverage: primary route, secondary routes, critical flow, authenticated states, forms, checkout, dashboard, modal, menu, or tool state;
- environment: framework, package manager, build command, test command, start/preview command, browser, viewport, device, theme, locale, and credentials;
- risk level: demo, internal review, production release, paid traffic, ecommerce checkout, authenticated app, or compliance-sensitive UI;
- requested scope: quick smoke, release QA, acceptance, performance, accessibility, regression, or fix re-check.

## Source Authority

- Requirements and acceptance criteria control expected behavior.
- Design/Figma/screenshots control visual fidelity expectations.
- Approved technical plan controls stack, files, dependencies, and verification commands.
- Previous audit findings control fix re-check scope.
- Running app evidence controls current behavior.

If sources conflict, record the conflict and do not treat it as an implementation failure until the expected source is clear.

## Blockers

Use `BLOCKED` when these prevent meaningful QA:

- app cannot build, start, or be reached;
- required credentials, routes, source artifacts, or design references are missing;
- the requested gate requires a tool or environment that is unavailable;
- the user asks for release verdict but no testable implementation exists.
