# Style Lane Routing

Use one primary style lane. If another style is useful, record it as a secondary influence or constraint, not as a second active style system.

## Lanes

| Lane | Use when | Avoid when |
| --- | --- | --- |
| `design-taste-frontend` | Balanced premium frontend design, SaaS, dashboards, apps, restrained landing pages, production UI discipline | The user explicitly wants a narrower taste lane |
| `gpt-taste` | GSAP-heavy, Awwwards-style, scroll-driven, pinned, scrubbed, editorial, experimental motion-led sites | Operational tools, dense dashboards, or accessibility-sensitive flows |
| `high-end-visual-design` | Existing direction needs premium typography, surfaces, spacing, visual depth, micro-interactions, and polish | There is no underlying design concept or IA yet |
| `minimalist-ui` | User explicitly asks for minimal, clean, editorial, document-style, warm monochrome, muted pastel, low-shadow, workspace-like UI | Ecommerce/product inspection or visual signature requires richer media |
| `industrial-brutalist-ui` | User explicitly asks for industrial, brutalist, tactical, terminal, telemetry, declassified blueprint, cyber/security, raw mechanical aesthetics | Consumer trust, healthcare, finance, or soft service experiences need calm credibility |

## Routing Rules

- Default to `design-taste-frontend` for production-quality UI unless the user gives a stronger taste signal.
- Use `gpt-taste` only when motion is the concept, not merely an effect.
- Use `high-end-visual-design` as a polish layer after IA and product scenario are clear.
- Do not trigger all style skills because the user says "premium" or "modern".
- Record the lane in the brief only when it changes the design language or handoff constraints.

## Secondary Influence Pattern

Use this wording:

```text
Primary style lane: design-taste-frontend.
Secondary influence: restrained editorial typography, without switching into a full editorial/experimental system.
```
