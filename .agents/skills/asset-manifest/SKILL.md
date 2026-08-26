---
name: asset-manifest
description: Creates and maintains the Khatim asset inventory, naming conventions, variants, source-of-truth paths, and delivery readiness.
---

# Asset Manifest

Maintain `assets/ASSET-MANIFEST.csv` with fields:
- asset_id
- category
- name
- master_path
- format
- variant
- language
- status
- owner_agent
- source_of_truth
- notes

Never mark an asset FINAL unless it passes QA.
