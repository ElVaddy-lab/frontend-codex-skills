# Master Prompt Template

Use this structure for the final copy-ready prompt. Adapt length to the user's request.

```md
Create a [site/app type] for [brand/business/concept].

Core concept:
[One concrete paragraph describing the product, audience, mood, and main user goal.]

Tech stack:
- Use [stack].
- [Library] is responsible for [specific role].
- [Library] is responsible for [specific role].
- Do not use [excluded tools] unless required.

Visual system:
- Typography: [exact font pair or type direction].
- Palette: [exact colors or clear color roles].
- Layout: [grid, split, editorial, spatial, dashboard, timeline, map, archive, workbench, etc.].
- Surfaces: [cards/panels/bands/tools/canvas/media treatment].
- Media: [photos, video, generated images, textures, 3D, icons].

Information architecture:
1. [First viewport structure that is not automatically a generic hero]
2. [Section/view]
3. [Section/view]
4. [Section/view]
5. [Closing or utility area]

Interaction and motion:
- [Scroll behavior]
- [Hover/focus behavior]
- [Section reveal behavior]
- [Mobile interaction behavior]
- Respect prefers-reduced-motion.

Responsive behavior:
- Desktop:
- Tablet:
- Mobile:
- Prevent text overflow and incoherent overlap.

Implementation requirements:
- Create [file structure or components].
- Use semantic HTML and accessible controls.
- Keep reusable content data-driven.
- Optimize images/media and avoid layout shift.
- Include final QA for console errors, responsive layout, and broken assets.

Avoid:
- [Anti-pattern]
- [Anti-pattern]
- [Anti-pattern]
```

## Short Answer Wrapper

When responding to the user, keep the answer minimal:

```md
Ось готовий майстер-промпт:

```prompt
[master prompt]
```
```

Add a short note after the prompt only if it helps the user understand the chosen direction.
