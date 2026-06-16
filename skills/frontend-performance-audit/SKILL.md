---
name: frontend-performance-audit
description: Use when a finished or near-finished frontend, website, route, local build, deployed URL, or Web/UI project needs a performance audit focused on Core Web Vitals, Lighthouse/PageSpeed evidence, bundle cost, JavaScript runtime work, media and font loading, animation or scroll cost, caching, performance budgets, and prioritized findings. Do not use for visual acceptance review, initial design, implementation planning, or directly fixing code unless the user explicitly asks after the audit.
---

# Frontend Performance Audit

## Overview

Audit frontend performance with evidence, not vibes. Measure or inspect the current implementation, separate lab and field signals, identify the highest-impact bottlenecks, and produce prioritized findings that can be handed to `frontend-implementation` for fixes.

Default to the user's language. If the user asks in Ukrainian, write the audit report in Ukrainian.

## Position in the Workflow

Use this skill as the production-quality performance layer:

1. `frontend-implementation` builds the frontend.
2. `frontend-performance-audit` measures and diagnoses performance.
3. Findings return to `frontend-implementation` when fixes are requested.
4. `frontend-acceptance-review` remains the requirements/design acceptance gate.

This skill may also run on an existing live URL or local project before redesign or rebuild work. In that case, keep the output diagnostic and hand off to `web-ui-reverse-engineer`, `frontend-design-planner`, or `frontend-implementation` only when the next action is clear.

## Modes

- **Quick smoke audit**: obvious regressions, failed assets, console errors, page weight, and one desktop/mobile lab pass.
- **Core Web Vitals audit**: LCP, INP, CLS, supporting metrics, lab/field distinction, and route-level diagnosis.
- **Bundle audit**: JavaScript/CSS size, dependency cost, code splitting, unused code, hydration/client work, and route chunks.
- **Media/font audit**: images, video, responsive sources, lazy loading, preloads, font loading, layout stability, and render blocking.
- **Runtime and animation audit**: long tasks, main-thread work, scroll handlers, layout thrash, heavy animation, compositing, and reduced-motion cost.
- **Full performance audit**: all relevant layers, budgets, priorities, and handoff.

Select the smallest mode that satisfies the request. Do not inflate a quick check into a full report unless the evidence shows material risk.

## Source Authority

Use the strongest available evidence:

1. Field data: CrUX, RUM, analytics, Search Console, or production monitoring.
2. Lab data: Lighthouse, PageSpeed Insights lab, WebPageTest, Chrome DevTools performance traces, Playwright/browser measurements.
3. Build artifacts: bundle analyzer output, framework build report, route chunks, source maps, dependency graph.
4. Source inspection: code, styles, asset imports, font declarations, caching headers, image usage, animation code.
5. Visual inspection: screenshots and videos for layout shifts, blank states, jank, and perceived loading.

Always state the environment: route, device profile, viewport, network throttling, CPU throttling, browser, run count, build mode, and whether data is field or lab.

## Core Workflow

1. **Inventory the target**: identify URL or local route, project type, package manager, build command, dev/start command, target devices, and available performance artifacts.
2. **Choose audit mode**: define scope and what will not be measured.
3. **Build or run the app when local**: prefer production build/preview for performance checks. Record command results.
4. **Collect evidence**: use available tools and inspect files. Load `references/measurement-strategy.md`.
5. **Evaluate Core Web Vitals**: use LCP, INP, CLS, and supporting metrics correctly. Load `references/core-web-vitals.md`.
6. **Inspect payloads and dependencies**: analyze bundles, CSS, route chunks, unused code, third parties, and hydration/client work. Load `references/bundle-analysis.md`.
7. **Inspect media and fonts**: check image/video formats, dimensions, loading priority, preloads, font-display, layout stability, and render-blocking resources. Load `references/media-font-optimization.md`.
8. **Inspect runtime and motion**: check long tasks, expensive renders, scroll handlers, layout/recalc style, animation properties, canvas/WebGL, and reduced-motion behavior. Load `references/runtime-animation-cost.md`.
9. **Classify findings**: assign severity, confidence, evidence, user impact, likely root cause, and fix owner. Load `references/severity-and-budgets.md`.
10. **Write the report**: use `references/audit-report-template.md`.
11. **Hand off fixes**: recommend `frontend-implementation` with specific tasks when code changes are needed. Load `references/handoff-to-implementation.md`.

## Evidence Rules

- Do not report a Lighthouse score without the route, device profile, throttling, and build mode.
- Do not treat Lighthouse as a field substitute. Lab results diagnose, field data proves real-user experience.
- Do not claim INP from Lighthouse alone. Use field/RUM data for INP; use TBT as a lab proxy for interactivity risk.
- Do not assign performance budgets as failures unless a budget is explicit or this skill defines a recommended budget for the project type.
- Do not optimize for score theater. Prioritize user impact, route importance, and likely effort.
- Do not recommend rewriting frameworks before identifying concrete bottlenecks.
- Do not collapse accessibility or design acceptance into performance findings unless they directly affect performance.
- Do not fix code in audit-only mode. If the user asks for fixes, complete the audit first and then hand off to `frontend-implementation`.

## Output Contract

Unless the user asks for a shorter format, return:

1. Audit scope and environment.
2. Executive verdict.
3. Metrics summary.
4. Route and device coverage.
5. Highest-impact findings.
6. Core Web Vitals diagnosis.
7. Bundle and dependency diagnosis.
8. Media and font diagnosis.
9. Runtime, animation, and scroll diagnosis.
10. Caching and delivery observations.
11. Performance budget status.
12. Prioritized fix backlog.
13. Unknowns and untested areas.
14. Handoff recommendation.

Every P0/P1/P2 finding must include evidence, impact, suspected cause, and a concrete next action.

## Boundaries

- Use `frontend-acceptance-review` for design/spec acceptance verdicts.
- Use `frontend-implementation` for code changes and optimization fixes.
- Use `frontend-design-planner` when the user needs a rebuild plan or stack choice.
- Use `web-ui-reverse-engineer` when the first task is understanding an existing interface's component/design system.
- Use this skill for performance diagnosis, budgets, and prioritized optimization guidance.

## Reference Files

- Load `references/audit-report-template.md` for the canonical report.
- Load `references/measurement-strategy.md` before choosing tools or interpreting results.
- Load `references/core-web-vitals.md` for current metric semantics and thresholds.
- Load `references/bundle-analysis.md` for JavaScript, CSS, dependency, and hydration analysis.
- Load `references/media-font-optimization.md` for image, video, and font loading checks.
- Load `references/runtime-animation-cost.md` for main-thread, rendering, animation, and scroll diagnostics.
- Load `references/severity-and-budgets.md` before assigning priority or budget status.
- Load `references/handoff-to-implementation.md` when producing fix tasks.

## Common Mistakes

- Optimizing the Lighthouse score instead of user-visible bottlenecks.
- Testing a dev server and presenting results as production performance.
- Ignoring mobile CPU/network constraints.
- Missing that LCP is an image, video poster, large text block, or late-rendered client component.
- Treating JavaScript size as the only performance problem.
- Forgetting CLS from late fonts, ads, embeds, cookie banners, skeletons, or unreserved media.
- Recommending lazy loading for above-the-fold LCP assets.
- Ignoring third-party scripts, analytics, tags, embeds, and A/B testing tools.
- Reporting findings without reproduction context or fix ownership.
