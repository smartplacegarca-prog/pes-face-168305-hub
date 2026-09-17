# CHANCE 1 — V3.2 + MORPH ONLY

## Context
The V4.2 in-game test loaded successfully but failed visually. Luiz has granted three final in-game chances. This task defines Chance 1 and intentionally changes ONE visual variable only.

## Goal
Produce one controlled candidate that proves whether the V4.2 face geometry can render normally when placed back into the last known-good V3.2 visual/material stack.

## Immutable baseline
Use the exact V3.2 stack as baseline. Do NOT use V4.1 albedo and do NOT use 169070/35457a hair.

Expected V3.2 core hashes from canonical project history:
- face.fpk: `6cb20cfd0417db5a94f3528a8e2a473c8e461158a5f88d6a386dcfe5c0a1f81b`
- face_high.fmdl: `de0820ca2e312ff6a1fdc34383819e009657a583f788121b209e44c0fa26c2d8`
- hair_high.fmdl: `6fcc275bbf74853a20894c8d0b7c7ecd2be5b006bedaad41eb0beef1aac14e76`
- face_bsm_alp.ftex: `4fd1f7cf13526c805cc297e349fefd67d6c6c7ffec881c035f539b323c25ef99`
- hair FTEX V3.2: `3c72376087e81824125226f0ad89fced7c96f9d7872266759b82210bb111ac86`

## Only allowed visual change
Replace ONLY the V3.2 `face_high.fmdl` payload inside the V3.2 FPK with the V4.2 morphed `face_high.fmdl`:
- V4.2 morph hash: `b6ecbd20cf940a28d5d7fbe76c9b4428d003b69d4a7727ceafd2ad9841149dfb`

Everything else must remain V3.2 byte-for-byte wherever technically applicable.

## Explicitly forbidden in Chance 1
- no 169070/35457a hair mesh
- no 169070 hair FTEX
- no V4.1 face albedo
- no additional morph
- no new FTEX encode
- no photo-paste
- no material relink
- no alias change
- no topology/UV/index/weights edits
- no extra cleanup or aesthetic tweak

## Proof required before release
1. Unpack/reinspect the candidate FPK and prove the embedded `face_high.fmdl` hash is exactly `b6ecbd20...9dfb`.
2. Prove embedded `hair_high.fmdl` is still exactly V3.2 `6fcc275b...14e76`.
3. Prove all other FPK members are identical to V3.2 except the intended `face_high` payload and unavoidable container-level bytes caused by repacking.
4. Prove installed face FTEX remains exactly V3.2 `4fd1f7cf...ef99`.
5. Prove installed hair FTEX remains exactly V3.2 `3c723760...1ac86`.
6. Preserve Player ID 168305 and V3.2 alias architecture (`5603a`).
7. Installer must use real final hashes and retain rollback.

## Release naming
Publish as `chance1-v3.2-morph-only` with one ZIP and a short proof report.

## Gate
Do not claim likeness success offline. The only target for this chance is:
- renders as a normal human face in-game;
- no gross material/atlas corruption;
- geometry visibly reflects the V4.2 morph.

If those conditions are met in-game, Chance 1 is a technical success and hair/albedo refinement can follow without spending another chance on a broken stack.

READY_FOR_GAME = NO until Luiz inspects in-engine.
