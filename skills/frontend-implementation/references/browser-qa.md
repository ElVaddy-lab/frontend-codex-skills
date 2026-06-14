# Browser QA

Run browser checks before claiming the UI is done.

## Viewports

Check at minimum:

- Desktop: 1440 x 900 or similar.
- Mobile: 390 x 844 or similar.

Add tablet if the layout changes significantly between desktop and mobile.

## What to Inspect

- Blank screen or hydration/runtime errors.
- Console errors and failed network/media requests.
- Horizontal overflow.
- Text clipping, overflow, or unreadably small type.
- Buttons and controls with cramped labels.
- Cards or panels overlapping.
- Media containers with unstable aspect ratios.
- Header/nav behavior on mobile.
- Hover/focus/active/disabled states.
- Scroll animation, sticky elements, parallax, and reduced-motion fallback.

## Visual Acceptance

The UI should:

- Match the supplied design's information architecture and visual rhythm.
- Keep first viewport composition stable.
- Show the real product/app/tool/game experience, not a generic marketing shell.
- Remain readable and usable on mobile.
- Avoid generic decorative elements that were not part of the design intent.

## Final Evidence

In the final response, include the commands run and whether they passed. If screenshots were created, mention their paths only when useful.
