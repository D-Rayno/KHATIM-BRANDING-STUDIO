# PHASE 4 — Geometry Spec

> **Status:** DEVELOPMENT CANDIDATE — NOT FINAL.
> **Authority:** this spec governs every mark, wordmark, lockup, pattern, and application in Phase 4.
> **Inherits:** the Phase 3 binding vector module (`design/phase-3/agents/07-vector-specialist.md` §2).

---

## 1. Module

**Base unit `u`.** Every measurement in every asset is a whole or half multiple of `u`. Decimals beyond `.5` are forbidden.

For canonical 256×256 viewBox marks: **`u = 16`**.

```
1u  =  16
2u  =  32
3u  =  48
4u  =  64
5u  =  80
6u  =  96
7u  = 112
8u  = 128     ← canonical mark bbox
```

**Allowed ratio set:** 1, 2, 3, 5, 8 (multiples of `u`). Other ratios require written justification.

---

## 2. Lattice

**The 45° rhombic nuqta lattice** is the governing geometry. Two diagonal line families at pitch 2u, intersecting where `(x+y)` and `(x−y)` are multiples of 2u.

```
u=16, pitch 2u=32:

   \  /  \  /  \  /
    \/    \/    \/
    /\    /\    /\
   /  \  /  \  /  \
```

**Every vertex of every mark sits on a lattice intersection.** No vertex floats off-grid. The lattice is the load-bearing construction; it is drawn only when load-bearing (in pattern studies, in construction diagrams), never as decoration.

---

## 3. Canonical master construction

**Bounding box: 8u × 8u**, centered in a 16u × 16u canvas (256 × 256 at u=16). Clearspace 2u (per spec §8).

**Substrate (matrix):** a chamfered octagon = square with 2u × 2u corners cut at exact 45°.

| vertex (clockwise from top-left chamfer start) | coord (u=16) |
|---|---|
| 1 | (160, 64) |
| 2 | (192, 96) |
| 3 | (192, 160) |
| 4 | (160, 192) |
| 5 | (96, 192) |
| 6 | (64, 160) |
| 7 | (64, 96) |
| 8 | (96, 64) |

Every coordinate is a multiple of `u` → every vertex is on a lattice intersection.

**Impression (counter):** a 4u × 4u rhombus, centered, tips on lattice intersections.

| vertex (clockwise from top) | coord |
|---|---|
| 1 | (128, 96) |
| 2 | (160, 128) |
| 3 | (128, 160) |
| 4 | (96, 128) |

**Walls** between the octagon outer edge and the counter inner edge: 2u on the axial directions, 2.83u on the chamfer diagonals (≥ 2u spec floor). No wall is thinner than `u` anywhere in the construction.

**Nuqta (attestation):** a 1u × 1u rhombus, centered at the lattice center (128,128).

| vertex | coord |
|---|---|
| 1 | (128, 120) |
| 2 | (136, 128) |
| 3 | (128, 136) |
| 4 | (120, 128) |

**Path strategy:** the substrate + counter are a **single evenodd path** (the only way to guarantee a true counter that reverses cleanly). The nuqta is a separate fill path placed on top of the counter.

---

## 4. Optical corrections

Applied at render time, not stored in the master path (the master path is the geometric truth).

- **Diagonal thickening:** diagonals read ~7% thinner than horizontals/verticals; at small sizes apply a `×1.07` scale on the diagonal strokes (here the chamfered edges). At master scale the 2u wall is already ≥ 2u so the correction is implicit.
- **Pointed-vertex overshoot:** rhombus tips overshoot alignment by `u/16` to `u/8` (`u/16 = 1px` at master). Applied as `M128 95` instead of `M128 96` for the top of the counter, etc. — the design master omits this and applies it at the render step to keep the geometry mathematically pure.
- **Inner nuqta: never smaller than `u/2`.** At master scale `u/2 = 8px` is the minimum. At 16px native, the nuqta is `0.5u = 1px` and is the floor; below 16px the nuqta is dropped (the impression alone carries the mark — see §6).
- **Anti-moiré:** because the mark is expanded fill on a 45° chamfered form, no thin parallel strokes produce moiré. The construction is anti-moiré by design.

---

## 5. Negative space minimums (production)

| Size | Counter | Wall | Chamfer | Nuqta |
|---|---|---|---|---|
| Master (256px) | 64px | 32px | 32px | 16px |
| 64px | 16px | 8px | 8px | 4px |
| 32px | 8px | 4px | 4px | 2px |
| 24px | 6px | 3px | 3px | 1.5px |
| **16px (proof)** | **4px** | **2px** | **2px** | **1px** |
| ≤12px | impression only | — | — | dropped |

All integer-even at every scale step. No sub-pixel ambiguity.

---

## 6. Responsive rule

