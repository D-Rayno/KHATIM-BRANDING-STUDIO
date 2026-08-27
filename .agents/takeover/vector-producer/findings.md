# VECTOR / PRODUCTION / GEOMETRY AUDIT — Phase 4 Displacement Marks

**Auditor role:** Vector / Production / Geometry Designer
**Binding spec:** `design/phase-3/agents/07-vector-specialist.md` (§1–§6)
**Scope:** 4 mark SVGs + 2 board SVGs + `01-GEOMETRY-RECONSTRUCTION.md`

---

## 0. XML WELL-FORMEDNESS (verified with parser)

| File | Well-formed? |
|---|---|
| khatim-displacement-master.svg | ✅ YES |
| khatim-displacement-compact.svg | ✅ YES |
| khatim-displacement-negative.svg | ✅ YES |
| khatim-displacement-16px.svg | ✅ YES |
| khatim-brand-system-board.svg | ✅ YES |
| khatim-application-system.svg | ❌ **NO** — mismatched tag on line 5 col 790: `</rect>` closed with **no matching open `<rect>`** (the `<rect>` on that line was self-closed as a child of the outer `<g>`). Unparseable by any conforming XML/SVG parser; renderers will drop or fail the node. **CRITICAL.**

---

## 1. SVG HYGIENE — per file

### khatim-displacement-master.svg
- viewBox `0 0 256 256` — square ✅; pure integers ✅; no decimals ✅.
- No filters/gradients/raster/base64/external refs ✅.
- Single `currentColor` throughout ✅ (good).
- **Counters via strokes, not evenodd:** no evenodd fill-rule anywhere; the lattice "negative space" is the stroke-void, not a counter → **violates rule 6.5**.
- **No `<defs>`/`<use>` reuse** of the repeating nuqta — each lattice path hand-drawn (missed reuse opportunity, rule 6.6).
- **Strokes, not expanded fills** — entire lattice is a `<g stroke>` group → **violates rule 6.7 / §2.4**.
- **❌ No `<!-- EXPLORATION … NOT FINAL -->` comment** — opens directly into `<title>`. Violates rule 6.8.
- Strokes unbounded — paths run to/off nearest edge; mark has **no contained bbox**.

### khatim-displacement-compact.svg
- viewBox `0 0 128 128` square ✅; integers ✅; no decimals ✅; no filters/raster ✅.
- `currentColor` only ✅.
- Stroke-based (4 outlined rhombi, `stroke-width="4"`, miter) → **final marks are not expanded fills**; violates §2.4 / 6.7.
- No evenodd counters, no defs reuse, **no EXPLORATION comment**.

### khatim-displacement-negative.svg
- viewBox `0 0 256 256` square ✅; integers ✅; no decimals ✅.
- **Uses `fill="Canvas"`** — a CSS system-color keyword, NOT a robust SVG attribute value. Not honored in print/die/emboss/foil or in reverse contexts. Non-standard construction.
- **Background-color knockout, not evenodd** — knockouts via ink-colored `<rect>` plate + Canvas-filled diamonds → **explicitly forbidden by rule 6.5** (fails reverse).
- No defs reuse, **no EXPLORATION comment**.

### khatim-displacement-16px.svg
- viewBox `0 0 16 16` square ✅; integers ✅; no decimals ✅; `shape-rendering="crispEdges"` sensible for 16px.
- Filled diamonds = expanded fills ✅ (the ONLY file with fill-based primary shapes).
- One `stroke="Canvas"` hairline element — same `Canvas` keyword problem as negative; will not render predictably.
- **No EXPLORATION comment**; `aria-label` (not `aria-labelledby`?) — actually uses `aria-label`, acceptable.

### Boards (presentation sheets, not marks)
- Non-square viewBoxes (1200×800, 1400×900) — acceptable for boards; not icon-intended.
- brand-system-board: solid `#F4F2ED` / `#111111`, text & annotation isolated in `<g>`, no filters ✅. Well-formed. Still stroke-based marks inside (hygiene rule applies to marks).
- application-system: **malformed XML (see §0)**; also mixes `rx` rounded rects and monospace text — fine for wireframes, not marks.

---

## 2. MASTER — construction integrity (khatim-displacement-master.svg)

**The master is 100% stroke construction**: a wireframe lattice of `stroke-width="3"` paths on a 256 canvas over a single filled diamond (`M130 116l14 14-14 14-14-14z`).

