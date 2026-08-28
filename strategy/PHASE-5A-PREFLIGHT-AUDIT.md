# PHASE 5A — PREFLIGHT AUDIT

> **Date:** 2026-08-28
> **Auditor:** Phase 5A orchestrator
> **Branch:** phase-5a-typography-color

---

## 1. Current Identity State

### Canonical Mark
**F1 — The Witnessed Letter** is the approved primary mark.
- Location: `design/phase-4c/svg/khatim-master.svg`
- Status: LOCKED (per Phase 4C verdict)
- Geometry: cross-glyph K ∩ خ + I'jam dot
- Construction: 45° lattice, u=16, viewBox 256×256

### What F1 Superseded
- Phase 4 "The Impression" (chamfered octagon + rhombic counter + nuqta) — REBUILD verdict
- Phase 4B "The Witnessed Corner" (solid square + opened corner + 45° dot) — REBUILD verdict
- Phase 4C moved from **container-based** to **letterform-based** symbolism

### Transition Documentation
- Phase 4B verdict: `strategy/15-PHASE-4B-VERDICT.md` → REBUILD
- Phase 4C verdict: `strategy/16-PHASE-4C-VERDICT.md` → PASS WITH CONDITIONS
- Phase 4C handoff: `strategy/PHASE-4C-HANDOFF.md` → Phase 5 unblocked
- The transition is fully documented. F1 legitimately superseded previous marks.

---

## 2. Contradictions Found

| # | Contradiction | Severity | Resolution |
|---|---|---|---|
| 1 | `PROJECT-MEMORY.md` lists "Logo geometry: NOT EXPLORED" but Phase 4C has canonical F1 assets | MINOR | Update PROJECT-MEMORY in Phase 5A synthesis |
| 2 | `DECISION-LOG.md` D-012 references "The Impression" as lead mark, not F1 | MINOR | Add D-013 for F1 selection in Phase 5A synthesis |
| 3 | Some Phase 4/4B assets in `design/phase-4/` and `design/phase-4b/` are not explicitly marked deprecated in file names | MINOR | Add deprecation READMEs if needed; do not delete |
| 4 | `OPEN-QUESTIONS.md` still lists "Typography: NOT SELECTED" and "Color system: NOT SELECTED" — correct, but must be resolved in Phase 5A | — | This is the purpose of Phase 5A |

No material contradictions. The repository is coherent.

---

## 3. Canonical Candidate

**F1 — The Witnessed Letter**
- `design/phase-4c/svg/khatim-master.svg` — canonical
- `design/phase-4c/svg/khatim-16px.svg` — responsive
- `design/phase-4c/svg/khatim-reverse.svg` — reverse
- `design/phase-4c/svg/khatim-mono.svg` — monochrome

All responsive, pattern, icon, and application variants are canonical.

---

## 4. Unresolved Decisions

| Decision | Status | Blocking? | Phase 5A Action |
|---|---|---|---|
| Name legal clearance (Codegic) | OPEN | YES (shipping) | NOT blocking Phase 5A exploration |
| Final typography | OPEN | YES | **PRIMARY OBJECTIVE** |
| Color system | OPEN | YES | **PRIMARY OBJECTIVE** |
| Buyer validation | IN PROGRESS | YES (positioning) | Monitor, do not block |
| Trademark filing | NOT STARTED | YES (post-design) | Document specifications |
| Font licensing | NOT STARTED | YES (shipping) | Research and shortlist only |

---

## 5. Assets That Should NOT Be Touched

- `design/phase-4c/svg/khatim-master.svg` — canonical geometry locked
- `design/phase-4c/svg/khatim-16px.svg` — canonical
- `design/phase-4c/svg/khatim-reverse.svg` — canonical
- `design/phase-4c/svg/khatim-mono.svg` — canonical
- All pattern SVGs in `design/phase-4c/patterns/`
- All icon SVGs in `design/phase-4c/icons/`
- All application SVGs in `design/phase-4c/applications/`
- All responsive SVGs in `design/phase-4c/responsive/`
- All Phase 4C strategy documents

---

## 6. Assets That Require Revision

- All lockups in `design/phase-4c/lockups/` — currently use `sans-serif` placeholder text
- `PROJECT-MEMORY.md` — needs update for F1 selection, typography/color status
- `DECISION-LOG.md` — needs D-013 entry for F1
- `OPEN-QUESTIONS.md` — needs updates as questions are resolved

---

## 7. Preflight Verdict

**Repository state: COHERENT. Phase 5A may proceed.**

F1 is the legitimate canonical mark. Previous marks are superseded and documented. No material contradictions. The primary objectives (typography + color) are clearly defined and unblocked.

*End of preflight audit.*
