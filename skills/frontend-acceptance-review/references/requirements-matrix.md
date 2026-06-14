# Requirements Matrix

Convert source material into independently testable requirements before judging the implementation.

## Requirement Types

- `FUNCTIONAL`: navigation, controls, forms, data, integrations, validation.
- `VISUAL`: layout, hierarchy, type, color, media, spacing, surfaces.
- `RESPONSIVE`: breakpoint behavior, reflow, ordering, mobile navigation.
- `STATE`: loading, empty, error, success, disabled, hover, focus, active.
- `ACCESSIBILITY`: semantics, labels, keyboard, contrast, reduced motion.
- `PERFORMANCE`: explicit budgets or obvious acceptance-impacting regressions.
- `CONTENT`: required copy, labels, values, assets, localization.
- `TECHNICAL`: stack, route, browser support, build, dependency constraints.

## Extraction Rules

1. Give each requirement a stable ID such as `REQ-01`.
2. Preserve the source wording in short form.
3. Record the exact source: document section, issue, message, design frame, or plan step.
4. Define an observable pass condition.
5. Mark assumptions as `INFERRED`; do not present them as explicit requirements.
6. Split combined statements when parts can pass or fail independently.
7. Record contradictions as `SPEC CONFLICT`.

## Matrix Fields

| Field | Meaning |
|---|---|
| ID | Stable requirement identifier |
| Requirement | Testable statement |
| Source | Where it came from |
| Type | Requirement category |
| Explicitness | `EXPLICIT` or `INFERRED` |
| Test method | Browser, screenshot, command, code inspection, or measurement |
| Status | Acceptance status |
| Evidence | Concrete proof |

## Rules

- Do not fail implementation for an inferred preference unless it breaks usability or an explicit design relationship.
- Do not mark a requirement `PASS` based only on source code when rendered behavior is testable.
- Do not mark a visual requirement `PASS` based only on a screenshot if the required interaction or state was not exercised.
- Use `NOT TESTABLE` rather than guessing.
