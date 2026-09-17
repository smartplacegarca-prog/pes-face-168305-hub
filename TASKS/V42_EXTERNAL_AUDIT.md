# V4.2 EXTERNAL AUDIT — FINAL GATE BEFORE IN-GAME TEST

Date: 2026-09-17
Candidate: `v4.2-candidate`
Tag commit: `bfb868e35f9ad199c7e7a4a56c2f97bafb305b06`
Release ZIP SHA-256: `1c0f42d429b79dd64cb6d4a069a74dbb8f833336f905caed60f831be8591c84e`
Player ID: 168305

## Purpose
This is no longer an exploratory audit. Grok Chat and Gemini Spark must independently review the actual V4.2 candidate and report only blockers that matter before one in-game test.

## Evidence hierarchy
Real file > hash calculated now > repository manifest/release > report > hypothesis.

## Required checks
### 1. Structural/FMDL
- Confirm `face_high` AFTER SHA-256 `b6ecbd20cf940a28d5d7fbe76c9b4428d003b69d4a7727ceafd2ad9841149dfb`.
- Confirm BEFORE was `de0820ca2e312ff6a1fdc34383819e009657a583f788121b209e44c0fa26c2d8` and size remains 128568.
- Check that the morph is a real vertex-position edit and not only bbox/header metadata.
- Check topology/UV/index/weights/vertex count were preserved.
- Check no obvious mesh corruption, neck discontinuity or card distortion was introduced.

### 2. Visual likeness
Use the official visual target and PRIMARY_REFERENCE_SET 2026-09-17.
- Compare frontal face width/height, temples, periocular region, nose width/projection, jaw and chin.
- Do not score from albedo alone.
- Treat offline ortho as evidence of geometry only, not Fox Engine final shading.
- Report whether V4.2 is visibly closer to Luiz than V4.1/V3.2.
- Do not demand perfection; block only if the face is still clearly dominated by the old 5603a geometry to a degree that makes an in-game test pointless.

### 3. Hair 169070
- Confirm the intended 169070/35457a hair remains in the FPK and hair FTEX SHA-256 is `867c7e421cd560ceebd7e680020b9fc6c1c58299324eaae8cd6203790ec09bb3`.
- If no material-faithful 3D render is available, classify clipping/fit as INCONCLUSIVE, not FAIL.
- Only block if there is concrete evidence of severe clipping/material breakage.

### 4. Albedo
- Confirm V4.1 albedo SHA-256 `6c022d445f2e4c2f1101a8c76491b71c689b91ae3173e20e948a266786d3829e` is preserved.
- Look for photo-paste, brow halo, nose seam/patch, painted lips, chin artifacts or obvious alpha corruption.

### 5. Installer
Candidate `FINAL_CORE.ps1` SHA-256: `c22dfcb751bf823647a643a6f44b6173a395c6dd8b246c4d53c1f8a23978c0c2`.
Review the real script, not prior versions.

Known point for audit: the active manifest is stored under `$Root/RESULTADOS`, i.e. the extracted kit directory. This means second-install protection and Restore depend on retaining/reusing that same extracted folder. Determine whether this is acceptable for a one-time controlled test or must be hardened before release. Do not call native PowerShell homologated unless actually executed on Windows PowerShell.

Also verify rollback behavior if an exception occurs after manifest creation but during quarantine deletion; a stale active manifest may remain even after records are restored.

## Formal output
Each auditor should return exactly:
- `STRUCTURAL = PASS | FAIL | INCONCLUSIVE`
- `LIKENESS = PASS_FOR_INGAME_TEST | FAIL | INCONCLUSIVE`
- `HAIR = PASS_FOR_INGAME_TEST | FAIL | INCONCLUSIVE`
- `ALBEDO = PASS | FAIL | INCONCLUSIVE`
- `INSTALLER = PASS_FOR_CONTROLLED_TEST | FAIL | INCONCLUSIVE`
- `BLOCKERS =` maximum 3 concrete blockers
- `RECOMMENDATION = CLEAR_FOR_ONE_INGAME_TEST | RETURN_TO_BUILD`
- `READY_FOR_GAME = NO` until the real in-engine test is completed.

## Stop rule
Do not reopen broad research. If there is no concrete structural or installer blocker, clear V4.2 for ONE controlled in-game test even if hair fit/shading remains partially inconclusive offline. The in-game test exists specifically to resolve engine-only unknowns.
