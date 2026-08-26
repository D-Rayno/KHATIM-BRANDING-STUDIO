# 09 — Final QA
Description: Adversarially test the whole identity and prepare a release package.

## Steps
1. Ask brand-critic to perform strategic and visual red-team review.
2. Ask production-qa to verify vectors, naming, variants, file integrity, and completeness.
3. Use asset-manifest to identify missing or stale assets.
4. Verify Arabic and Latin assets and bilingual lockups.
5. Verify that guidelines describe the actual current system.
6. Record all blockers in `qa/FINAL-QA.md`.
7. If blockers exist, return to the appropriate workflow rather than waiving them silently.
8. If passed, set project control status to FINAL QA = PASS and prepare `exports/KHATIM-BRAND-DELIVERY.zip`.
