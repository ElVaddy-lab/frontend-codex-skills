---
name: web-ui-reverse-engineer
description: Use when an existing website, Web/UI mockup, screenshot, Figma design, live URL, or frontend codebase must be reverse engineered into evidence-backed components, design tokens, typography, color, layout grammar, responsive behavior, interaction patterns, assets, technical architecture, reusable systems, confidence-rated unknowns, and redesign or rebuild handoff. Do not use for creating a new design, implementation planning, writing code, audits, or acceptance testing.
---

# Web UI Reverse Engineer

## Overview

Reverse-engineer an existing Web/UI artifact into a structured, evidence-aware analysis. Explain how the interface is composed, which visual and interaction systems govern it, what can be reused, and what remains uncertain.

Default to the user's language. If the user asks in Ukrainian, write the report in Ukrainian.

## Position in the Workflow

Use this skill as the analysis layer for an existing artifact:

1. `web-ui-reverse-engineer` documents the current interface and extracts its system.
2. `web-ui-designer` uses the findings when the user wants a new or redesigned direction.
3. `frontend-design-planner` converts approved reconstruction or redesign requirements into a technical plan.
4. `frontend-implementation` builds the approved result.
5. `frontend-acceptance-review` checks the finished implementation against approved requirements and design.

Do not silently cross these boundaries. A reverse-engineering report may recommend the next skill, but it is not itself a redesign, implementation plan, code change, or acceptance verdict.

## Input Modes

Classify the available evidence before analysis:

- **Visual-only**: screenshot, mockup, image, PDF, or recorded walkthrough.
- **Figma-aware**: Figma file, frame, component library, variables, or exported design data.
- **Live-site**: public or local URL that can be inspected at runtime.
- **Code-aware**: frontend repository, component files, styles, tokens, routes, and dependencies.
- **Combined**: two or more sources. Prefer this mode because it can separate intended, defined, and rendered behavior.

Load `references/artifact-intake.md`, `references/input-mode-guidance.md`, and `references/evidence-matrix.md` when evidence comes from more than one source or when claims need confidence grading.

## Analysis Modes

Select the smallest mode that satisfies the request:

- **Design-only**: visual language, hierarchy, typography, palette, spacing, layout, media, and design decisions.
- **Component-only**: page regions, component tree, reusable patterns, variants, states, and boundaries.
- **Code-architecture**: framework, routes, component graph, styling system, state, data flow, motion, and asset organization.
- **Design-system extraction**: normalized tokens, primitives, components, variants, and usage rules.
- **Rebuild handoff**: analysis plus reconstruction priorities, risks, missing evidence, and planner-ready requirements.
- **Redesign context**: current IA, strengths, weaknesses, reusable patterns, risks, and constraints for `web-ui-designer`.
- **Full analysis**: all relevant layers when the user asks for a complete breakdown.

Do not inflate a narrow request into a full audit unless broader findings materially affect the answer.

## Source Authority

Use evidence in this order, while recording conflicts:

1. Runtime measurements and computed styles prove what is currently rendered in the inspected state.
2. Source code and design variables prove what is defined, not necessarily what is rendered or reachable.
3. Figma properties prove authored design values for the inspected frame or component.
4. Screenshots prove visible relationships at a specific unknown or stated viewport, but rarely exact implementation values.
5. General pattern recognition supports hypotheses only.

When sources disagree, report the conflict instead of choosing silently. Distinguish:

- authored versus rendered;
- declared versus used;
- reusable versus one-off;
- visible versus hidden or conditional;
- exact values versus normalized recommendations.

## Core Workflow

1. **Inventory the evidence**: list sources, routes, frames, viewport sizes, states, themes, and access limitations.
2. **Select the mode**: choose the analysis mode and define what is out of scope.
3. **Inspect the product shell**: identify page types, navigation model, global regions, primary actions, and content hierarchy.
4. **Build the component map**: decompose pages into layouts, sections, components, primitives, variants, and states. Load `references/component-decomposition.md`.
5. **Extract the visual system**: identify typography, colors, spacing, sizing, grids, radii, borders, shadows, iconography, and media rules. Load `references/design-token-extraction.md`.
6. **Analyze interaction behavior**: document hover, focus, active, selected, disabled, loading, empty, error, success, overlay, navigation, scroll, and motion behavior.
7. **Analyze responsiveness**: distinguish observed breakpoints from inferred adaptations. Record reflow, collapse, hide/show, reordering, density, and touch changes. Load `references/responsive-interaction-extraction.md`.
8. **Inspect technical architecture when code is available**: identify framework, routes, dependencies, styling strategy, state/data boundaries, motion libraries, assets, and duplication. Load `references/code-analysis-checklist.md`.
9. **Explain design decisions**: connect visual choices to hierarchy, trust, conversion, scanning, density, orientation, or brand expression. Label interpretation as inference.
10. **Assign confidence**: tag material findings using `EXACT`, `HIGH CONFIDENCE`, `INFERRED`, or `UNKNOWN`. Load `references/confidence-levels.md`.
11. **Prepare the handoff**: state what is reusable, what must be recreated, what needs clarification, and which downstream skill should run next. Load `references/handoff-contracts.md`.
12. **Write the report**: use `references/analysis-report-template.md` and run `references/report-quality-gates.md` plus the relevant visual or code checklist before finalizing.

