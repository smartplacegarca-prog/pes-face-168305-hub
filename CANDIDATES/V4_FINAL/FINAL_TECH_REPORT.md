# FINAL_TECH_REPORT

READY_FOR_GROK_SPARK_REVIEW = YES
READY FOR GAME: NO
Agent: Grok Work
Branch: work/v4
Date: 2026-09-17
Player ID: 168305

## What this candidate is
Offline test kit. Face V3.2 frozen. Hair mesh+albedo 169070/35457a ported into FPK 168305 with texture alias 5603a.

## Binaries (SHA-256 calculated this session)
See `FINAL_CANDIDATE_MANIFEST.json` and `CANDIDATE_HASHES.txt`.

- face.fpk: packed foxfpk, 3 entries, hair_high replaced
- face_high.fmdl: V3.2 byte-identical `de0820ca2e312ff6a1fdc34383819e009657a583f788121b209e44c0fa26c2d8`
- face_bsm_alp.ftex: V3.2 byte-identical `4fd1f7cf13526c805cc297e349fefd67d6c6c7ffec881c035f539b323c25ef99`
- hair_high.fmdl: 169070 with one same-length relink `000000` → `5603a/` (path becomes `real/5603a//sourceimages/`)
- hair_parts_bsm_alp.ftex: 169070 `867c7e421cd560ceebd7e680020b9fc6c1c58299324eaae8cd6203790ec09bb3`

## Installer
`FINAL_CORE.ps1` hashes match the three LIVECPK files above (stale `$FinalFace` of V3.2 is gone).
- Second Install throws if `RESULTADOS/INSTALL_MANIFEST.json` exists
- try/catch after mutation calls `Restore-Records`
- Manifest written before quarantine deletion
- Restore deletes the active manifest after success
Static review only. PowerShell native homologation not run here.

## Not done (not hidden)
- No Blender: no material-faithful 3D board of hair-on-V3.2-head. Clipping is an in-game check.
- PRIMARY 2026-09-17 JPEGs were not on disk; VISUAL_SPEC used as text fallback for hair style only.
- No vertex morph.
- No 169070 face swap.
- No lip weld.
- NRM/SRM/TRM custom not installed.
- Sclera not installed.

## Known risk
Hair 169070 skull fit vs V3.2 head is unproven in 3D. If clip is severe in-game, abandon this hair and keep V3.2 hair_high. Do not hunt a new catalog this sprint.

## Stop criterion
This ZIP is a playable-format candidate (valid FPK/FTEX/installer). It is not likeness PASS and not READY FOR GAME.
