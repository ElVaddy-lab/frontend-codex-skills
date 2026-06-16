---
name: frontend-accessibility-audit
description: Use when a finished or near-finished frontend, website, route, deployed URL, web app, dashboard, form, checkout, modal, menu, or interactive Web/UI flow needs an accessibility audit for WCAG 2.2, keyboard navigation, focus, ARIA/name-role-value, semantic HTML, labels, landmarks, headings, forms, contrast, motion, screen-reader flow, automated findings, and prioritized fixes. Do not use for design, performance, implementation planning, or code fixes unless requested after the audit.
---

# Frontend Accessibility Audit

## Overview

Audit Web/UI accessibility with evidence and user-flow context. Combine automated findings with manual keyboard, focus, semantic, contrast, form, motion, and assistive-technology checks, then produce prioritized findings that can be handed to `frontend-implementation` for fixes.

Default to the user's language. If the user asks in Ukrainian, write the audit report in Ukrainian.

## Position in the Workflow

Use this skill as the accessibility quality layer:

1. `frontend-implementation` builds the frontend.
2. `frontend-accessibility-audit` verifies accessibility risks and WCAG-related issues.
3. Findings return to `frontend-implementation` when fixes are requested.
4. `frontend-acceptance-review` remains the requirements/design acceptance gate.
5. `frontend-performance-audit` remains the performance gate.

This skill can also run on an existing live URL or local project before redesign or rebuild work. Keep the output diagnostic unless the user explicitly asks to fix issues.

## Audit Modes

- **Quick accessibility smoke audit**: obvious keyboard traps, missing labels, focus visibility, headings, landmarks, contrast red flags, broken forms, and automated findings.
- **WCAG 2.2 AA audit**: map findings to relevant WCAG 2.2 success criteria, prioritizing A and AA criteria unless the user asks for AAA.
- **Keyboard and focus audit**: tab order, focus visibility, focus management, skip links, overlays, menus, dialogs, keyboard shortcuts, and trap/escape behavior.
- **Forms and validation audit**: labels, descriptions, required fields, errors, suggestions, input purpose, autocomplete, redundant entry, and accessible authentication.
- **Screen-reader semantics audit**: names, roles, values, live regions, headings, landmarks, alternative text, status messages, and announcement flow.
- **Visual accessibility audit**: text contrast, non-text contrast, use of color, zoom/reflow, target size, text spacing, motion, and content on hover/focus.
- **Full accessibility audit**: all relevant layers, severity, evidence, WCAG mapping, and fix handoff.

Select the smallest mode that satisfies the request. Do not inflate a quick check into a full WCAG report unless the evidence shows material accessibility risk.

## Source Authority

Use the strongest available evidence:

1. Manual browser testing: keyboard navigation, focus behavior, forms, overlays, route changes, zoom/reflow, and reduced motion.
2. Accessibility tree and DOM inspection: names, roles, values, labels, landmarks, headings, live regions, and hidden/focusable conflicts.
3. Automated tools: axe, Lighthouse accessibility, browser accessibility audits, lint rules, and framework warnings.
4. Source inspection: semantic elements, ARIA, component libraries, form code, routing, focus management, and state logic.
5. Visual inspection: contrast, focus indicators, target size, layout at zoom, text spacing, motion, and hover/focus content.

State route, viewport, browser, zoom level, theme, input method, state, credentials/role, and tool used. Automated tools are useful but cannot prove full accessibility.

## Core Workflow

