# Orchestrator Report Template

Use this structure for the final QA orchestration report.

## 1. QA Profile and Target

- Requested mode:
- Target:
- Release risk:
- Routes or flows:
- Environments:

## 2. Source Artifacts and Authority

List design, requirements, plans, prior findings, implementation target, and conflicts.

## 3. Selected QA Gates

State selected and skipped gates with reasons.

## 4. Execution Order

List the intended or completed order:

1. Smoke.
2. Specialist gates.
3. Acceptance verdict.
4. Fix handoff.
5. Re-check.

## 5. Evidence Ledger

Use the table from `evidence-ledger-template.md`.

## 6. Findings by Gate

Group by:

- Smoke.
- Acceptance.
- Accessibility.
- Performance.
- Regression.

For each finding include severity, evidence, expected result, actual result, and owner.

## 7. Go/No-Go Status

Use one:

- `GO`
- `GO WITH MINOR ISSUES`
- `NO-GO`
- `BLOCKED`

Explain the decisive reason in one paragraph.

## 8. Blockers and Untested Areas

List missing access, credentials, routes, viewports, source artifacts, tools, commands, or states.

## 9. Handoff Plan

Name the next skill and provide actionable scope.

## 10. Re-check Plan After Fixes

List the exact checks to rerun and the pass criteria.
