# Frontend Codex Skills

Набір взаємопов'язаних Codex skills для повного Web/UI workflow: від дизайн-брифу до реалізації та незалежного acceptance-аудиту.

## Skills

| Skill | Призначення |
|---|---|
| `web-ui-designer` | Створює goal-aware Web/UI design brief: аудиторія, IA, first viewport, visual system, компоненти, стани, motion, responsive та accessibility. |
| `frontend-design-planner` | Перетворює затверджений дизайн, Figma або макет на технічний frontend-план: стек, залежності, структура файлів, компоненти та етапи реалізації. |
| `frontend-implementation` | Реалізує затверджений дизайн або план у робочому frontend-проєкті, додає взаємодії та проводить build/browser QA. |
| `frontend-acceptance-review` | Незалежно порівнює ТЗ, макет і готову реалізацію; формує requirements matrix, evidence-backed findings і acceptance verdict. |
| `website-master-prompts` | Створює один copy-ready master prompt для генерації сайту або frontend-прототипу іншою AI-системою. |

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

Альтернативна prompt-гілка:

```text
web-ui-designer -> website-master-prompts -> external AI generator
```

## Встановлення

### Усі skills

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\install.ps1
```

### Вибрані skills

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\install.ps1 `
  -Skills web-ui-designer,frontend-design-planner
```

### Оновлення існуючих skills

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\install.ps1 -Force
```

За замовчуванням skills встановлюються у:

```text
%USERPROFILE%\.codex\skills
```

Після встановлення перезапустіть Codex.

## Ручне встановлення

Скопіюйте потрібну папку з `skills/` у:

```text
C:\Users\<username>\.codex\skills
```

Приклад:

```powershell
Copy-Item -Recurse `
  .\skills\frontend-acceptance-review `
  "$env:USERPROFILE\.codex\skills\frontend-acceptance-review"
```

## Перевірка

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\validate.ps1
```

Validator перевіряє:

- наявність `SKILL.md`;
- коректний frontmatter `name` і `description`;
- відповідність назви папки полю `name`;
- наявність `agents/openai.yaml`;
- існування всіх згаданих reference-файлів;
- відсутність template placeholders.

## Структура

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

Цей репозиторій містить лише авторські frontend skills. Сторонні набори GSAP, Taste Skills, Remotion і Modern Web Guidance сюди не включені.

## License

[MIT](LICENSE)