**Violates the module spec on multiple axes:**
1. **§2.4 / 6.7 — strokes, not expanded fills.** The master is exactly the "study scaffolding" the spec forbids from shipping as final. Unacceptable for die, emboss, foil, embroidery, small print.
2. **Single decisive silhouette — FAIL.** The field is an unbounded, open-ended hairline net with no containing boundary. It cannot "collapse to one readable shape." At any size it reads as *texture*, not a marked unit.
3. **Hairline fragility.** `s = 3/256`. At 16px (scale ×0.0625) that is **0.1875 px ≈ 0.2 px** — sub-pixel, it disappears. `s` should be `u/2`; at an 8u mark, u=32 so s should be **16 px at 256**, not 3. The strokes are ~5× too thin vs spec.
4. **Geometry off-grid.** The lattice cells are **2:1 stretched diamonds** (28 wide × 14 tall: `h28` + `l14 14` + `14 -14` …). The spec's nuqta is a **square rotated 45° with equal diagonals (u×u) at 2u pitch**. The wireframe is NOT the 45° equal-diagonal nuqta lattice. The one filled unit IS a true 45° equal-diamond (28×28) — so **the changed unit does not even match the field geometry around it**. Two incompatible geometries coexist.
5. **Counters / gaps ≪ 2u / u** — the stroke-void gaps are ~14px (u at 256 would be 32 → gaps of 14 are less than u). Fails §2.3 at every target.
6. **Not 16px-survivable by construction** — the idea (lattice + one filled) requires the thin lattice which dies at 16px; the lone filled diamond (28/256 = 7px at 16px, fill-based) is the only survivor, and a bare diamond is not "the displacement event."

**Die/emboss/foil safety:** NO. Hairlines and unbounded field cannot be tooled. If one tried to expand the strokes to fills, the mark would be a complex multi-cavity plate with sub-0.4mm relief — untoolable.

---

## 3. COMPACT (khatim-displacement-compact.svg)

- 4 outlined rhombi (`stroke-width="4"`, 128 canvas) + 1 filled diamond.
- **Filled cell is NOT spec-aligned.** Outlined siblings: centers at (64,36),(36,64),(92,64),(64,92) — a 4-corner diamond array spanning x 36–92, y 36–92, **array center (64,64)**. The filled diamond `M64 38l13 13-13 13-13-13z` has **center (64,51)**, not (64,64) — it is offset 13 units off the array's center. Either it is an error or an undocumented "displacement" that reads as *misalignment*.
- Sizing: filled diamond spans ±13 from center (26 diagonal); outlined inner opening spans ±22 (44 diagonal). Filled is ~41% smaller linearly — reads as the *pressed/sunk* unit heavier, which is directionally right per §2.5, but the magnitude (and the fact it sits off-center/overlapping the top cell) breaks the intended single-silhouette.
- **Stroke construction — not production-worthy.** `4/128 = 0.5 px at 16px` — dies. Same hairline/scaffolding objection as master.
- Result: 5 diamonds in a diamond formation, filled one off-grid → **patchwork, not a coherent module**.

---

## 4. NEGATIVE (khatim-displacement-negative.svg)

