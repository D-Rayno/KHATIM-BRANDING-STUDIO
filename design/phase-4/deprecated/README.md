# Deprecated Phase 4 SVG Assets

> These assets are the **previous Phase 4 master and its derivatives**, deprecated by the takeover audit (`strategy/PHASE-4-TAKEOVER-AUDIT.md`) and replaced by the rebuilt "Impression" mark in `../svg/` and `../responsive/`.

## Why deprecated

The takeover audit's REBUILD verdict, corroborated by six independent specialist agents, found that the previous master:

- had **no decisive silhouette** (open hairline lattice, not a bounded mark);
- **buried its own idea** (the "event" was a tiny filled cell in a dominant mesh);
- encoded a **fill toggle, not a displacement** (presence/absence was absent);
- **failed 16px by construction** (3px strokes on 256 = 0.19px at 16px);
- collided with the **PolyGrid / QR / blockchain / DocuSign-diagonal** register;
- violated the **binding vector spec** the project itself established in Phase 3.

The replacement mark — `khatim-impression-master.svg` — is a bounded chamfered octagon (matrix) with a centered rhombic counter (impression) and a perceivable calligraphic nuqta at the optical center (attestation). All geometry on the 45° nuqta lattice, single evenodd path, expanded fill, reverses with zero edits, scales to 16px from its own construction.

## File map (old → new)

| Deprecated | Replacement | Why |
|---|---|---|
| `khatim-displacement-master.svg` | `../svg/khatim-impression-master.svg` | Lattice → bounded octagon+impression+nuqta |
| `khatim-displacement-compact.svg` | `../responsive/khatim-impression-compact.svg` | Cluster → same construction, responsive |
| `khatim-displacement-negative.svg` | `../svg/khatim-impression-reverse.svg` | Inversion study → real reverse rendering |
| `khatim-displacement-16px.svg` | `../svg/khatim-impression-16px.svg` | Substitute 2×2 → own-construction 16px |
| `khatim-brand-system-board.svg` | `../boards/` (rebuilt) | System board rebuilt from new module |
| `khatim-application-system.svg` | `../boards/` (rebuilt) | Application board rebuilt; was also malformed XML (phantom `</rect>`) |

## Status

These files are **retained for history** (do not delete — they are part of the project's decision record) and are **NOT** in the production candidate set. Any usage of these files is a regression; the production assets are in `../svg/` and `../responsive/`.
