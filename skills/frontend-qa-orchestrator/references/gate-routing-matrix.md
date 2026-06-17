# Gate Routing Matrix

Use this to decide which QA gates and specialist skills are required.

| User intent or risk | Gate | Route to |
| --- | --- | --- |
| "quick QA", "smoke test", "does it basically work" | Smoke QA | `frontend-qa-orchestrator` |
| release candidate, before production, final check | Smoke + selected domain gates + go/no-go | `frontend-qa-orchestrator` coordinates |
| matches design, Figma, screenshot, spec, plan, acceptance criteria | Acceptance review | `frontend-acceptance-review` |
| Core Web Vitals, Lighthouse, bundle, runtime, animation, media/font loading | Performance audit | `frontend-performance-audit` |
| WCAG, keyboard, focus, ARIA, labels, forms, contrast, screen reader | Accessibility audit | `frontend-accessibility-audit` |
| concrete QA findings need fixes | Fix implementation | `frontend-implementation` |
| fixes are complete | Regression re-check | `frontend-qa-orchestrator` plus affected specialist gates |
| app cannot run or access is missing | Blocker report | `frontend-qa-orchestrator` |

## Default Gate Set

For release QA, select:

- smoke QA always;
- acceptance review when a design, spec, brief, plan, or acceptance criteria exists;
- accessibility audit when the UI has forms, menus, modals, auth, checkout, dashboard controls, or public-facing release risk;
- performance audit when route speed, media, animation, third-party scripts, SEO, production release, or mobile experience matters.

## Avoid Over-Selection

- Do not run full performance audit for a copy-only change unless performance risk is material.
- Do not run full accessibility audit for a static visual-only internal prototype unless accessibility is requested or risk is high.
- Do not run acceptance review without an artifact to compare against; use smoke QA and state limitation.
