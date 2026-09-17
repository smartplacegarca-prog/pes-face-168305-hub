# NATIVE CLONE CONTROL — STATUS

Date: 2026-09-17

## Decision
`CHANCE2_BASE = NATIVE_LUIGHI`  
`NATIVE_CLONE_CONTROL = NOT_BUILT` (blocked: native CPK bytes not in this sandbox)  
Chance 2 albedo pass = **not started**  
`READY_FOR_GAME = NO`

Do not repair 5603a. Do not use V3.2 as Chance 2 base. Do not use 169070 / V4.2 morph / V4.1 FPK.

## In-game evidence (user)
- Luighi original, custom 168305 disabled → CLEAN/PASS
- 5603a FPK + no FTEX → white fallback
- 5603a FPK + FACE-only FTEX → white/fallback, no dark mask
- 5603a FPK + HAIR-only FTEX → black patches hair/beard/jaw/neck

The 5603a `hair_parts_bsm_alp` is the mask. The 5603a face FPK is also the wrong geometry/material host (paths inside it are hard-aliased to 5603a).

## What the current 168305 FPK actually is
V3.2 / Chance 1 `face.fpk` strings (not native):
- `/Assets/pes16/model/character/face/real/5603a/sourceimages/` + `face_bsm_alp.dds` / `face_nrm` / `face_srm` / `face_trm`
- `hair_parts_bsm_alp.dds` + nrm/srm/trm
- shaders `pes3DDF_Skin_Face` + `pes3DDF_Hair2`
- meshes `MESH_face_high`, `MESH_face_parts`, `MESH_hair_high`

That is a **relinked 5603a card**, not Luighi native.

## Native origin (physical)
Konami eFootball card for ID 168305 historically has **no unique face** (pesmaster: face type `no`).  
FL26 clean look with overlay off therefore comes from **SmokePatch Real Faces CPK**, not from our livecpk:

- Folder: `<FL26>/download/`
- Files: `01_smkdb_fa1.cpk` … `fa6.cpk` (main), `fa7.cpk` (updates), `fa8.cpk` (next season)
- Expected inner path (to confirm on extract): `.../character/face/real/168305/#Win/face.fpk` plus whatever texture alias the **native** FMDL names — **do not assume 5603a**.

This sandbox has **zero** `.cpk`. Inventing hashes of native files is forbidden.

## Extractor (published)
Release: https://github.com/smartplacegarca-prog/pes-face-168305-hub/releases/tag/native-clone-extractor

ZIP: `NATIVE_CLONE_EXTRACTOR_168305.zip`  
SHA-256: `d5321e647ca08927771ca8578d1d8b033f2157cd2227522cf7426c9788fafa7b`

Run on the game PC:
1. `EXTRACT_NATIVE.ps1` (Python 3 required)
2. Returns `NATIVE_CLONE_CONTROL/LIVECPK` + `HASHES.json` + `ORIGIN.md`
3. Inner files are byte copies of CPK payloads (clone diff vs CPK = 0 for those blobs)
4. Photograph Luighi = original clean before any albedo pass

## Chance 2 (later only)
Native geometry/UV/normals/weights/hair/shaders frozen.  
Change **only** facial albedo for PRIMARY_REFERENCE_SET 2026-09-17.  
Not authorized until clone is in-game CLEAN.
