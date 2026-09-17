# CHANCE 2 — IN-PLACE POSITION PATCH ON V3.2

## Context
Chance 1 was tested in-engine and failed visually: the face still rendered with severe fragmented/plate-like corruption while the V3.2 hair rendered normally. Chance 1 used V3.2 stack plus only the V4.2 `face_high.fmdl` payload.

This strongly implicates the V4.2 `face_high` morph/export path rather than the V3.2 textures or hair. Chance 2 must therefore change strategy, not repeat the same writer/export path.

## Goal
Produce one candidate that:
1. renders as a normal human face in SP Football Life 2026;
2. keeps the entire V3.2 visual/material stack stable;
3. introduces a conservative Luiz-oriented facial shape change without regenerating the FMDL container.

## Immutable baseline
Start from exact V3.2:
- face.fpk `6cb20cfd0417db5a94f3528a8e2a473c8e461158a5f88d6a386dcfe5c0a1f81b`
- face_high `de0820ca2e312ff6a1fdc34383819e009657a583f788121b209e44c0fa26c2d8`
- hair_high `6fcc275bbf74853a20894c8d0b7c7ecd2be5b006bedaad41eb0beef1aac14e76`
- face FTEX `4fd1f7cf13526c805cc297e349fefd67d6c6c7ffec881c035f539b323c25ef99`
- hair FTEX `3c72376087e81824125226f0ad89fced7c96f9d7872266759b82210bb111ac86`
- Player ID 168305 / alias 5603a

## Core strategy
DO NOT serialize/rewrite `face_high.fmdl` with the FMDL writer.

Use the V3.2 `face_high.fmdl` bytes as the physical template and patch only vertex POSITION float32 triples in-place at the exact decoded POSITION offsets.

Parser use is allowed for discovery/decoding. Writer/export/serialization is forbidden for the Chance 2 candidate.

## Morph source
Use the V4.2 geometry only as a directional reference, not as the binary source.

For the main facial surface:
- derive the per-vertex displacement direction from V3.2 -> V4.2;
- apply only a conservative fraction of that displacement (target 45%, subject to offline sanity checks but do not exceed 50% without ChatGPT approval);
- prioritize narrower facial width, slightly stronger chin/jaw definition, and modest nose projection;
- keep periocular and lip regions conservative.

For auxiliary facial meshes:
- do NOT reuse the old independent V4.2 per-mesh edits;
- transfer the main-face deformation field coherently to auxiliary meshes by nearest-surface / nearest-neighbor displacement mapping so overlapping layers remain registered to the main face;
- if a mesh cannot be mapped confidently, leave that mesh at exact V3.2 rather than inventing a transform.

## Binary preservation rule
The target is:
- all non-POSITION bytes byte-identical to V3.2;
- if a bounding-box field must be adjusted because patched positions exceed the original bounds, change only the minimum required bbox bytes and document exact offsets; prefer a morph that remains within valid V3.2 bounds where practical;
- normals, tangents, UVs, colors, indices, weights, bone bindings, material slots, strings, topology and vertex counts must remain byte-identical to V3.2.

## Explicitly forbidden
- no `FmdlFile.write()` / serializer output for the final candidate
- no `freeVertexEncoding()`-based rewrite for the final candidate
- no V4.2 face_high binary reuse
- no hair 169070/35457a
- no V4.1 albedo
- no FTEX re-encode
- no photo-paste
- no material relink
- no alias change
- no topology/index/UV/weights edits
- no new hair
- no installer feature changes inside the candidate

## Proof required before game test
1. SHA-256 of exact V3.2 face_high source.
2. SHA-256 of Chance 2 face_high.
3. Exact byte-diff classification proving every changed byte belongs to POSITION float32 fields, plus only explicitly documented bbox bytes if unavoidable.
4. Mesh-by-mesh changed vertex counts and maximum displacement in asset units.
5. Proof that normals/tangents/UVs/indices/weights/material slots/strings are byte-identical to V3.2.
6. Proof hair_high, face FTEX and hair FTEX remain exact V3.2 hashes.
7. FPK must be produced by in-place payload splice into exact V3.2 FPK; outside the face_high payload, 0 bytes may change.
8. One neutral offline render/viewport comparison V3.2 vs Chance 2 for shape sanity only; do NOT call it likeness success.
9. Spark red-team must independently verify changed-offset classification before release.

## Release
Publish one candidate only as `chance2-inplace-position-patch` after ChatGPT + Spark audit.

## Game gate
Success criteria are deliberately narrow:
- no plate/fragment/atlas-style facial corruption;
- normal human rendering from front and profile;
- conservative but visible shape movement toward Luiz.

No offline visual PASS can substitute for in-engine evidence.

READY_FOR_GAME = NO until ChatGPT explicitly releases the candidate after independent audit.
