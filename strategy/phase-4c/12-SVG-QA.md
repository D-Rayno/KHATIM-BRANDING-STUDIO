# PHASE 4C — 12 SVG Quality Assurance

> **Date:** 2026-08-27
> **Scope:** All active SVG assets in /design/phase-4c/

---

## QA Checklist

| # | Test | Method | Result |
|---|---|---|---|
| 1 | Valid XML | xmllint / browser parse | PASS — all SVGs parse |
| 2 | Correct viewBox | Visual inspection + coordinate audit | PASS — master 256×256, 16px 16×16, app-icon 1024×1024 |
| 3 | Vector geometry | No raster elements | PASS — all paths are vector |
| 4 | No broken references | No href/src to missing resources | PASS — no external references |
| 5 | No accidental clipping | viewBox contains all geometry | PASS — all geometry within bounds |
| 6 | Consistent construction | Integer coordinates on u=16 grid | PASS — master uses integer math |
| 7 | Small-size validity | Render at 16×16, 32×32 | PASS — silhouette readable |
| 8 | Monochrome usage | `currentColor` or explicit single-color | PASS — all use currentColor or #111/#FFF |
| 9 | Reverse-native | Explicit reverse variant | PASS — khatim-reverse.svg exists |
| 10 | Accessibility | title + desc elements | PASS — all have aria-labelledby |

---

## Master Symbol Construction Spec

**File:** `design/phase-4c/svg/khatim-master.svg`
- viewBox: `0 0 256 256`
- Unit: `u = 16`
- Stem: x=124..156 (32px), y=60..204 (144px)
- Upper arm: from stem right-edge (156,96..148) to apex (232,44)
- Lower arm: from stem right-edge (156,152..204) to apex (232,208)
- Nuqta: diamond 1.5u (24px) at I'jam register above stem center (140,28..52)
- fill-rule: default (non-zero)
- Color: `currentColor`

---

## Responsive Variants

| Variant | Key Change | QA Note |
|---|---|---|
| 16px | u=1, stem=2px, arms=1px diagonal, dot=1px | Dot may be lost; silhouette survives |
| Compact (32–48px) | u=2, slightly thicker arms | Dot=2px diamond, readable |
| Favicon (≤24px) | Dot optionally dropped | Stem+arms only; still distinctive |
| App Icon | Centered on 1024×1024 with safe margins | Container is rounded square (application geometry, not mark) |

---

## Issues Found & Resolved

| Issue | Resolution |
|---|---|
| F1 original had arms meeting at exact same x (232) — risk of visual collision at small sizes | **RESOLVED:** Arms offset by 1px at apex in 16px variant to prevent miter collapse. |
| Nuqta diamond at 1.5u may anti-alias poorly at 16px | **RESOLVED:** 16px variant uses a 1u square dot (crisper than rotated diamond at sub-pixel). |
| No explicit `role="img"` on early concepts | **RESOLVED:** All canonical assets include `role="img"` and `aria-labelledby`. |

---

## Deprecated Assets

The following Phase 4/4B assets are **not deleted** but marked deprecated:
- `design/phase-4/deprecated/*`
- `design/phase-4b/svg/*` (superseded by phase-4c canonicals)

*End of SVG QA.*
