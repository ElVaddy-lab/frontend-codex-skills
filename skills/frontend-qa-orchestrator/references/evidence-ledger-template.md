# Evidence Ledger Template

Use a compact table for every substantial QA pass.

| Gate | Target | Environment | Action | Evidence | Result | Owner |
| --- | --- | --- | --- | --- | --- | --- |
| Smoke | `/` | 1440x900, Edge | load route | screenshot, console clear | PASS | QA |
| Smoke | `/checkout` | 390x844, mobile emulation | submit empty form | validation missing | FAIL P1 | `frontend-implementation` |
| Performance | `/` | production build, mobile Lighthouse | lab run | LCP 4.1s | FAIL P1 | `frontend-performance-audit` |

## Evidence Types

Use:

- command output;
- build/test logs;
- screenshot or video path;
- console/network result;
- DOM or computed-style inspection;
- browser action and viewport;
- audit report section;
- source artifact reference;
- blocked-check reason.

## Evidence Rules

- Every P0/P1 finding needs reproduction context.
- Mark skipped checks as `NOT RUN` with reason.
- Mark unavailable checks as `BLOCKED` with next action.
- Do not summarize a specialist audit without linking the gate, route, and highest-severity findings.
