# Motion Stacks

Use when the prompt needs motion, scroll choreography, 3D, WebGL, or animation libraries.

## Framer Motion + Lenis

Roles:

- Lenis: smooth scroll with explicit setup, rAF loop, cleanup, and tuned feel.
- Framer Motion: entrance, section reveal, layout transitions, hover/tap states, staggered content.

Prompt details to include:

- Lenis settings such as lerp/multiplier only when useful.
- `prefers-reduced-motion` fallback.
- Avoid over-animating every section the same way.
- Keep content readable during scroll effects.

## Three.js / React Three Fiber + GSAP

Roles:

- Three.js/R3F: real 3D scene, product object, particles, material system, camera.
- GSAP: timeline, pinned sections, ScrollTrigger, camera/object transitions.

Prompt details to include:

- Concrete 3D subject tied to the brand/product.
- Camera behavior across sections.
- Fallback or simplified mobile behavior.
- Performance constraints: limited geometry, compressed textures, lazy loading.

## GSAP Without 3D

Use for premium scroll storytelling, pinned panels, split text, product sequences, or editorial motion.

Prompt details to include:

- Timeline order.
- Trigger points.
- Pinned sections.
- Scrub behavior.
- Cleanup expectations.

## Anime.js

Use for lightweight timeline animation, SVG motion, microinteractions, and decorative sequences.

Prompt details to include:

- What elements animate.
- Timeline order.
- Interaction triggers.
- Reduced-motion fallback.

## Motion Anti-Patterns

- Naming a library without assigning responsibility.
- Combining Lenis, GSAP, and Framer Motion without clear boundaries.
- Making scroll effects block reading.
- Using 3D only as generic background decoration.
- Ignoring mobile performance.