- Full-canvas `<rect fill="currentColor">` = the entire 256 square is a solid **plate**, with 4 diamonds in `fill="Canvas"` knocked out, then 1 diamond re-filled `currentColor`.
- **`Canvas` keyword robustness — WEAK.** Relies on CSS system-color mapping that is not guaranteed in all renderers and meaningless in fabric/print/die (there is no "canvas"). The knockout should be a real evenodd counter, not a system-color fill.
- **Fill order / knockout discipline — VIOLATES spec.** This is exactly the "background-color knockout" rule 6.5 bans: it fails in reverse (dark ink on transparency → the "canvas" holes don't invert; they bake to paper color).
- **Reads as displacement/deboss? NO.** The rendering is a radiating/nested diamond pattern (outer 4 + center 1) — reads as a *nested diamond cluster*, not "one unit permanently changed." There is no field-followed-by-single-change; every quadrant is treated. Falls into the "generic seal when enclosed" QA trap (the full ink plate also reads as a seal/medallion).
- Also, this is a **5-unit diamond formation** (4 knockout + 1 fill) — same family as compact/16px, NOT the master's unbounded field.

---

## 5. 16px (khatim-displacement-16px.svg)

- Construction: **4 filled diamonds in a 2×2 diamond formation** (`M8 1`, `M4 5`, `M12 5`, `M8 9`) + **1 hollow centered 4px diamond** (`M8 4 … stroke=Canvas`).
- **It is NOT derived from the MASTER.** The master is an unbounded hairline field + one filled unit. The 16px form is a closed 2×2 grid of filled diamonds with a hollow center element — it is the *compact* family geometry (5-unit diamond array), not the master's lattice.
- **Does the master's idea survive at 16px? NO.** The master's own lattice strokes are 0.19 px — physically cannot render. The master requires a *substitute* at 16px, and this substitute changes the concept from "field + one changed unit" to "4 diamond blobs + hollow center." It is a different mark.
- Even as a substitute, the hollow center uses `stroke="Canvas"` (unreliable system color), and a 1 px stroke hairline at 16px is a single-pixel artifact — fragile/aliasing-prone.

---

## 6. CONSISTENCY — shared grid/module lineage?

**NO — this is a patchwork, not one scaled system.**

| File | Canvas | Cell count | Arrangement | Changed unit |
|---|---|---|---|---|
| master | 256 | many (~5×field) | unbounded 2:1 lattice | 1 exact-45° fill |
| compact | 128 | 5 | 4 outline + 1 fill (OFF-center) |
| negative | 256 | 5 | 4 knockout + 1 fill (plate) |
| 16px | 16 | 5 | 4 fill + 1 hollow |

- Master uses a **stretched 2:1 lattice** + a true 45° filled diamond (two incompatible geometries).
- Compact/negative/16px all independently re-derive "5 diamonds in a diamond array" with *different* fill/stroke/knockout treatments and (in compact) a misaligned center.
- There is **no single module unit `u` shared across files**: master u≈32 but strokes 3px; compact strokes 4px; negative relies on plate+Canvas; 16px jumps to pixel units. No file cites its `u`, nor carries the binding 2.1–2.3 ratios.
- The "responsive reduction" enforced in `01-GEOMETRY-RECONSTRUCTION.md` is aspirational; the files do not implement a coherent master→compact→negative→16px reduction from one source geometry.

---

## 7. PRODUCTION READINESS VERDICT

**NOT PRODUCTION-READY.** The four marks are **study-grade**, not deliverable assets:

1. **All four mark files are built from STROKES and/or background knockouts — ZERO of them is a single-silhouette, expanded-fill mark.** This is the single binding-spec violation that is fatal to production.
2. **The master fails the defining test** (single decisive silhouette, counters ≥2u, gaps ≥u, strokes→fills) on every count and cannot survive 16px by construction.
3. **The 16px form is a substitute, not a derivative** — the master's concept does not survive its own responsive claim.
4. **`khatim-application-system.svg` is unparseable malformed XML** — a hard production blocker for that file.
5. Hairlines (0.19px / 0.5px at 16px) fail 16px, emboss, die, foil, embroidery, and reverse print.

**Specific construction work required (in order):**
1. **Fix the malformed XML** in `khatim-application-system.svg` (phantom `</rect>`).
2. **Declare one source geometry** — pick a true 45° equal-diagonal nuqta (u×u diagonals, 2u pitch), define `u` (e.g. u=8 on a 64 canvas → 8u bbox) and derive master/compact/16px from it; delete the 2:1 stretched lattice.
3. **Rebuild the master from expanded fills, not strokes** — produce the lattice as filled polygons (or a single evenodd path) with uniform weight s=u/2, counters ≥2u, gaps ≥u, acute ≥60°, contained in an 8u bbox, one decisive silhouette.
4. **Make the changed unit read decisively** — pick ONE altered cell (heavier/offset/sunken), align it on the module grid; do NOT mix fill and outline weights across a shared field.
5. **Draw the 16px form AS the master's reduction** (single evenodd counter-driven silhouette, ≥2px counters), not a fresh 2×2 invention.
6. **Replace `fill="Canvas"` and stroke knockouts with real evenodd counters / solid fills**; test reverse and 1-color print.
7. **Every file opens with `<!-- EXPLORATION STUDY — NOT FINAL -->`**; sheet labels visible; use `<defs>`/`<use>` for the repeated nuqta.

---

## 8. VERDICT: **REBUILD**

Frame (vector/production): **the GEOMETRY must be rebuilt even if the "displacement event" idea is kept.** No file is expanded-fill/single-silhouette; the master contradicts the binding module spec (strokes, unbounded, off-grid 2:1 lattice) on every material axis; the 16px form is a substitute not a derivative; compact's filled cell is off-module; negative is a forbidden knockout with an unreliable `Canvas` keyword; and `khatim-application-system.svg` is malformed XML. The *idea* is worth keeping — the *construction* is not; rebuild from a single shared 45° nuqta grid into expanded-fill, single-silhouette marks.
