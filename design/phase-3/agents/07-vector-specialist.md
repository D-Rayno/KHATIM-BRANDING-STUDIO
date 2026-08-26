# AGENT 07 — VECTOR / LOGO CONSTRUCTION SPECIALIST
## Phase 3 · KHATIM BRAND STUDIO · Construction Discipline Report

**STATUS: EXPLORATION ONLY.** Nothing here is a final logo. This report tests whether the six
existing symbol studies survive disciplined vector construction against the semiotic center
(Matrix/Impression deboss) and the supporting 45° rhombic nuqta grid.

## 1. AUDIT OF EXISTING FAMILY SVGs

**F-01 Pressed Nuqta** (viewBox 96, 8 outlined rhombi + 1 filled). Clean integer polygons, one
stroke group — good hygiene. **FAILS 16px:** stroke 2/96 = 0.33px (vanishes); gap between cells
4/96 = 0.67px (merges). Nine cells are texture, not symbol, at small sizes. Needs a 3×3 crop or
solid micro variant, stroke ≥ 4/96. Filled center outweighs outlined siblings — keep, it is the
"pressed cell," but compensate outlines upward.

**F-02 Matrix & Impression** (viewBox 64×92). **Non-square viewBox** — fails favicon/app-icon
containers without rework. Decimal coords (44.9…) are honest 45° chamfers (dx=dy=7.5) but should
be re-based on integers. **Dashed connector is the weakest element:** dies in emboss and foil,
illegible < 48px; delete it — the vertical pairing alone narrates private/public key. At 16px the
stack reads as two blobs: this is a *lockup*, not a mark; needs single-glyph extraction (CS-2).

**F-03 Tripartite Convergence** (viewBox 64). **Mixed stroke weights (4 vs 2)** violate
single-weight discipline; the void triangle's 2-unit outline = 0.5px at 16px — the concept
disappears exactly where it must survive. **Round linecaps are a SaaS cliché risk** and contradict
the faceted-die language — use mitred filled arms. Arm-to-void gaps ~3 units (0.75px at 16px) will
plug. Convergence angles ~56°, off the 45° grid. Needs full re-grid (CS-3).

**F-05 Void Core** (viewBox 64, single evenodd path). **Best-constructed study.** Integer coords,
square viewBox, exact 45° chamfers (dx=dy=14), monochrome- and reverse-native. Hole diagonal
18/64 = 4.5px at 16px ✓; walls 8–14 units = 2–3.5px ✓. Survives favicon, emboss, foil, screen
print. This is the scalability benchmark; refined onto the lattice in Part B (CS-1).

**F-07 Registration Notch** (viewBox 64, single solid path). Bold, print-proof; bar 8 units = 2px
at 16px ✓. **Notch depth 6 units = 1.5px at 16px — borderline;** below 20px the mark collapses to
a plain bar and loses its idea. Deepen notch to ≥ u or accept a plain-bar micro fallback. Risk:
reads as a glyph ("I" with a bite), not a seal — needs a frame or pairing.

**F-15 Axis Witness** (viewBox 64). **GRID VIOLATION: chevrons run dx=10, dy=12 — not 45°**;
correct to dx=dy. Stroke 4/64 = 1px at 16px — barely survives; thicken to u/2. Square caps correct.
Mirror symmetry exact. One revision away once re-gridded.

**Verdict:** F-05 construction-ready · F-07, F-15 one revision away · F-01 needs a micro variant ·
F-02 is a lockup, not a mark · F-03 needs full re-grid.

## 2. CONSTRUCTION STUDY FRAMEWORK

**2.1 Module spec (45° rhombic nuqta unit).** Base unit **u**; all geometry in whole/half units.
Nuqta rhombus = diagonals **u × u** (square rotated 45°), vertices on lattice. Lattice = two 45°
line families at pitch **2u**; intersections where (x+y) and (x−y) are multiples of 2u. Structural
vertices land on intersections; endpoints may use half-lattice. The grid is invisible proportion —
never shipped as decoration. **Stroke weight s = u/2**, uniform per glyph. **Chamfers exact 45°:
dx = dy, no exceptions** (see F-15).

**2.2 Ratios.** Allowed multiples of u: 1, 2, 3, 5, 8. Canonical mark bbox = 8u × 8u.

**2.3 Negative-space minimums** (16px favicon ⇒ 1u = 2px on an 8u mark). Counters: diagonal ≥ 2u
(4px) — F-05 ✓. Gaps between elements ≥ u (2px) — F-01 (0.67px), F-03 (0.75px) FAIL. Notches: depth
≥ u/2 floor, u preferred — F-07 below spec. Keep acute interior angles ≥ 60° (foil bridging).

**2.4 Stroke behavior.** Strokes are construction aids; final marks are expanded fills. Uniform
s = u/2; diagonals read ~7% thinner — thicken ×1.07 to match horizontals, or use silhouettes at
micro sizes. Square/butt caps only; round caps banned. No dashes in core geometry (annotation only).

