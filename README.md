# Frontend Codex Skills

A collection of interconnected Codex skills covering the complete Web/UI workflow, from design brief to implementation and independent acceptance review.

## Skills

| Skill | Purpose |
|---|---|
| `web-ui-designer` | Creates a goal-aware Web/UI design brief covering the audience, information architecture, first viewport, visual system, components, states, motion, responsiveness, and accessibility. |
| `frontend-design-planner` | Converts an approved design, Figma file, or mockup into a technical frontend plan covering the stack, dependencies, file structure, components, and implementation stages. |
| `frontend-implementation` | Implements an approved design or plan in a working frontend project, adds interactions, and performs build and browser QA. |
| `frontend-acceptance-review` | Independently compares the requirements, design, and finished implementation, producing a requirements matrix, evidence-backed findings, and an acceptance verdict. |
| `website-master-prompts` | Creates a single copy-ready master prompt for generating a website or frontend prototype with another AI system. |

## Workflow

```text
web-ui-designer
        |
        v
frontend-design-planner
        |
        v
frontend-implementation
        |
        v
frontend-acceptance-review
        |
        +---- findings ----> frontend-implementation
```

Alternative prompt workflow:

```text
web-ui-designer -> website-master-prompts -> external AI generator
```

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
|   |-- web-ui-designer/
|   |-- frontend-design-planner/
|   |-- frontend-implementation/
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
