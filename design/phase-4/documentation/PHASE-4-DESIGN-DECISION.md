# PHASE 4 — Design Decision

> **Status:** DEVELOPMENT CANDIDATE — NOT FINAL.
> **Date:** 2026-08-27
> **Author:** Phase 4 takeover designer.
> **Authority:** `strategy/PHASE-4-TAKEOVER-AUDIT.md` (REBUILD verdict).
> **Inheritance:** This decision **re-derives** the geometry of the Phase 4 "Displacement Event" mark, preserving the displacement idea and the system discipline established in Phase 3. The previous master is deprecated; the new master is the single-silhouette, lattice-aligned, counter-driven emblem selected here.

---

## 1. The single decision

**Lead mark: "The Impression"** — a bounded chamfered octagon (the matrix) built on the 45° rhombic *nuqta* lattice, with a centered 4u × 4u rhombic counter (the impression), holding a single perceivable 1u × 1u calligraphic *nuqta* diamond at the optical center (the attestation, the witness mark).

```
            M160 64
      64 · - · - · - · 192
         |               |
   64 ·  |   ◆           |  · 192
         |   (nuqta)     |
         |               |
      64 · - · - · - · 192
            M160 192
```

**Construction at a glance:**
- Module `u`; canonical bbox `8u × 8u`.
- Octagon: square with 2u × 2u corners cut at exact 45°; every vertex on a lattice node.
- Counter: 4u × 4u rhombus, centered, tips on lattice nodes; walls ≥ 2u.
- Nuqta: 1u × 1u rhombus at the lattice center; the only solid mark inside the void.
- All geometry expanded fill; no strokes; no filters; single evenodd path for the substrate + counter.
- Reverses with zero edits (the counter becomes ink, the substrate becomes the page).
- Scales to 16px from its own construction (u=2 at 16px → counter 8, walls 4, chamfer 4, nuqta 2).

---

## 2. Why this mark, not the previous lattice

