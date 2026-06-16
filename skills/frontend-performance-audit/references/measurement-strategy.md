# Measurement Strategy

## Measurement Order

1. Prefer real-user field data when available.
2. Use lab data to diagnose and reproduce.
3. Use build artifacts and source inspection to find likely causes.
4. Use visual/browser inspection to confirm perceived loading, blank screens, layout shifts, and jank.

## Local Project

Use production-like checks:

- inspect `package.json` for build, preview, start, analyze, lint, and test scripts;
- run the production build when safe;
- serve production output rather than dev mode for performance measurements;
- record Node/package manager versions only when they matter;
- inspect generated chunks and static assets;
- use browser automation or DevTools-style traces when available.

Do not present dev-server timings as production performance.

## Deployed URL

Record:

- URL and route;
- browser and location assumptions;
- cache state;
- authentication state;
- viewport/device profile;
- network and CPU settings;
- number of runs.

Check console and network failures. A fast empty or broken page is not a passing result.

## Field Versus Lab

Field data proves real-user experience but may lag behind deploys and aggregate different routes/devices.

Lab data is repeatable and diagnostic but is sensitive to throttling, machine load, browser, cache state, and scripts that require user behavior.

If field and lab disagree, report both and explain likely causes: route mix, sample date, device mix, geography, cached assets, experiment buckets, or test environment.

## Minimum Useful Coverage

For a narrow audit:

- primary route;
- one desktop profile;
- one mobile profile;
- production build or deployed URL;
- console/network errors;
- LCP element and obvious CLS sources;
- JS/CSS transfer size.

For a full audit:

- key route types;
- desktop and mobile;
- cold and warm load where relevant;
- interaction path for INP risk;
- bundle artifacts;
- media/font inventory;
- runtime interaction or scroll check.

## Evidence Labels

- `FIELD`: CrUX, RUM, Search Console, production analytics.
- `LAB`: Lighthouse, PageSpeed lab, WebPageTest, DevTools trace, browser automation.
- `BUILD`: generated chunks, bundle analyzer, framework build output.
- `SOURCE`: code, config, CSS, imports, asset declarations.
- `VISUAL`: screenshot/video observation.

Use these labels in finding evidence.
