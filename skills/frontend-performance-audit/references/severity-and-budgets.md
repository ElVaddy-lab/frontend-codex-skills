# Severity and Budgets

## Severity

### P0 - Critical

Use when performance prevents core use:

- page is blank, crashes, or times out for the main route;
- primary action is unusable due to jank or delayed interaction;
- severe layout instability blocks reading or action;
- production asset failure removes essential content.

### P1 - High

Use when performance materially harms conversion, usability, or release quality:

- LCP, INP, or CLS clearly fails current good thresholds on a primary route;
- initial JS or third-party work blocks interaction on mobile;
- hero media or fonts cause major delayed rendering;
- repeated long tasks affect primary flows.

### P2 - Medium

Use when the issue is visible or risky but not release-blocking alone:

- oversized below-the-fold media;
- moderate bundle bloat;
- non-critical route chunk problem;
- avoidable font or CSS cost;
- minor scroll or animation jank.

### P3 - Low

Use for polish, maintenance, or monitoring:

- small unused dependency;
- low-risk cache header improvement;
- documentation or budget guardrail;
- non-critical lazy-loading cleanup.

## Recommended Budgets

Use project-specific budgets when provided. Otherwise use these as starting points, not universal law:

| Context | Initial JS transfer | Initial CSS transfer | LCP | INP | CLS |
|---|---:|---:|---:|---:|---:|
| Static/marketing page | <= 170 KB | <= 60 KB | <= 2.5s | <= 200ms | <= 0.1 |
| Interactive app/dashboard | <= 250 KB | <= 80 KB | <= 2.5s | <= 200ms | <= 0.1 |
| Motion-heavy/3D page | Define per route | Define per route | <= 2.5s when content-critical | <= 200ms | <= 0.1 |

Document when a budget is recommended by this skill rather than supplied by the project.

## Budget Interpretation

- Route importance matters.
- Transfer size is not execution cost.
- Compression can hide parse/execute time.
- A larger bundle can be acceptable when the product genuinely needs it and interaction remains responsive.
- A small bundle can still be slow if it blocks render, hydrates too much, or runs expensive scripts.

## Verdict Language

- `PASS`: evidence meets explicit or recommended budgets for inspected scope.
- `RISK`: evidence is incomplete or borderline.
- `FAIL`: evidence shows material budget or Core Web Vitals failure.
- `BLOCKED`: audit cannot measure enough because the target, build, credentials, or tooling is unavailable.

Do not use acceptance verdicts here. This verdict is performance-specific.
