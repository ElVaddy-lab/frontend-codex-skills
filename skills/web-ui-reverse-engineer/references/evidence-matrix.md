# Evidence Matrix

Use this reference to keep claims tied to source authority.

## Evidence Types

| Evidence | Proves well | Does not prove |
| --- | --- | --- |
| Screenshot/mockup | Visible hierarchy, composition, approximate spacing, visible states | Exact font family, DOM, hidden states, dependencies |
| Figma | Authored dimensions, variables, styles, component variants, constraints | Current production behavior or stale/overridden implementation |
| Runtime/live URL | Rendered DOM, computed styles, loaded assets, route behavior, tested states | Untested roles, hidden branches, design intent |
| Source code | Defined components, styles, routes, state/data, dependencies | Active rendering unless usage is verified |
| Video walkthrough | Temporal behavior, scroll, transitions, interaction sequence | Exact implementation values or complete state coverage |

## Claim Labels

Use these when useful:

- `authored`: from Figma/design source.
- `defined`: from code/config.
- `rendered`: from runtime/computed output.
- `observed`: from screenshot/video/manual visual inspection.
- `inferred`: analyst interpretation from patterns.

## Conflict Reporting

When evidence conflicts, report:

- source A and value;
- source B and value;
- context for each source;
- likely explanation, with confidence;
- which source should guide the requested next step.

## Source Reference Pattern

Prefer compact evidence notes:

```text
Evidence: route `/pricing`, 1440px viewport, computed `.pricing-card`, HIGH CONFIDENCE.
Evidence: Figma frame `Checkout / Mobile`, authored variable `space.4`, EXACT.
Evidence: screenshot `home-desktop.png`, hero region, INFERRED.
```
