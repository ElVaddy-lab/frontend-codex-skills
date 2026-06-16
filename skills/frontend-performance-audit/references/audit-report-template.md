# Performance Audit Report Template

Use this structure for a full frontend performance audit. Remove sections that are outside the selected mode.

## 1. Audit Scope and Environment

- Target:
- Routes/pages:
- Build mode:
- Browser/tool:
- Device profile:
- Viewport:
- Network/CPU throttling:
- Run count:
- Field data available:
- Lab data available:
- Untested areas:

## 2. Executive Verdict

State whether the current performance is acceptable, risky, or failing for the inspected scope. Mention the top 3 constraints that matter most.

## 3. Metrics Summary

| Metric | Result | Target | Source | Status | Notes |
|---|---:|---:|---|---|---|
| LCP |  | <= 2.5s |  |  |  |
| INP |  | <= 200ms |  |  |  |
| CLS |  | <= 0.1 |  |  |  |
| TBT |  | Project budget |  |  |  |
| JS transfer |  | Project budget |  |  |  |

Use `UNKNOWN` when evidence is unavailable. Do not invent values.

## 4. Route and Device Coverage

List routes, viewports, states, and device profiles checked. Flag important routes not measured.

## 5. Highest-Impact Findings

| Priority | Finding | Evidence | User impact | Likely cause | Next action |
|---|---|---|---|---|---|

Prioritize by user impact and fix leverage, not by how easy the finding is to describe.

## 6. Core Web Vitals Diagnosis

Cover:

- LCP element and candidate chain;
- INP or TBT interactivity risk;
- CLS sources;
- FCP, TTFB, resource waterfall, and main-thread support metrics when relevant;
- lab versus field differences.

## 7. Bundle and Dependency Diagnosis

Cover:

- JS/CSS transfer and parsed size;
- route chunking;
- client-only code and hydration;
- unused dependencies;
- duplicated packages;
- third-party scripts;
- CSS delivery and unused CSS.

## 8. Media and Font Diagnosis

Cover:

- LCP image or video poster priority;
- responsive image sizing;
- modern formats;
- lazy-loading correctness;
- video loading strategy;
- font loading and fallback stability;
- preload/preconnect usage.

## 9. Runtime, Animation, and Scroll Diagnosis

Cover:

- long tasks;
- expensive renders;
- layout/recalc style;
- scroll listeners;
- animation properties;
- canvas/WebGL cost;
- reduced-motion handling;
- jank observed during interactions.

## 10. Caching and Delivery

Cover caching headers, CDN use, compression, immutable assets, server response time, static asset strategy, and edge/server rendering issues.

## 11. Budget Status

State explicit or recommended budgets and whether the inspected implementation passes, fails, or lacks evidence.

## 12. Prioritized Fix Backlog

Use implementation-ready tasks:

| Order | Task | Owner skill | Expected impact | Verification |
|---:|---|---|---|---|

Use `frontend-implementation` as the owner skill for code changes.

## 13. Unknowns and Risks

List missing credentials, missing production build, missing field data, untested devices, unmeasured routes, unavailable source maps, or unstable network conditions.

## 14. Handoff

Recommend:

- `frontend-implementation` for fixes;
- `frontend-acceptance-review` for final design/spec acceptance after performance fixes;
- another performance audit after material changes.
