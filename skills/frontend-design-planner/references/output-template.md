# Output Template

Use this template for design-to-frontend planning. Keep it concise for simple designs and expand for complex designs. If a section does not materially affect the build, write `Not material for this build` instead of filling boilerplate.

## Output Mode

- Mode: `compact`, `full production`, or `handoff-ready`
- Handoff status: `Implementation-ready`, `Needs design brief`, `Prompt-ready`, or `Audit-ready after build`

## 1. Design Analysis

- Product type:
- Primary user goal:
- Planning scenario:
- Layout model:
- Visual language:
- Main sections or screens:
- Hard parts:

## 2. Recommended Stack

Recommended:

Why:

Alternatives considered:

- HTML/CSS/JS:
- Astro:
- React + Vite:
- Next.js:
- SvelteKit:
- React Router Framework Mode:

## 3. Dependencies

```bash
# Example only; adapt to the chosen stack
npm create vite@latest project-name -- --template react-ts
cd project-name
npm install framer-motion lucide-react clsx
```

Dependency roles:

- `framer-motion`:
- `lucide-react`:
- `clsx`:

## 4. Project Structure

Choose a framework-specific tree from `project-structures.md` or `react-project-structure.md`.

```txt
src/
  app/
  components/
    layout/
    sections/
    ui/
  data/
  hooks/
  lib/
  styles/
  assets/
```

Explain only files that matter for the design. Remove folders that are not material.

## 5. Component Breakdown

| Component | Responsibility | Props / state | Notes |
| --- | --- | --- | --- |
| `AppShell` | Page frame and global layout | none | Adapt to routing if needed |
| `HeroSection` | First viewport experience | content, media | Avoid generic hero if design differs |

## 6. Design Tokens

- Typography:
- Color palette:
- Spacing scale:
- Radius:
- Shadows/elevation:
- Breakpoints:
- Assets:

## 7. Animation and Interaction Plan

- Page entry:
- Scroll behavior:
- Hover/focus states:
- Section reveals:
- Reduced motion:

## 8. Responsive Plan

- Desktop:
- Tablet:
- Mobile:
- Text overflow strategy:
- Navigation changes:

## 9. Data and State Plan

- Static content/config:
- Local UI state:
- URL state:
- Server state:
- Forms and validation:
- Loading/empty/error/success states:
- Auth or permissions:
- Internationalization/content variants:

If the design is static, state that state/data complexity is not material and name only the content files.

## 10. Testing and Audit Strategy

- Build/typecheck/lint:
- Unit/component tests:
- E2E/browser tests:
- Visual regression:
- Accessibility audit handoff:
- Performance audit handoff:
- Manual QA viewports/states:

## 11. Deployment and CI Plan

- Hosting target:
- Build command:
- Preview deploys:
- Environment variables:
- CI checks:
- Release gates:
- Rollback/monitoring notes:

For prototypes or local-only work, mark production CI/deployment as not material.

## 12. SEO and Content Plan

- Metadata:
- Open Graph/social cards:
- Structured data:
- Sitemap/robots:
- Semantic content structure:
- CMS/static content source:
- Localization:

For private dashboards or tools, mark public SEO as not material unless marketing/public routes are in scope.

## 13. Implementation Phases

1. Initialize project and base tooling.
2. Add design tokens, global styles, and asset folders.
3. Build static layout section by section.
4. Extract reusable components.
5. Add responsive behavior.
6. Add animations and interactions.
7. Add data/config layer if repeated content exists.
8. Add planned tests, route metadata, and deployment config when relevant.
9. Run QA and polish.

## 14. Quality Checklist

- Layout matches the supplied design on desktop and mobile.
- No text overflow or incoherent overlap.
- Images and media have stable dimensions.
- Buttons, links, forms, and controls have hover/focus/disabled states.
- Keyboard navigation and visible focus are acceptable.
- Motion respects reduced-motion preferences.
- Lighthouse/performance risks are noted.
- Accessibility risks and audit handoff are noted.
- Build/test/deploy checks are named when production use is expected.
- Dependencies are justified by actual design needs.
- Irrelevant sections are explicitly marked as not material instead of padded.
- Handoff status is clear.