## Evidence Rules

- Attach a source to every material claim: file, selector, component, Figma node, screenshot region, route, viewport, or observed interaction.
- State whether each material finding is `authored`, `defined`, `rendered`, `observed`, or `inferred` when that distinction affects downstream work.
- Do not identify an exact font family from pixels alone. Describe likely classification and alternatives unless metadata confirms it.
- Do not present sampled screenshot colors as exact design tokens unless the source supports exact extraction.
- Do not infer mobile behavior from desktop imagery without marking it `INFERRED`.
- Do not treat code as active behavior until usage or rendering is verified.
- Do not call repeated markup a reusable component unless an abstraction actually exists; say "component candidate" when appropriate.
- Include unknowns when access, state, content, browser, viewport, or assets limit the analysis.

## Output Contract

Unless the user asks for a shorter format, return:

1. Analysis profile and source coverage.
2. Product shell and information architecture.
3. Page and component decomposition.
4. Design tokens and visual system.
5. Typography and content hierarchy.
6. Layout and spacing system.
7. UI patterns, variants, and states.
8. Motion and interactions.
9. Responsive behavior.
10. Assets and media strategy.
11. Technical architecture, when code or runtime access exists.
12. Design rationale and notable decisions.
13. Reconstruction guidance, risks, and priorities.
14. Confidence summary, conflicts, and unknowns.
15. Recommended handoff.

Keep the report concrete. Prefer tables, token groups, component trees, and source references over broad adjectives such as "modern" or "clean."

## Boundaries

- Do not create a new design direction; use `web-ui-designer`.
- Do not choose a development stack or produce implementation phases; use `frontend-design-planner`.
- Do not write or modify frontend code; use `frontend-implementation`.
- Do not judge compliance with a specification or issue an acceptance verdict; use `frontend-acceptance-review`.
- Do not copy proprietary source code, protected assets, or inaccessible design data into the report.
- Do not bypass authentication, access controls, robots restrictions, or technical protections.
- Do not claim access to states, breakpoints, routes, or tokens that were not inspected.

## Reference Files

- Load `references/analysis-report-template.md` for the canonical report structure.
- Load `references/artifact-intake.md` before analysis when the artifact type, source authority, access, states, viewports, or scope is not already clear.
- Load `references/input-mode-guidance.md` for source-specific evidence limits and inspection strategy.
- Load `references/evidence-matrix.md` when merging screenshot, Figma, runtime, and code evidence or resolving conflicts.
- Load `references/component-decomposition.md` when producing a component inventory or tree.
- Load `references/design-token-extraction.md` when extracting or normalizing visual tokens.
- Load `references/responsive-interaction-extraction.md` when documenting breakpoints, mobile behavior, state changes, gestures, overlays, motion, or scroll.
- Load `references/visual-analysis-checklist.md` for screenshots, Figma, video, or rendered-page analysis.
- Load `references/code-analysis-checklist.md` when source code or a repository is available.
- Load `references/handoff-contracts.md` when the analysis must feed `web-ui-designer`, `frontend-design-planner`, `frontend-implementation`, or `website-master-prompts`.
- Load `references/report-quality-gates.md` before finalizing any substantial report.
- Load `references/confidence-levels.md` before assigning confidence or resolving conflicting evidence.

## Common Mistakes

- Rewriting the interface instead of documenting it.
- Confusing an implementation plan with reverse engineering.
- Calling screenshot estimates exact values.
- Listing page sections without identifying reusable component boundaries and variants.
- Extracting colors without semantic roles or usage context.
- Ignoring interaction states, responsive transformations, and content edge cases.
- Reporting source-code declarations as rendered behavior.
- Mixing acceptance failures into a descriptive analysis.
- Omitting conflicts, unknowns, and evidence limitations.
- Handing off a rebuild without reconstruction priorities, risks, missing states, and confidence.