| Size | Required asset | Construction |
|---:|---|---|
| 256px+ | master | full construction (8u × 8u, all features) |
| 64–128px | master | full construction, all features visible |
| 32–48px | compact | full construction, render at native scale |
| 20–24px | favicon-grade | impression + counter, **nuqta dropped** |
| 16px | 16px native | impression + counter + 0.5u nuqta (1px) |
| ≤12px | impression only | impression + counter, no nuqta |

The mark is **never a different construction** at small sizes. The same chamfered octagon + counter + nuqta is the only geometry; responsive change is rendering decisions, not new shapes.

> **Nuqta-drop is an optical-correctness decision, not a new shape.** When the nuqta is omitted (`≤24px` favicon/app-icon/avatar grade), it is because the 1px detail cannot survive at that physical size without filling the void — a sub-pixel rendering artifact, not a redesigned alternative. The master (with nuqta) remains the single source of truth; the small-size assets are the same construction rendered for legibility. This is stated explicitly so the dropped-dot files are never mistaken for a variant mark. (Red-team Finding 1.)

---

## 7. Reverse / dark-mode behavior

The mark is **reverse-native**: swap substrate fill and page fill; the counter and nuqta are already on the correct side. Zero path edits are required. A master file with `currentColor` fill inverts by changing the foreground color; a master with explicit fills is rendered twice (positive + negative) and shipped as two assets.

**Substrate chamfer is the only place the counter's optical center can drift** under reverse; verified: at 16px the 8px counter + 4px walls remain ≥ 4px in both directions on both fills.

> **Fill contract (Red-team Finding 3):** the production master uses `currentColor` so it is theme-native (inherits the caller's foreground). The reverse variant is definitionally two-color (explicit dark substrate `#111111` + contrasting `#FFFFFF` mark) and therefore uses explicit fills. This is a stated rule, not an inconsistency: **master = `currentColor`; reverse = explicit two-color.** Downstream pipelines must not expect a single fill scheme across both.

---

## 8. Clear space and minimum size

**Clear space:** 2u on all sides of the master bbox. No element (type, illustration, frame) may enter this 2u band. The clearspace is derived from the chamfer dimension (2u) and is therefore proportional to the mark, not a fixed pixel value.

**Minimum size:**
- Print: 8mm (counter 2mm ≥ minimum die-cut tolerance).
- Screen: 16px native (counter 4px, walls 2px — all ≥ 2px subpixel-safe).

---

## 9. Color

Per `02-COLOR-CANDIDATE-SYSTEM.md` the current work is monochrome (`currentColor`). The mark must survive at 100% black on white, 100% white on black, and a single ink color on any substrate. **Color never carries meaning** in the mark. The mark's meaning is encoded in geometry, not color.

---

## 10. Reproduction limits (die / foil / print / embroidery)

| Medium | Minimum | Why |
|---|---|---|
| Blind emboss / deboss | 8mm mark (counter 2mm) | 0.4mm relief line, 0.5mm gap, 0.8mm counter floor |
| Foil stamp | 8mm mark | 0.2mm line, 0.3mm knockout |
| 1-color screen print | 8mm mark | 0.2mm positive, 0.3mm negative |
| Embroidery | 20mm mark, simplified (nuqta dropped) | 1.5–2mm detail floor |
| Digital | 16px (own construction) | sub-pixel safe |

---

## 11. Hygiene rules (every SVG)

1. `viewBox` present; square for any icon-intended mark.
2. **Integer-only** coordinates; `.5` allowed; no further decimals.
3. **No** filters, gradients, raster, base64, external refs.
4. **Single fill** (`currentColor` or explicit) for the mark; reverse variant uses explicit two-color.
5. **Counters via `fill-rule="evenodd"`** on a single path — never background-color knockouts.
6. **No** `<use>` for the production mark (each variant is a self-contained file).
7. **No** bare strokes in final marks — expanded fills only.
8. Opening comment includes `<!-- KHATIM — … — DEVELOPMENT CANDIDATE / NOT FINAL -->`.
9. `role="img"` and `aria-label`/`aria-labelledby` present on every file.
10. Validates as XML in any conforming parser (no phantom `</rect>` or stray tags).

---

## 12. The mark as a system primitive

The mark is the **smallest meaningful unit** of the brand's visual system. Everything in the system reduces to it:

- **Container:** an 8u × 8u field that *may* be the impression, *may* be the matrix, *may* be the un-pressed substrate, *may* be the reverse. Documents are fields of these units.
- **Pattern:** a 45°-aligned lattice of these units at varying states (matrix, impression, displaced, un-pressed).
- **Icon:** each unit is a state, the state is a meaning, the meaning is a behavior.
- **Motion:** the press is the transition matrix → impression, one unit at a time, never a fade, never a slide.
- **Wordmark:** the cap height of any paired typography equals `5u`; the wordmark sits on the same baseline as the mark's lattice line at `5u` from the mark center.

The mark is the **atom** of the system. Every other element is a molecule of atoms.

*End of geometry spec.*