1. **Inventory the target**: identify URL or local route, user flow, component states, forms, overlays, themes, target browsers/devices, and available commands.
2. **Choose audit mode**: define scope, WCAG level, routes, states, and what will not be tested.
3. **Run or inspect the app**: prefer a real rendered page. Record build/start limitations when local.
4. **Run automated checks when available**: collect violations but do not stop there. Load `references/automated-tools.md`.
5. **Test keyboard and focus**: verify tab order, focus visibility, traps, skip links, dialogs, menus, and route changes. Load `references/keyboard-focus.md`.
6. **Inspect semantics and ARIA**: verify accessible names, roles, values, landmarks, headings, live regions, and native HTML usage. Load `references/aria-semantics.md`.
7. **Inspect forms and errors**: verify labels, descriptions, autocomplete, validation, required state, suggestions, error association, and accessible authentication. Load `references/forms-validation.md`.
8. **Inspect visual accessibility**: check text and non-text contrast, target size, zoom/reflow, text spacing, use of color, reduced motion, and hover/focus content. Load `references/visual-contrast-motion.md`.
9. **Map WCAG relevance**: map findings to relevant criteria without overclaiming conformance. Load `references/wcag-2-2-checklist.md`.
10. **Classify findings**: assign severity, confidence, evidence, affected users, likely cause, and fix owner. Load `references/severity-and-verdict.md`.
11. **Write the report**: use `references/audit-report-template.md`.
12. **Hand off fixes**: recommend `frontend-implementation` with specific tasks when code changes are needed. Load `references/handoff-to-implementation.md`.

## Evidence Rules

- Do not claim WCAG conformance from automated tools alone.
- Do not report vague accessibility concerns without route, element, state, expected behavior, actual behavior, and evidence.
- Do not use ARIA to replace native HTML when a native element or attribute provides the correct semantics and behavior.
- Do not mark a keyboard path as passing until focus order, visible focus, activation, escape/close behavior, and focus return are checked where relevant.
- Do not treat screen-reader behavior as verified unless an accessibility tree, screen-reader test, or equivalent evidence supports it.
- Do not treat color contrast as sufficient when state, focus, target size, text spacing, or motion still blocks users.
- Do not fix code in audit-only mode. If the user asks for fixes, complete the audit first and then hand off to `frontend-implementation`.

## Output Contract

Unless the user asks for a shorter format, return:

1. Audit scope and environment.
2. Executive accessibility verdict.
3. WCAG coverage summary.
4. Route, viewport, state, and input coverage.
5. Highest-impact findings.
6. Keyboard and focus findings.
7. Semantics, ARIA, and screen-reader findings.
8. Forms, validation, and error findings.
9. Visual accessibility findings.
10. Motion, timing, and dynamic content findings.
11. Automated-tool findings and manual confirmation status.
12. Prioritized fix backlog.
13. Unknowns and untested areas.
14. Handoff recommendation.

Every P0/P1/P2 finding must include evidence, affected users, WCAG relevance, suspected cause, and a concrete next action.

## Boundaries

- Use `frontend-acceptance-review` for design/spec acceptance verdicts.
- Use `frontend-performance-audit` for Core Web Vitals, bundle, runtime, and media/font performance.
- Use `frontend-implementation` for code changes and accessibility fixes.
- Use `frontend-design-planner` when the user needs a rebuild plan or stack choice.
- Use this skill for accessibility diagnosis, WCAG mapping, severity, and prioritized remediation guidance.

## Reference Files

- Load `references/audit-report-template.md` for the canonical report.
- Load `references/wcag-2-2-checklist.md` before mapping findings to WCAG.
- Load `references/keyboard-focus.md` for tab order, focus, skip links, dialogs, menus, and keyboard traps.
- Load `references/aria-semantics.md` for semantic HTML, ARIA, accessible names, landmarks, headings, and live regions.
- Load `references/forms-validation.md` for forms, validation, autocomplete, errors, and authentication.
- Load `references/visual-contrast-motion.md` for contrast, use of color, target size, zoom, text spacing, and motion.
- Load `references/automated-tools.md` when interpreting axe, Lighthouse, lint, or browser accessibility results.
- Load `references/severity-and-verdict.md` before assigning priorities or audit verdict.
- Load `references/handoff-to-implementation.md` when producing fix tasks.

## Common Mistakes

- Treating a green Lighthouse accessibility score as a complete audit.
- Reporting ARIA issues without checking native HTML alternatives.
- Ignoring keyboard escape, focus return, and focus trapping in dialogs and menus.
- Checking only the default state and missing loading, error, disabled, selected, expanded, collapsed, and validation states.
- Missing that a visually present label is not programmatically associated.
- Ignoring zoom, reflow, reduced motion, target size, and touch input.
- Reporting contrast without specifying foreground, background, text size, state, and threshold.
- Calling a screen-reader flow verified without inspecting announcements or the accessibility tree.
- Mixing code fixes into an audit-only pass.
