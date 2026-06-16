---
name: frontend-acceptance-review
description: Use when a finished or near-finished frontend must be checked against a supplied design, Figma file, screenshot, design brief, technical specification, acceptance criteria, or approved implementation plan. Prefer for release acceptance, visual fidelity review, responsive QA, requirements verification, and evidence-backed frontend audits. Do not use for initial design, implementation planning, ordinary debugging, or code changes without an acceptance review.
---

# Frontend Acceptance Review

## Overview

Audit a rendered frontend against the approved design and requirements. Compare what was requested, what was designed, and what was implemented, then return an evidence-backed acceptance verdict.

Default to `audit-only`. Do not edit code unless the user explicitly asks for fixes.

## Position in the Workflow

1. `web-ui-designer` defines the design direction.
2. `frontend-design-planner` defines the technical plan.
3. `frontend-implementation` builds the frontend.
4. `frontend-performance-audit` verifies production performance when Core Web Vitals, bundle cost, runtime smoothness, or media/font loading are in scope.
5. `frontend-acceptance-review` independently verifies the result against design and requirements.
6. Failed findings return to `frontend-implementation`; run the relevant audit again after fixes.

Do not replace the audit with implementation commentary or a generic code review.

## Inputs

Identify available evidence before testing:

- Design source: Figma, screenshots, mockups, image references, or design brief.
- Requirement source: technical specification, acceptance criteria, approved plan, issue, or user instructions.
- Implementation source: local project, running URL, route, component, build command, or deployed page.
- Target environments: required viewport sizes, browsers, devices, themes, and user states.

If an input is missing, continue with the testable scope and state the limitation. Do not invent missing requirements or claim pixel-perfect fidelity without a measurable design source.

## Source Authority

- Use requirements for behavior, content, integrations, constraints, and acceptance criteria.
- Use the design for layout, hierarchy, typography, color, media, spacing, surfaces, and visual states.
- Use the latest explicitly approved artifact when revisions exist.
- If sources conflict and no priority is defined, record a specification conflict. Do not count it as an implementation failure until the expected source is clarified.
- Treat reasonable responsive adaptation as valid when no breakpoint-specific design exists, provided content hierarchy and usability are preserved.

## Review Modes

### Audit Only

Use by default. Inspect, test, capture evidence, and report findings without modifying files.

### Audit and Fix

Use only when explicitly requested:

1. Complete the audit first.
2. Record the baseline verdict and findings.
3. Hand actionable findings to `frontend-implementation`.
4. Re-run the affected checks after fixes.
5. Report resolved, remaining, and newly introduced issues separately.

The same pass must not silently become both reviewer and implementer.

## Workflow

1. **Inventory inputs**: list the design, requirements, implementation target, available routes, and target environments.
2. **Extract requirements**: create a testable requirements matrix. Separate explicit requirements from inferred design expectations.
3. **Establish limitations**: identify missing assets, inaccessible design data, absent mobile mockups, unavailable credentials, or unsupported environments.
4. **Verify the project**: inspect relevant files and commands, start the application when needed, and record build/test status.
5. **Inspect rendered output**: use browser automation or an available browser tool. Check console, network, assets, interactions, and visual output.
6. **Compare visual fidelity**: match information architecture, first viewport, layout geometry, typography, spacing, color, surfaces, media, components, and states.
7. **Test responsive behavior**: check required breakpoints. At minimum use desktop and mobile; add tablet when layout behavior changes.
8. **Test functionality**: exercise required controls, navigation, forms, validation, states, keyboard behavior, and motion.
9. **Check acceptance quality**: inspect accessibility, reduced motion, obvious performance regressions, runtime errors, and broken resources.
10. **Classify findings**: assign status, severity, confidence, evidence, and ownership.
11. **Issue a verdict**: use only the verdict rules in `references/severity-and-verdict.md`.
12. **Recommend next action**: accept, accept with minor issues, reject for fixes, or mark blocked.

Load `references/acceptance-report-template.md` before writing the final report.

## Evidence Standard

Every `FAIL` or `PARTIAL` finding must include:

- Requirement or design reference.
- Expected result.
- Actual result.
- Reproduction context: route, viewport, state, and action.
- Evidence: screenshot, console/network output, DOM measurement, command result, or inspected file.
- Severity and confidence.
- Recommended correction.

Do not use vague findings such as "spacing feels off" or "make it more pixel-perfect." Name the element, relationship, and measurable difference when possible.

## Statuses

- `PASS`: requirement is met with sufficient evidence.
- `PARTIAL`: implemented but materially incomplete or inconsistent.
- `FAIL`: explicit requirement is not met.
- `NOT TESTABLE`: evidence or environment is unavailable.
- `NOT APPLICABLE`: requirement does not apply to the reviewed target.
- `SPEC CONFLICT`: approved sources disagree.

## Default Viewports

Use project-defined targets first. Otherwise check:

- Desktop: `1440 x 900`.
- Tablet: `768 x 1024` when layout changes between desktop and mobile.
- Mobile: `390 x 844`.

Add narrow mobile, wide desktop, dark mode, or authenticated states when the requirements make them material.

## Boundaries

- Do not design a replacement interface; use `web-ui-designer`.
- Do not create a technical implementation plan; use `frontend-design-planner`.
- Do not implement fixes during audit-only mode; use `frontend-implementation`.
- Do not reduce the review to lint/build status. A passing build does not prove design or requirements compliance.
- Do not reduce the review to screenshots. Visual similarity does not prove functional compliance.
- Do not report issues outside the supplied scope as acceptance failures; place useful extras under non-blocking observations.
- Do not assign exact pixel differences unless the compared viewport, scale, fonts, and assets support that precision.
- Do not perform a deep performance audit here. Record obvious performance regressions as quality observations, and use `frontend-performance-audit` when Core Web Vitals, Lighthouse/PageSpeed, bundle cost, media/font loading, or runtime jank require evidence-backed diagnosis.

## Reference Files

- Load `references/acceptance-report-template.md` for the canonical output structure.
- Load `references/requirements-matrix.md` when extracting and classifying requirements.
- Load `references/visual-fidelity-checklist.md` for design comparison.
- Load `references/responsive-checklist.md` for viewport and layout validation.
- Load `references/functional-checklist.md` for interactions and UI-state testing.
- Load `references/severity-and-verdict.md` before assigning priorities or the final verdict.

## Common Mistakes

- Auditing without first defining which artifacts are authoritative.
- Calling inferred preferences explicit requirements.
- Claiming pixel-perfect accuracy from a screenshot with unknown dimensions.
- Ignoring mobile, loading, error, empty, focus, disabled, and reduced-motion states.
- Mixing implementation fixes into an independent audit.
- Returning a list of opinions without reproduction evidence.
- Marking the build accepted while P0 or P1 findings remain.
