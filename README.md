# Frontend Codex Skills

A collection of interconnected Codex skills covering Web/UI reverse engineering, design, technical planning, implementation, performance and accessibility auditing, prompt generation, and independent acceptance review.

## Skills

| Skill | Purpose |
|---|---|
| `web-ui-reverse-engineer` | Decomposes an existing website, mockup, Figma design, live URL, or frontend codebase into evidence-backed components, design tokens, layout grammar, responsive behavior, interactions, assets, technical architecture, confidence-rated unknowns, and redesign/rebuild handoff. |
| `web-ui-designer` | Creates a scenario-aware Web/UI design brief covering brief mode, audience, information architecture, first viewport, visual system, components, states, motion, responsiveness, accessibility, and handoff status. |
| `frontend-design-planner` | Converts an approved design, Figma file, or mockup into a scenario-aware technical frontend plan covering framework choice, dependencies, framework-specific file structure, components, state/data, testing, deployment, SEO/content, handoff status, and implementation stages. |
| `frontend-implementation` | Implements an approved design or plan in a working frontend project, preserves handoff constraints, removes placeholders, adds interactions, and performs build, browser QA, and completion gate checks. |
| `frontend-performance-audit` | Audits finished or near-finished frontends for Core Web Vitals, Lighthouse/PageSpeed evidence, bundle cost, JavaScript runtime work, media and font loading, animation cost, caching, budgets, and prioritized performance findings. |
| `frontend-accessibility-audit` | Audits finished or near-finished frontends for WCAG 2.2, keyboard navigation, focus, ARIA/name-role-value, semantic HTML, labels, landmarks, forms, contrast, motion, screen-reader flow, automated findings, and prioritized accessibility fixes. |
| `frontend-qa-orchestrator` | Coordinates frontend QA gates for finished or near-finished work, selecting smoke, acceptance, accessibility, performance, regression, and fix re-check passes with evidence, go/no-go status, and handoff routing. |
| `frontend-acceptance-review` | Independently compares the requirements, design, and finished implementation, producing a requirements matrix, evidence-backed findings, and an acceptance verdict. |
| `website-master-prompts` | Creates copy-ready website generation master prompts with prompt modes, generator targets, source handoff preservation, stack roles, first viewport, visual system, motion, responsive behavior, anti-generic constraints, and acceptance checks. |

## Workflow

```text
existing site / design / code
        |
        v
web-ui-reverse-engineer
        |
        +---- reconstruction ----> frontend-design-planner
        |
        `---- redesign context ---> web-ui-designer
                                      |
                                      v
                              frontend-design-planner
        |
        v
frontend-implementation
        |
        v
frontend-qa-orchestrator
        |
        +---- smoke / gate selection ----> frontend-implementation
        |
        +---- performance gate ---------> frontend-performance-audit
        |
        +---- accessibility gate -------> frontend-accessibility-audit
        |
        `---- acceptance gate ----------> frontend-acceptance-review
                                             |
                                             +---- findings ----> frontend-implementation
```

Specialist audit chain when QA orchestration is not needed:

```text
frontend-implementation
        |
        v
frontend-performance-audit
        |
        +---- performance findings ----> frontend-implementation
        |
        v
frontend-accessibility-audit
        |
        +---- accessibility findings ----> frontend-implementation
        |
        v
frontend-acceptance-review
        |
        +---- findings ----> frontend-implementation
```

Alternative prompt workflow:

```text
web-ui-reverse-engineer -> web-ui-designer -> website-master-prompts -> external AI generator
```

For a new product without an existing interface, start directly with `web-ui-designer`.

## Installation

### Install all skills

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\install.ps1
```

### Install selected skills

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\install.ps1 `
  -Skills web-ui-designer,frontend-design-planner
```

### Update existing skills

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\install.ps1 -Force
```

By default, skills are installed into:

```text
%USERPROFILE%\.codex\skills
```

Restart Codex after installation.

## Manual Installation

Copy the required folder from `skills/` into:

```text
C:\Users\<username>\.codex\skills
```

Example:

```powershell
Copy-Item -Recurse `
  .\skills\frontend-acceptance-review `
  "$env:USERPROFILE\.codex\skills\frontend-acceptance-review"
```

## Validation

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\validate.ps1
```

The validator checks:

- that `SKILL.md` exists;
- that the `name` and `description` frontmatter is valid;
- that the folder name matches the `name` field;
- that `agents/openai.yaml` exists;
- that all referenced files exist;
- that no template placeholders remain.

## Repository Structure

```text
frontend-codex-skills/
|-- skills/
|   |-- web-ui-reverse-engineer/
|   |-- web-ui-designer/
|   |-- frontend-design-planner/
|   |-- frontend-implementation/
|   |-- frontend-performance-audit/
|   |-- frontend-accessibility-audit/
|   |-- frontend-qa-orchestrator/
|   |-- frontend-acceptance-review/
|   `-- website-master-prompts/
|-- install.ps1
|-- validate.ps1
|-- skills.json
|-- CONTRIBUTING.md
`-- LICENSE
```

## Scope

This repository contains only original frontend skills. Third-party collections such as GSAP Skills, Taste Skills, Remotion, and Modern Web Guidance are not included.

## License

[MIT](LICENSE)
