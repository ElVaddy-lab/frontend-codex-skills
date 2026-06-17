# QA Runbook

Use this order unless the user's constraints require a smaller pass.

## 1. Baseline Smoke

Check:

- install/build/test command availability;
- app starts or deployed URL loads;
- primary route renders nonblank;
- console and network have no release-blocking errors;
- core assets load;
- desktop and mobile layouts are not obviously broken;
- primary action can be reached.

## 2. Specialist Gates

Run selected gates after smoke succeeds:

- acceptance after design/spec artifacts are identified;
- accessibility after interactive states and critical flows are available;
- performance on production build or deployed URL when possible.

If smoke fails, do not waste time on deeper gates until the blocker is addressed unless the user asks for diagnosis of that blocker.

## 3. Findings Consolidation

Normalize findings into:

- `P0`: blocks release or primary flow.
- `P1`: serious issue for critical route, accessibility, performance, or acceptance.
- `P2`: important but non-blocking.
- `P3`: polish or observation.

Keep each finding tied to a gate, route, viewport, evidence, and fix owner.

## 4. Fix Loop

When fixes are requested:

1. Send concrete findings to `frontend-implementation`.
2. Re-run the exact failed checks.
3. Re-run smoke to catch regressions.
4. Re-run specialist gate only for affected area unless risk requires a full pass.
5. Report resolved, remaining, and newly introduced issues separately.