**2.5 Optical corrections.** Overshoot: pointed vertices (rhombus tips, chevron apexes) overshoot
alignment lines by u/16–u/8. A nuqta centered on a vertex looks low — raise u/32. Filled cells
outweigh outlined siblings — shrink fill ~4% when equality is wanted (F-01). Octagon chamfer:flat
tune by eye near 0.64 so the band reads continuous. Below 32px: open apertures +u/4, silhouettes
only.

## 3. SCALABILITY TESTS

| Family | 16px favicon | 32px | App icon | Verdict |
|---|---|---|---|---|
| F-01 | FAIL (strokes/gaps vanish) | marginal (3×3 crop) | OK w/ solid micro | needs micro variant |
| F-02 | FAIL (two blobs, dashes die) | readable, dashes gone | poor (non-square) | lockup only |
| F-03 | FAIL (void closes) | marginal | OK if re-gridded | re-grid, 1 weight |
| F-05 | PASS (hole 4.5px) | PASS | PASS | benchmark |
| F-07 | borderline (notch 1.5px) | PASS | PASS | deepen notch |
| F-15 | borderline (1px strokes) | PASS | PASS | fix 45°, s=u/2 |

Rule proven: **only single-silhouette, counter-driven marks (F-05, F-07) survive 16px unmodified.**
Every multi-stroke/multi-element concept needs a designed micro variant — drawn, not assumed.

## 4. MONOCHROME / REVERSE BEHAVIOR

F-01: fine positive; reverse halos at small sizes — use all-solid micro knockouts. F-02:
solid/outline inverts cleanly (swap which octagon is filled) — genuinely useful for the
private/public story; dashes still fail. F-03: void concept is reverse-native; current gaps plug
in reverse print. F-05: evenodd counter reverses with zero edits — best-in-class. F-07: pure
silhouette, trivially reversible; notch must survive ink spread on uncoated stock. F-15: reverses
cleanly; thicken to u/2 and widen chevron-to-axis gap ≥ u or strokes fill in on reverse.

## 5. REPRODUCTION LIMITS

**Blind emboss/deboss (core brand behavior):** min relief line 0.4mm, min gap 0.5mm, counters ≥
0.8mm, no dashes/hairlines. F-05, F-07 emboss beautifully ≥ 12mm; F-02 dashes and F-03 thin void
outline banned from dies. Digital depth illusion must come from geometry (solid + counter), never
gradients/shadows. **Foil:** lines ≥ 0.2mm, knockouts ≥ 0.3mm; F-05's 90° rhombus corners safe.
**Embroidery:** detail floor ~1.5–2mm — only F-05 (simplified solid) and F-07 (bar fallback) are
stitchable; satin-stitch direction should follow the 45° lattice. **1-color screen print:** positive
≥ 0.2mm, negative ≥ 0.3mm — all pass ≥ 15mm except F-02 dashes, F-03 gaps.

## 6. SVG HYGIENE RULES (project-wide)

1. `viewBox` always; square for any icon-intended mark (pad asymmetric art into square).
2. Integer coordinates preferred; .5 allowed; >1 decimal forbidden.
3. Simple shapes (`polygon`/`rect`/`path` L-M-Z) for core geometry; no curves unless the concept
   demands them; no filters, gradients, raster, base64, external refs — ever.
4. Single fill `#111111` (or `currentColor`); annotation layers isolated in their own `<g>`.
5. Counters via `fill-rule="evenodd"` on one path — never background-colored knockouts (fail reverse).
6. Reusable modules (`<defs>`+`<use>`) for nuqta and lattice; transforms only on scale-demo copies.
7. Final marks ship as expanded fills, uniform weight; strokes are study scaffolding.
8. Every file opens with `<!-- EXPLORATION STUDY — NOT FINAL -->`; sheets visibly labeled.

## 7. PROPOSED NEW / REFINED CONSTRUCTION STUDIES

**CS-1 · Refined Void Core on the nuqta lattice (BUILT — Part B).** F-05 rebuilt so every vertex is
a lattice intersection: u=16, octagon bbox 8u×8u, chamfer 2u, counter rhombus diagonals 4u×4u (tips
on lattice), walls ≥2u on axes, ≥2.8u toward chamfers. 16px hole = 8px. Delivered as
`construction-study-grid-specimen.svg` with module math, dimensions, 64/32/16px scale strip.

**CS-2 · Matrix/Impression single-glyph extraction (from F-02).** One octagon (8u bbox, chamfer 2u)
split at mid-height on a lattice horizontal: upper half solid (die), lower half a u/2 ring (outer
minus inset inner octagon, evenodd). Test: does positive-above/negative-below survive in ONE 8u
glyph at 16px?

**CS-3 · Re-gridded Tripartite Convergence (from F-03).** Three mitred filled parallelogram arms at
exact 45°/135°, 2u wide. Equilateral void rejected (√3 breaks lattice); void = nuqta rhombus
(u×u diagonals), arms approach three of four vertices, fourth left open (witness axis). Gaps = u.
Single weight, zero strokes, reverse-native. Pass test: void ≥ 4px at 32px ⇒ mark ≤ 16u wide.

## APPENDIX · FILES
- `/workspace/project/design/phase-3/agents/07-vector-specialist.md` (this report)
- `/workspace/project/design/phase-3/svg/construction-study-grid-specimen.svg` (CS-1, built)
