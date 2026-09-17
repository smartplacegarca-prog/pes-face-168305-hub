# CHANCE 2 — NATIVE + FACE ALBEDO ONLY

`CHANCE2_VARIABLE = FACE_ALBEDO_ONLY`  
`READY_FOR_GAME = NO`

Release: https://github.com/smartplacegarca-prog/pes-face-168305-hub/releases/tag/chance2-native-albedo-only

## Albedo
| | SHA-256 |
|---|---|
| Native `face_bsm_alp.ftex` | `6edb1b440a334915b7731f3158cd2f1ed731bbd5ca529145b9136077f1b6e352` |
| Chance 2 `face_bsm_alp.ftex` | `1bddaceb687fb8a8c81921672fec2de12815d498bcf25e7857ee5abad9454a94` |
| Kit ZIP | `1c83d1cfa944d50cbd1a1419fedb99e4db2c327d4f96390efc64fcc79b095c16` |

`only_albedo_changed = true`  
`changed_on_forbidden (mesh0 / non-face) = 0`

Frozen (byte-identical to native clone):
- `face.fpk` `bde569d5d3867d95…`
- `hair_parts_bsm_alp.ftex` `9af8c3bd8567abf9…`
- face NRM/SRM/TRM, hair NRM/SRM/TRM, eye_occlusion

## What the albedo pass did
Atlas-native LAB skin shift toward PRIMARY 2026-09-17 (clipped, no RGB photo paste).
Existing brow/mustache/goatee darkened + light stubble; flatter brow band.
Mouth cavity / mesh0 / hair_parts untouched.

Rollback: `ROLLBACK_face_bsm_alp_NATIVE.ftex` in the kit.
