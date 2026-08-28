# PHASE 4C — 10 System Development

> **Date:** 2026-08-27
> **Primary:** F1 — The Witnessed Letter
> **Status:** Canonical identity assets developed. All placeholders marked.

---

## Asset Inventory

### /design/phase-4c/svg/ (Master & Variants)
| File | Purpose | viewBox | Notes |
|---|---|---|---|
| `khatim-master.svg` | Canonical mark | 256×256 | Construction grid u=16, exact geometry |
| `khatim-16px.svg` | Favicon / minimum size | 16×16 | u=1, dot reduced to 1px, arms thickened |
| `khatim-reverse.svg` | Dark backgrounds | 256×256 | `#FFFFFF` mark on `#111111` field |
| `khatim-mono.svg` | One-color applications | 256×256 | `currentColor` native |

### /design/phase-4c/responsive/
| File | Size Range | Modification |
|---|---|---|
| `khatim-compact.svg` | 32–48px | Slightly thicker arms, dot = 2px diamond |
| `khatim-favicon.svg` | ≤24px | Dot may drop; stem+arms only |
| `khatim-app-icon.svg` | 1024×1024 tile | Centered on rounded-square container (container is application, not mark) |
| `khatim-social-avatar.svg` | 400×400 | Centered on neutral field |

### /design/phase-4c/lockups/
| File | Configuration |
|---|---|
| `lockup-latin-ltr.svg` | Symbol left + KHATIM right |
| `lockup-arabic-rtl.svg` | خاتم right + Symbol left (RTL reading) |
| `lockup-bilingual-ltr.svg` | KHATIM — Symbol — خاتم |
| `lockup-bilingual-rtl.svg` | خاتم — Symbol — KHATIM |
| `lockup-tripartite.svg` | Stacked: symbol top, KHATIM middle, خاتم bottom (ceremonial) |

### /design/phase-4c/patterns/
| File | Concept |
|---|---|
| `pattern-witness-field.svg` | Scattered F1 marks at varying opacity (attestation field) |
| `pattern-stem-lattice.svg` | Repeating stem geometry at 45° (structural texture) |
| `pattern-i'jam-crown.svg` | Dot-only field (verification-state texture) |

### /design/phase-4c/icons/
| File | Purpose |
|---|---|
| `icon-verified.svg` | F1 with dot (attested state) |
| `icon-unverified.svg` | F1 without dot (unattested state) |
| `icon-witness.svg` | Dot alone (the witness point) |
| `icon-seal.svg` | F1 in a circular container (document seal application) |

### /design/phase-4c/applications/
| File | Purpose |
|---|---|
| `app-document-header.svg` | Letterhead with pattern + lockup |
| `app-certificate-seal.svg` | F1 as embossed seal on certificate |
| `app-verification-ui.svg` | Dot-state animation frames (4 frames) |

---

## Motion Principle

**The Witnessing Reveal**
- Default state: F1 without dot (unwitnessed letter = ح).
- Attestation event: Dot descends from above and seats at the I'jam register.
- Duration: 300ms ease-out.
- The motion is **vertical descent** — the dot "falls into place" like a seal stamp.
- This echoes both the I'jam (dot is added to complete the letter) and the physical act of sealing.

---

## Verification UI Behavior

| State | Visual | Meaning |
|---|---|---|
| Unwitnessed | F1 stem + arms only | Document not attested |
| Witnessing | Dot descending | Attestation in progress |
| Witnessed | F1 with dot seated | Document attested |
| Sealed | F1 with dot + stem glow | Final, irreversible |

---

## Physical Applications

- **Emboss/Deboss:** The stem geometry has clean verticals and 45° angles that tool well in metal and paper.
- **Environmental:** F1 at large scale (≥1m) reads as architectural — the stem becomes a pillar, the arms become beams.
- **Developer docs:** The mark's construction grid (u=16, 45° lattice) is publishable as a technical specification, reinforcing the "exact" brand personality.

---

## Placeholder Markers

Every wordmark SVG contains:
```xml
<!-- FONT PLACEHOLDER — DO NOT SHIP -->
```
Final typography is gated by Phase 5.

*End of system development.*
