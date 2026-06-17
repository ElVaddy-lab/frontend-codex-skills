# Data and State Strategy

Use this reference when the design includes dynamic content, forms, filters, auth, dashboards, CMS data, repeated content, or user-specific state.

## State Levels

| Need | Prefer |
| --- | --- |
| One component toggle/open state | local component state |
| Shared UI state across nearby components | lifted state or colocated context |
| URL-addressable filters/search/sort/page | URL query state |
| Server data with caching/invalidation | TanStack Query or framework data layer |
| Simple app-wide client state | Zustand or small context store |
| Complex forms | native forms first; React Hook Form or framework forms when validation/state complexity justifies it |
| Content repeated across sections | data/config file, CMS, markdown/content collection |

## Planning Questions

- Which content is static, configurable, CMS-backed, or API-backed?
- Which state must survive refresh or be shareable by URL?
- Which state is user-specific or permission-specific?
- Which states need loading, empty, error, success, optimistic, or disabled handling?
- Does the design include search, filters, sort, pagination, cart, editor state, uploads, or multi-step forms?
- Are there localization, currency, timezone, or role variants?

## Form Strategy

Plan:

- validation timing;
- error display;
- success state;
- disabled/submitting state;
- keyboard and accessibility behavior;
- server-side validation or API failure state;
- data persistence for multi-step flows.

## Content Strategy

Use data/config files for repeated content in static builds. Use CMS/content collections when non-developers need updates, content count is high, or metadata/SEO content must scale.

## Anti-Patterns

- Adding global state for a local menu.
- Hiding filters in component state when they should be linkable.
- Adding TanStack Query for static JSON.
- Duplicating repeated content directly in JSX/HTML.
- Omitting empty/loading/error states for data-driven UI.

## Output Pattern

List the data sources, state owners, state persistence, loading/empty/error/success states, and files/modules where the state should live.
