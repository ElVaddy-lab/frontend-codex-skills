# Handoff Contracts

Use this when the orchestrator needs another skill.

## To `frontend-implementation`

Send:

- finding id and severity;
- route, viewport, state, and reproduction steps;
- expected and actual result;
- evidence;
- suspected owner area when known;
- exact re-check criteria.

Do not ask implementation to "polish QA issues" without concrete findings.

## To `frontend-acceptance-review`

Send:

- design/spec/plan source;
- implementation target;
- routes, viewports, states, and source authority;
- known smoke status and blockers;
- any conflicts between requirements and design.

Ask for acceptance verdict only after a testable implementation exists.

## To `frontend-performance-audit`

Send:

- target URL or local production build command;
- routes and devices;
- performance concern or release risk;
- available lab/field data;
- media, animation, bundle, or runtime areas of concern.

Do not request deep performance diagnosis from the orchestrator itself.

## To `frontend-accessibility-audit`

Send:

- target routes and critical flows;
- forms, menus, dialogs, auth, checkout, dashboard controls, or dynamic regions;
- required WCAG level if known;
- viewport, input methods, theme, and known accessibility concerns.

Do not treat automated scores as the final accessibility verdict.

## Re-check Handoff

After fixes, rerun:

- smoke checks for the changed routes;
- the exact failed specialist checks;
- affected responsive viewports;
- console/network checks;
- any primary flow touched by the fix.