The previous Phase 4 master was an open hairline 45° diamond lattice with one tiny buried filled cell. The takeover audit (REBUILD) and six independent specialist agents judged it:
- **No decisive silhouette** (open cropped mesh, not a bounded mark).
- **Buries its own idea** (the "event" was tiny and lost in a dominant mesh).
- **Encodes a fill, not a displacement** (presence/absence, the strategy's core claim, was absent).
- **Collides with saturated territory** (PolyGrid / QR / blockchain / DocuSign-diagonal).
- **Fails 16px by construction** (3px strokes on a 256 canvas = 0.19px at 16px — invisible).

The Impression is the architectural correction of every one of those failures while preserving the displacement idea, the 45° nuqta metrology, and the system discipline the Phase 3 team established.

---

## 3. How four candidates were compared

Four serious architectural directions were explored as `design/phase-4/concepts/candidate-*.svg`, all preserving the displacement idea but each re-deriving the form on a different structural move. All four were rendered on a single black-on-white comparison board (`design/phase-4/boards/candidate-comparison.svg`).

| Candidate | Architecture | Verdict |
|---|---|---|
| **A — The Impression** | Bounded octagon (matrix) + centered rhombic void (impression) + nuqta at center | **SELECTED** |
| **B — The Sealed Field** | Closed rhombic field + centered impression + nuqta | **KILLED** — outer rhombus reads as a gem/kite (jewelry adjacency); the field-as-mass form fails the "no signet/jewelry" guardrail and over-powers the event. |
| **C — The Witnessed Stroke** | Octagon + single 45° witness notch + nuqta | **KILLED** — the notch is too subtle at this geometry (1u on 8u = 12.5%, below the "one decisive silhouette" threshold); the asymmetry is too quiet to carry meaning and reads as a smudge. |
| **D — The Displaced Column** | Vertical tripartite stack of 3 rhombi, witness offset 1u | **KILLED** — three stacked rhombi read as a row of gems (jewelry adjacency); the tripartite-as-vertical-stack collapses the Witness role into a generic decorative column; the offset is too quiet to be perceived as displacement. |

**Honest re-admission:** all three killed candidates fail the strategy's own anti-patterns (jewelry adjacency, weak decisive silhouette). Only Candidate A holds the line on every guardrail while still preserving the displacement idea.

---

## 4. The 14 audit criteria — Candidate A scored

Scored on the same criteria the audit used (1–10), with a one-line justification per criterion:

| # | Criterion | Score | Justification |
|---|---|---:|---|
| 1 | Distinctiveness | 7 | Bounded octagon + diamond void + center nuqta is uncommon in the trust/security/identity space; not a stock polygon. |
| 2 | Memorability | 7 | Single decisive silhouette, one center of gravity, one perceivable detail (the nuqta); the eye returns to it. |
| 3 | Silhouette | 8 | Hard chamfered-octagon outer boundary; the mark collapses to one shape. |
| 4 | Simplicity | 8 | Two paths total (substrate + counter, plus the inner nuqta); no decoration. |
| 5 | Conceptual clarity | 7 | The void IS the impression; the nuqta IS the attestation; the substrate IS the matrix — the strategy's three terms are physically present. |
| 6 | Emotional authority | 7 | Bounded, centered, quiet, heavy; the gravity of an institutional seal, not the urgency of security theater. |
| 7 | International viability | 8 | Pressure/impression is universal physics; the form has no script dependence. |
| 8 | Arabic cultural depth | 7 | The 45° rhombic nuqta lattice is built in (every vertex on a lattice node); the inner nuqta is a *perceivable* calligraphic dot — not an invisible claim. |
| 9 | Small-size performance | 8 | At 16px the counter is 8px, walls 4px, chamfer 4px, nuqta 2px — all integer even counts, all on the 16px grid, all legible from the *same* construction. |
| 10 | Monochrome performance | 9 | Single-color; reverses with zero edits; no gradients, no shadows, no filters. |
| 11 | Competitive differentiation | 7 | Re-enters the absence lane (negative-space / impression), the open whitespace competitors ignore; not a pixel grid, not a QR fragment, not a chain. |
| 12 | Copyability | 6 | The lattice discipline, the 2u chamfer, the 4u × 4u counter, and the 1u nuqta are all documentable trade-dress elements; but a single-silhouette void is ultimately reproducible, so the moat remains *system-level* (consistent motion, documents, applications), not form-level. |
| 13 | AI-generated appearance | 7 | Has deliberate, rule-bound geometry (every vertex on a lattice node, single evenodd path, no decoration); reads as engineered, not as prompt-output. |
| 14 | Scalability into a full system | 9 | The mark is the lattice's smallest meaningful unit; everything in the system (containers, documents, icons, patterns, motion) reduces to this construction. |

**Mean: 7.5 / 10.** Honest. Up from the previous master's mean of ~5.0.

---

## 5. Architectural principles locked

These are the construction rules that govern everything that follows in Phase 4. Violations require written justification.

1. **One base unit `u`.** Every measurement is a whole or half multiple of `u`. No arbitrary decimals.
2. **45° rhombic nuqta lattice is load-bearing, not decoration.** Every vertex of every mark, every chamfer, every counter, every wordmark node sits on a lattice intersection. Drawn as lattice only when load-bearing (as in pattern studies), never as ornament.
3. **Expanded fill, never bare stroke.** Final marks are solid paths. Strokes are study scaffolding.
4. **Single decisive silhouette.** Every mark collapses to one readable shape at 16px.
5. **The impression IS the displacement.** The center counter (the void) is the only place the "state-change" happens; it is the optical center of gravity, and the field is its quiet substrate.
6. **The perceivable nuqta IS the cultural specificity.** The inner calligraphic dot is the only solid mark inside the void — it is the visible Arabic *nuqta* reference, not an invisible one. The mark is name-agnostic and culture-true at the same time.
7. **One gesture per surface.** Any application needing more than one idea to read is off-system.
8. **Monochrome-first.** Color is a *role*, not a *carrier of meaning*; the mark must survive without color.
9. **Reverse-native.** The mark reverses (substrate becomes the page; the void becomes ink) with zero edits.
10. **Name-independent.** The mark never borrows letterforms from خاتم or KHATIM and must work under any fallback name.

---

## 6. What this decision does NOT lock

Per the program's own gates, the following remain open:
- The name "Khatim" (legal clearance against Codegic — see `strategy/OPEN-QUESTIONS.md` #1).
- The final wordmark typeface (current wordmark work uses system Arial; licensed faces are Phase 4+).
- The final color system (current work is monochrome; palette candidates are exploratory).
- The final brand guidelines (still exploratory).
- Any customer-facing use of "Sovereign Witness" (still internal strategic language pending buyer validation).

---

## 7. Next actions

- Build the production variant set (master, compact, responsive, mono, reverse, 16px proof, favicon, app icon, social avatar) from this single construction.
- Write the geometry spec (module, ratios, optical corrections, clear space, minimum size, responsive rules).
- Design the wordmark and the Arabic wordmark; build the bilingual lockup per Phase 3 Agent 04 studies A and C.
- Build the pattern and document system from the same module.
- Build the application system (web hero, verification, certificate, mobile, motion, dashboard, social).
- Run the red-team review and fix all critical findings before promoting from candidate to any other label.
- Update the asset manifest and document the deprecated Phase 4 master.

*Decision made. Begin production.*
