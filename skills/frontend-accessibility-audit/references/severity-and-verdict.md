# Severity and Verdict

## Severity

### P0 - Critical

Use when users cannot complete a core task:

- keyboard trap prevents escape or completion;
- primary action cannot be reached or activated by keyboard;
- authentication, checkout, save, submit, or navigation is blocked;
- essential content is unavailable to assistive technology;
- severe flashing or motion creates safety risk.

### P1 - High

Use when a major barrier affects important flows:

- missing labels on critical form fields;
- focus is invisible or obscured in a key flow;
- modal/menu/popover focus management is broken;
- errors are not associated or announced;
- key controls have no accessible name;
- contrast failure affects important text or controls.

### P2 - Medium

Use when the issue is material but not blocking alone:

- heading order harms navigation;
- non-critical icon button lacks a label;
- target size is small in a secondary area;
- status update is not announced but has visible fallback;
- redundant or noisy landmarks.

### P3 - Low

Use for polish, maintainability, or minor risk:

- minor landmark naming cleanup;
- alt text could be more descriptive;
- non-critical contrast margin is weak;
- documentation or test coverage gap.

## Audit Verdict

- `PASS`: no unresolved P0/P1 findings in tested scope, P2/P3 items are bounded, and key user flows were manually checked.
- `RISK`: evidence is incomplete or P2 findings may materially affect users in untested states.
- `FAIL`: any unresolved P0/P1 exists, or multiple P2 findings collectively block or seriously degrade access.
- `BLOCKED`: audit cannot test enough because target, credentials, tooling, or key states are unavailable.

This verdict is accessibility-specific. Do not use it as design acceptance, performance acceptance, or legal compliance certification.

## Confidence

- `HIGH`: reproduced manually or confirmed by multiple evidence sources.
- `MEDIUM`: tool finding plus strong DOM/source evidence.
- `LOW`: plausible issue but needs additional manual or assistive-technology validation.

Do not overstate low-confidence findings.
