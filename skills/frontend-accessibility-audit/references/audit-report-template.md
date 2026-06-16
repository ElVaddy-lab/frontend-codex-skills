# Accessibility Audit Report Template

Use this structure for a full accessibility audit. Remove sections outside the selected mode.

## 1. Audit Scope and Environment

- Target:
- Routes/pages:
- User flows:
- Browser/tool:
- Viewports:
- Zoom/reflow level:
- Theme:
- Input methods:
- Assistive technology or accessibility tree evidence:
- Automated tools:
- Authentication/role:
- Untested areas:

## 2. Executive Verdict

State whether the inspected scope is acceptable, risky, or failing from an accessibility perspective. Mention the top barriers and whether they block core tasks.

## 3. WCAG Coverage Summary

| Area | Evidence | Status | Notes |
|---|---|---|---|
| Perceivable |  |  |  |
| Operable |  |  |  |
| Understandable |  |  |  |
| Robust |  |  |  |

Use `UNKNOWN` when evidence is unavailable. Do not invent conformance.

## 4. Route, State, and Input Coverage

List routes, components, states, keyboard paths, pointer paths, forms, overlays, and responsive/zoom conditions tested.

## 5. Highest-Impact Findings

| Priority | Finding | WCAG relevance | Evidence | Affected users | Likely cause | Next action |
|---|---|---|---|---|---|---|

Prioritize by blocked user task, legal/compliance risk, frequency, and fix leverage.

## 6. Keyboard and Focus

Cover:

- tab order;
- focus visibility;
- focus trap and return;
- keyboard activation;
- skip links;
- menus, tabs, dialogs, popovers, carousels, and custom controls;
- keyboard shortcuts;
- focus after route/state changes.

## 7. Semantics, ARIA, and Screen-Reader Flow

Cover:

- native HTML usage;
- accessible names;
- roles and values;
- landmarks;
- heading hierarchy;
- alternative text;
- live regions and status messages;
- hidden/focusable conflicts;
- announcements and reading order where tested.

## 8. Forms, Validation, and Errors

Cover labels, descriptions, required fields, autocomplete, input purpose, validation timing, error association, error suggestions, redundant entry, authentication, and recovery paths.

## 9. Visual Accessibility

Cover text contrast, non-text contrast, use of color, target size, spacing, zoom/reflow, text resizing, hover/focus content, motion, and flashing risk.

## 10. Automated Findings

List automated tool results separately:

| Tool | Finding | Manual status | Notes |
|---|---|---|---|

Use `confirmed`, `false positive`, `needs manual check`, or `not reproducible`.

## 11. Prioritized Fix Backlog

| Order | Task | Owner skill | Expected impact | Verification |
|---:|---|---|---|---|

Use `frontend-implementation` as the owner skill for code changes.

## 12. Unknowns and Risks

List missing credentials, unavailable states, unavailable assistive technology, untested devices, inaccessible source code, or assumptions.

## 13. Handoff

Recommend:

- `frontend-implementation` for fixes;
- `frontend-acceptance-review` for final design/spec acceptance after accessibility fixes;
- another accessibility audit after material changes.
