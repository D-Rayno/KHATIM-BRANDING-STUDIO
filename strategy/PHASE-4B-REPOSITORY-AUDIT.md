# PHASE 4B — Repository Audit

> **Date:** 2026-08-27
> **Status:** FORENSICS — this audit is read-only. It documents the inherited state and does not modify any canonical asset.
> **Purpose:** establish what exists, what is strong, what is weak, what must be preserved, and what must be re-entered into exploration before any Phase 4B design work.

---

## 1. Current state (git)

- Branch `master`, working tree clean, synced with `origin/master`.
- All prior Phase 4 work is committed (`b7699a7` rebuild, `95c8865` agents). Nothing uncommitted at audit start.
- No live blockers; the external gates (name clearance, buyer validation, MVP scope) remain open but do not gate exploration.

---

## 2. Current active assets (`design/phase-4/`)

### svg/ (the mark set)
| Asset | Geometry |
|---|---|
| `khatim-impression-master.svg` | 256 viewBox, u=16, chamfered octagon bbox 8u, 4u rhombic counter (evenodd), 1u nuqta — `currentColor` |
| `khatim-impression-16px.svg` | 16 viewBox, u=2, same construction (counter 8, walls 4, chamfer 4, nuqta 1) |
| `khatim-impression-reverse.svg` | explicit `#111111` rect + `#FFFFFF` mark |
| `khatim-matrix-state.svg` | octagon only (un-pressed substrate) |

### responsive/
| Asset | Purpose |
|---|---|
| `khatim-impression-compact.svg` | 32–48px |
| `khatim-impression-favicon.svg` | ≤24px (nuqta dropped) |
| `khatim-app-icon.svg` | rounded square tile |
| `khatim-social-avatar.svg` | 400 viewBox on neutral field |

### wordmarks/ (ALL placeholder type, tagged DO-NOT-SHIP)
- `khatim-wordmark-latin.svg`, `khatim-wordmark-arabic.svg`
- `khatim-lockup-horizontal-ltr.svg`, `khatim-lockup-horizontal-rtl.svg`, `khatim-lockup-tripartite.svg`

### patterns/
- `khatim-pattern-field-of-impressions.svg`, `khatim-pattern-lattice.svg`

### boards/
- `khatim-brand-system-board.svg`, `khatim-application-system.svg`, `candidate-comparison.svg`

### documentation/ + concepts/ + deprecated/
- 5 spec/decision docs; 6 concept SVGs (candidate A–D + matrix + 16px); deprecated/ holds the old displacement set (6 SVGs + README), including the one malformed file.

---

## 3. The current master mark, honestly appraised

**The mark:** chamfered octagon (square with 2u corners cut at 45°) → 4u rhombic void → 1u nuqta dot at center.

**What it accomplished (genuine).**
- Closed the previously open lattice → it now has a decisive outer silhouette. A real improvement over the Phase 4 failure.
- Centered the event → the void is the optical center of gravity, not a buried cell.
- Made a nuqta perceivable → the center dot is visible (though marginal).
- Engineering hygiene is clean: single evenodd path, currentColor, reverse-native, integer geometry, valid XML, scales to 16px from its own construction.

**What it did NOT solve (the Phase 4B seam).** These are not cosmetic nits; they are the reasons this mark cannot be treated as final:
1. **The chamfered octagon is saturated.** A square-with-cut-corners is the single most common "AI-generic" / tech-tile / SaaS geometry in circulation. It reads as *competent geometry*, not *identity*. A viewer who sees the octagon for two seconds and not the story is seeing a template.
2. **The diamond-void move is Finalist B's, which Phase 3 killed as a standalone mark** for "strategic emptiness / mute on witness." The octagon+diamond wraps B's independently-weak gesture in a common frame. The Phase 4B brief is right to interrogate it.
3. **The "nuqta" is a story, not a structure.** A 1u dot at the center does not make the Arabic connection *functional*. In Arabic, the nuqta *changes meaning by its position relative to a letter*. Here the dot sits in empty space — it does not complete or alter anything, so it reads as decoration-by-caption, not as structural Arabic. This is precisely the "asserted more than demonstrated" failure Phase 4B flags.
4. **Copyability is unsolved at form level.** Octagon + diamond + dot is a stock composition a competitor could rebuild in an afternoon. The Phase 3 red team explicitly said A's copyability attack "was never solved, only relocated to system level." This mark inherits that unsolved seam.
5. **"Displacement" is still not physically encoded.** A hollow octagon reads as a *frame with a hole*, not as a die acting on a substrate to produce a recessed impression. There is no sense of presence→absence, only silhouette→void.

**Honest verdict:** the current mark is a competent, well-engineered *candidate*, but it is **not** a distinctive world-class identity and it does **not** structurally demonstrate the Arabic/witness logic. It is one candidate among many to be tested — not the presumptive winner. The Phase 4 team self-scored it 7.5/10; that score carries builder bias and must be re-derived by a fresh panel.

