# Output Template

Use this template for design-to-frontend planning. Keep it concise for simple designs and expand for complex designs.

## 1. Design Analysis

- Product type:
- Primary user goal:
- Layout model:
- Visual language:
- Main sections or screens:
- Hard parts:

## 2. Recommended Stack

Recommended:

Why:

Alternatives considered:

- HTML/CSS/JS:
- React + Vite:
- Next.js:

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

Explain only files that matter for the design.

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

## 9. Implementation Phases

1. Initialize project and base tooling.
2. Add design tokens, global styles, and asset folders.
3. Build static layout section by section.
4. Extract reusable components.
5. Add responsive behavior.
6. Add animations and interactions.
7. Add data/config layer if repeated content exists.
8. Run QA and polish.

## 10. Quality Checklist

- Layout matches the supplied design on desktop and mobile.
- No text overflow or incoherent overlap.
- Images and media have stable dimensions.
- Buttons, links, forms, and controls have hover/focus/disabled states.
- Keyboard navigation and visible focus are acceptable.
- Motion respects reduced-motion preferences.
- Lighthouse/performance risks are noted.
- Dependencies are justified by actual design needs.
