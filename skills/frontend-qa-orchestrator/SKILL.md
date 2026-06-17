---
name: frontend-qa-orchestrator
description: Use when a finished or near-finished frontend, website, route, local build, deployed URL, Web/UI app, dashboard, form, checkout, or interactive flow needs coordinated QA before release, including smoke checks, build/test/browser verification, gate selection, go/no-go status, evidence tracking, regression re-checks, and routing to frontend-acceptance-review, frontend-performance-audit, frontend-accessibility-audit, or frontend-implementation. Do not use for design, planning, implementation, deep domain audits, or code fixes.
---

# Frontend QA Orchestrator

## Overview

Coordinate frontend QA gates for a finished or near-finished implementation. Select the right checks, sequence them, collect evidence, decide release status, and route findings to the correct specialist skill.

Default to the user's language. If the user asks in Ukrainian, write the QA orchestration report in Ukrainian.

## Position in the Workflow

Use this skill after there is something testable:

1. `frontend-implementation` builds or fixes the frontend.
2. `frontend-qa-orchestrator` selects and sequences QA gates.
3. `frontend-performance-audit`, `frontend-accessibility-audit`, and `frontend-acceptance-review` run when their gates are selected.
4. Findings return to `frontend-implementation` when fixes are requested.
5. `frontend-qa-orchestrator` defines the re-check plan and final go/no-go status.

This skill is a coordinator, not a replacement for domain audits or code fixes.

## QA Modes

Select the smallest mode that satisfies the request:

- **Release QA orchestration**: full gate selection, evidence ledger, go/no-go status, and handoff plan.
- **Quick QA smoke**: build/test/browser smoke, route availability, console/network, responsive sanity, and obvious blockers.
- **Acceptance coordination**: route design/spec verification to `frontend-acceptance-review`.
- **Performance coordination**: route Core Web Vitals, Lighthouse/PageSpeed, bundle, media/font, runtime, and animation diagnosis to `frontend-performance-audit`.
- **Accessibility coordination**: route WCAG, keyboard, focus, ARIA, labels, forms, contrast, motion, and screen-reader diagnosis to `frontend-accessibility-audit`.
- **Fix-loop coordination**: summarize findings for `frontend-implementation`, then define re-check gates after fixes.

## Core Workflow

1. **Intake the target**: identify URL or local app, routes, source artifacts, states, devices, commands, credentials, release risk, and requested scope. Load `references/qa-intake.md`.
2. **Select gates**: choose smoke, acceptance, performance, accessibility, regression, and re-check gates. Load `references/gate-routing-matrix.md`.
3. **Sequence QA**: run or request build/test/browser smoke first, then selected domain gates, then acceptance verdict, then fix loop. Load `references/qa-runbook.md`.
4. **Track evidence**: record commands, routes, viewports, screenshots, console/network, audit outputs, blockers, and skipped checks. Load `references/evidence-ledger-template.md`.
5. **Route specialist work**: hand domain-specific checks to the matching audit or acceptance skill. Do not perform deep audits inside this skill.
6. **Classify status**: assign `GO`, `GO WITH MINOR ISSUES`, `NO-GO`, or `BLOCKED`.
7. **Prepare handoff**: send actionable fix findings to `frontend-implementation` and define re-check criteria. Load `references/handoff-contracts.md`.
8. **Write report**: use `references/orchestrator-report-template.md`.

## Gate Selection Rules

- Use `frontend-acceptance-review` when the question is whether the build matches a design, Figma file, screenshot, brief, specification, approved plan, or acceptance criteria.
- Use `frontend-performance-audit` when performance, Core Web Vitals, Lighthouse/PageSpeed, bundle cost, media/font loading, runtime jank, animation cost, caching, or budgets are in scope.
- Use `frontend-accessibility-audit` when accessibility, WCAG, keyboard, focus, ARIA, labels, landmarks, forms, contrast, motion, or screen-reader flow are in scope.
- Use `frontend-implementation` when fixes are requested or when concrete findings already identify what to change.
- Keep smoke QA inside this skill only for basic build, test, route, console, network, responsive, and obvious UX blockers.

## Verdict Rules

- `GO`: no critical blockers remain and selected gates passed or are not material.
- `GO WITH MINOR ISSUES`: only non-blocking P2/P3 issues remain, with accepted risk.
- `NO-GO`: P0/P1 findings, failed acceptance blockers, broken primary flow, inaccessible critical path, severe performance blocker, or release-critical regression remains.
- `BLOCKED`: required access, build target, credentials, source artifacts, route, environment, or app startup is unavailable.

Do not issue `GO` when selected gates are blocked or untested. State limitations explicitly.

## Output Contract

Unless the user asks for a shorter format, return:

1. QA profile and target.
2. Source artifacts and authority.
3. Selected QA gates.
4. Execution order.
5. Evidence ledger.
6. Findings by gate.
7. Go/no-go status.
8. Blockers and untested areas.
9. Handoff plan.
10. Re-check plan after fixes.

## Boundaries

- Do not create design direction; use `web-ui-designer`.
- Do not create an implementation plan; use `frontend-design-planner`.
- Do not write code or fix issues; use `frontend-implementation`.
- Do not perform deep performance diagnosis; use `frontend-performance-audit`.
- Do not perform deep accessibility diagnosis; use `frontend-accessibility-audit`.
- Do not replace acceptance review; use `frontend-acceptance-review` for design/spec verdicts.
- Do not produce copy-ready generator prompts; use `website-master-prompts`.

## Reference Files

- Load `references/qa-intake.md` before selecting gates.
- Load `references/gate-routing-matrix.md` when deciding which checks or skills are required.
- Load `references/qa-runbook.md` when sequencing QA passes.
- Load `references/evidence-ledger-template.md` when collecting or reporting evidence.
- Load `references/orchestrator-report-template.md` for the canonical output structure.
- Load `references/handoff-contracts.md` when findings need fixes or specialist audit handoff.

## Common Mistakes

- Running acceptance, performance, and accessibility checks in a random order.
- Treating a passing build as release-ready.
- Duplicating a deep audit instead of routing to the specialist skill.
- Issuing a go/no-go verdict without evidence or untested-area disclosure.
- Sending vague findings to implementation without route, viewport, expected result, actual result, and re-check criteria.
- Marking blocked checks as passed.