---

## 4. What must be PRESERVED (the durable, non-negotiable inheritance)

From strategy + Phase 3 (not optional, evidence-based):
- **The idea:** "one permanent change in a uniform field = attestation"; a trusted digital event leaves permanent, identifiable proof (Matrix → Impression / private event → public proof). Name-agnostic.
- **The nuqta metrology:** 45° rhombic nuqta lattice as *load-bearing structure* (every vertex on a lattice node), never decoration; a perceivable, provable construction — not an invisible claim.
- **The module:** u / nuqta rhombus u×u / pitch 2u / stroke s=u/2 / counters ≥2u / gaps ≥u / ratio set 1:2:3:5:8 / clearspace 2u / optical corrections (overshoot u/16–u/8, diagonal ×1.07).
- **Bilingual binding:** alif height = Latin cap = 5u (tentative), clearspace 2u, Arabic ~115–125% of Latin, Latin tracked +2–6%, "never translate, always pair," RTL→Arabic leads / LTR→Latin leads, symbol name-agnostic.
- **Deboss discipline:** flat geometric (no tone) is the strongest reading; physical deboss only under a rendering spec that does not yet exist; no emboss filters / texture clip-art.
- **System discipline:** monochrome-first; reverse-native; single decisive silhouette; one verb (the press); one gesture per surface; responsive tiering.
- **Anti-lists (all of them):** no shields/padlocks/keys/checkmarks/circuit boards/hex/hacker glow; no rounded-cheerful SaaS; no columns/crests/banknote costume; no arabesque/signet/wax/orientalism/jewelry; no crypto/Web3 slang; no cheap skeuomorphism; no literal witness (eyes/figures/notary).
- **Honest gating:** nothing is final; name clearance / buyer validation / MVP scope remain external.

---

## 5. What must be ABANDONED / RE-ENTERED

- **Do NOT resurrect the open hairline diamond lattice** (Phase 4 pre-rebuild) — rejected by the takeover audit and six specialists.
- **Do NOT auto-promote the current Octagon+void+nuqta** — it is a candidate, not the answer (see §3).
- **Fix the specific "the dot is decorative not structural" failure** — the next mark must make the nuqta *functional* (position/role changes meaning), not a floating center dot.
- **Avoid the "frame + void" familY** as the only logic — it is B's logic and is over-represented. Explore materially different geometric logics.
- **Bilingual must be actually rendered**, not described — zero production-grade proof exists yet.

---

## 6. Known technical debt / deprecated state
- `deprecated/khatim-application-system.svg` is **malformed XML** (phantom `</rect>`) — confirmed, retained only as history, correct to keep quarantined.
- Old displacement set fully superseded and quarantined in `deprecated/`.
- All wordmark/lockup typefaces are **placeholders (DO-NOT-SHIP)**.
- No final palette; no final typeface; no final guidelines — by design.

---

## 7. What Phase 4B must now do
1. Re-enter exploration honestly: 5–6 **materially different** constructions (different geometric logics), including the current one as just one candidate.
2. Put every candidate through black/white, isolated, small-size (128→16px) tests.
3. Make the nuqta *structurally* meaningful in the winner (position-dependent, not decorative center).
4. Actually render خاتم/KHATIM lockups (placeholder type, DO-NOT-SHIP labels).
5. Run a fresh, non-builder adversarial panel (semiotics, competitive red-team) and score honestly.
6. Compare, pick PRIMARY/SECONDARY/RESERVE, develop the primary into a full system.
7. Fresh final audit (fresh reviewer, permission to REBUILD) → gate verdict → handoff.

---

## 8. Preserve / abandon summary table

| Item | Action | Reason |
|---|---|---|
| Displacement idea (one permanent change) | PRESERVE | name-agnostic, ownable, evidence-based |
| 45° nuqta metrology as structure | PRESERVE (make perceivable) | cultural moat, load-bearing |
| Module math (u, ratios, clearspace) | PRESERVE | binding, verified |
| Bilingual pairing rules | PRESERVE | binding, from Agent 04 |
| Monochrome-first / reverse-native / single verb | PRESERVE | sound system discipline |
| Anti-pattern lists | PRESERVE (govern all new work) | locked guardrails |
| Octagon+void+nuqta mark | RE-EVALUATE as one candidate among many | not final; copyable; B-logic; decorative dot |
| Open hairline lattice | ABANDON | audit-rejected |
| "Frame + void" as only logic | DIVERSIFY | B's weak logic, over-represented |
| Floating center "nuqta" dot | REQUIRES restructure | decorative, not functional |
| Wordmark placeholders | PRESERVE as placeholder only | licensing open |
| deprecated/ SVGs | PRESERVE as history | decision record |

*End of repository audit.*
