# PHASE 4 — Applications

> **Status:** DEVELOPMENT CANDIDATE — NOT FINAL.
> **Scope:** how the impression mark and its system surface across the digital-trust application surfaces: web, verification record, certificate, mobile, motion, dashboard, and social.
> **Related:** identity system (`PHASE-4-IDENTITY-SYSTEM.md`), geometry (`PHASE-4-GEOMETRY-SPEC.md`), board render `../boards/khatim-application-system.svg`.

---

## 1. Application principle

Every application surface is judged by one question: **does the mark help the user trust what they're looking at?** The mark is never decorative; it is always doing verification work. When the mark appears, it is because something is being attested.

The surfaces are arranged by trust-intensity, from the aspirational (web hero) to the operational (dashboard) to the decisive (certificate / verification record).

---

## 2. Web hero

**Role:** introduce the company and its promise in one breath.

**Layout logic:** wordmark top-left; a large impression mark as the "seal" anchoring the hero's trust claim; a headline that states the displacement idea in plain language: *"A document becomes a permanent record."*

**Mark behavior:** the mark appears at full construction (matrix → impression → attested) as a quiet anchor, not an oversized decal. The counter and nuqta must be legible at hero scale, so the construction is never enlarged beyond the point where the voids remain crisp.

**Rules:** one mark per hero. Never add a second mark "for balance." The mark sits left-of-type or across center of a left-aligned layout, sized to the type's x-height, never scaled to fill the viewport.

---

## 3. Verification record

**Role:** the product's highest-trust surface — the place a user checks "is this real?"

**Layout logic:** dark field (signals "permanent record," not marketing). Fields read as a ledger: hash, time, state, witness. The state **PERMANENT** is the center of the surface. The mark is the reverse (white-on-dark) impression, seated at the record's corner as a seal.

**Mark behavior:** the mark here is not decorative — it is the record's signature stamp. It is the **impression + nuqta (attested)** state, white fill on the dark field. It must survive at small sizes (≈48px) because the record may be printed or screenshot at scale.

**Rules:** the mark confirms, it does not decorate. One seal per record. The state word (PERMANENT / VERIFIED / WITNESSED) is always set in type near the seal, and the seal always faces the state text, never a corner away from it.

---

## 4. Certificate

**Role:** a formal, printable record of attestation — a document people will file.

**Layout logic:** quiet, generous paper; the mark in **tripartite lockup** (Arabic — 2u hairline — symbol — 2u hairline — Latin) at the attestation line where a wax seal would sit, paired with a timestamp and parties. The construction module governs the lockup's spacing.

**Mark behavior:** certificate use is the one place the mark may appear at larger-than-icon scale, because a certificate's whole job is to be examined closely. The impression + nuqta is rendered full construction, monochrome on paper. Optional blind-emboss reproduction (≥8mm) is specified in the geometry spec's reproduction limits.

**Rules:** the symbol sits on the attestation line with the parties and timestamp — it *commits* to the record, it does not merely sit at the top of the page. The nuqta (attestation) is the load-bearing detail here; it must not be dropped.

---

## 5. Mobile

**Role:** the verification surface in a pocket — where small-size legibility decides whether the brand reads as trustworthy.

**Layout logic:** a single attested mark at top or center confirming the screen's state ("Verified" + evidence hash). Whitespace dominates. The mark is the reverse impression at ≈40–64px on dark, or the positive impression on light.

**Mark behavior:** **this is where the responsive rule bites.** At the app-icon scale the mark is the impression (void, no nuqta); at the in-app verification size the full attested mark returns. The 16px native proof (`../svg/khatim-impression-16px.svg`) and the favicon-grade asset (`../responsive/khatim-impression-favicon.svg`) define the two mobile/icon scales. Never render the full marked construction below 16px and never render a "half" construction the spec does not define.

**Rules:** one state per screen. A screen that verifies shows the attested mark; a screen that is processing shows the matrix (un-pressed) — this is the system's honesty and its motion grammar in one gesture.

---

## 6. Motion

**Role:** to express the single verb **the press** — the state-change that is the identity's only motion.

**Sequence (matrix → impression → attested):**
1. A matrix unit (substrate octagon, empty).
2. The rhombic void presses in — fast, sharp, no easing overshoot, ~120ms.
3. The nuqta drops at the void's center — ~80ms later, smaller, decisive.
4. The state is **permanent**. Nothing animates again. No pulsing, no glow, no loop.

**Rules:** the press is instant and irreversible, like a real seal. No fade (fades hide the displacement), no slide (slides deny the press), no bounce (bounces deny permanence). If a system needs to convey "loading," the matrix state holds still — it does not spin.

---

## 7. Dashboard / operations surface

**Role:** the operational home — status, history, state of many records.

**Layout logic:** the pattern (**field of impressions**) appears as a low-contrast system surface: a 45° lattice of units, mostly attested, with the occasional matrix unit for records awaiting press. This is the brand's "system in action": many fields, each in its own state, all governed by the same module.

**Mark behavior:** no single mark dominates. The pattern is the surface; individual verified records show one attested mark each. The pattern's contrast is capped (low-opacity lattice) so it never competes with content — the pattern is the substrate, never the message.

**Rules:** the field pattern is a surface treatment, not a logo placement. One attested mark per verified record. A record awaiting press shows a matrix unit — the state never lies.

---

## 8. Social avatar / app icon

**Role:** the mark at platform-constraint sizes where recognition must survive extreme reduction.

**Mark behavior:** app icon uses the impression (void, no nuqta) on a rounded-square tile; social avatar uses the full impression on a neutral substrate with generous safe-area. Both are single-state, monochrome-friendly, and carry no text (per platform rules).

**Rules:** at these sizes the nuqta is dropped per the responsive rule — legibility of the chamfered octagon + void carries recognition; the nuqta is a large-format / close-examination feature.

---

## 9. Trust-intensity map

| Surface | Trust intensity | Mark state | Mark size |
|---|---|---|---|
| Web hero | low (aspirational) | attested | medium, anchored |
| Dashboard | medium (operational) | field + per-record | small pattern |
| Mobile | medium-high | attested / matrix | 40–64px |
| Verification record | high | attested | ≈48px reverse |
| Certificate | highest | attested, tripartite lockup | large / close-exam |

The mark's presence scales with the trust being extended — a truthful system does more work where more is at stake.

*End of applications.*
