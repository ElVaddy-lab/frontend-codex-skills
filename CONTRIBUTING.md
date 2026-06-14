# Contributing

## Principles

- Keep each skill focused on one workflow stage.
- Define clear entry, boundary, and handoff rules.
- Start descriptions with `Use when`.
- Keep `SKILL.md` concise and move detailed guidance into `references/`.
- Do not include third-party skills without compatible licensing and attribution.
- Do not add placeholders, abbreviated code, or unresolved TODO text.

## Validation

Run before committing:

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\validate.ps1
```

When behavior changes, test the skill against a realistic request and verify that it does not overlap adjacent pipeline skills.

## Adding a Skill

1. Create `skills/<skill-name>/SKILL.md`.
2. Add `agents/openai.yaml`.
3. Add only necessary references or scripts.
4. Add the skill to `skills.json`.
5. Document its role in `README.md`.
6. Run validation.
