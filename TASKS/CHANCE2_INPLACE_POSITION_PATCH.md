# CHANCE 2 — GATE 0 FIRST: V3.2 `face_high` A/B BEFORE ANY NEW MORPH

## STATUS
Previous in-place-patch plan is **SUPERSEDED / NOT AUTHORIZED YET**.

The in-game Chance 1 failure proves only that the corruption travels with the modified `face_high.fmdl` stack used in Chance 1. It does **not** prove that Blender, tangents, UVs, or generic FMDL serialization are the root cause.

## Factual correction
The V4.2 / Chance 1 `face_high` was produced programmatically through the FMDL pipeline, not by Blender round-trip. Therefore the next step must not be framed as "fix Blender export".

Observed in-game pattern:
- V3.2 hair renders normally;
- facial skin is present in several regions;
- a hard-edged dark/fragmented region affects forehead/nose/mouth/chin;
- failure follows the modified `face_high` candidate.

This is consistent with several still-open hypotheses: auxiliary mesh/card/cavity misregistration, packed vertex/normal encoding issue, bbox/stream issue, rest-pose overlap, or another `face_high`-internal incompatibility. None is yet proven.

## GATE 0 — 5-minute A/B sanity check
Before building any Chance 2 candidate, verify the live installation and run an exact baseline A/B.

### Step A — confirm current live payload
Confirm on the user's Windows install that the active Chance 1 files are exactly the expected ones:
- live `face.fpk` = Chance 1 hash `28c90deb454d64375947143a4c7f6bf44a37ccbc33c06b265760e704981032df`
- extracted `face_high.fmdl` inside that FPK = `b6ecbd20cf940a28d5d7fbe76c9b4428d003b69d4a7727ceafd2ad9841149dfb`
- face FTEX = V3.2 `4fd1f7cf13526c805cc297e349fefd67d6c6c7ffec881c035f539b323c25ef99`
- hair FTEX = V3.2 `3c72376087e81824125226f0ad89fced7c96f9d7872266759b82210bb111ac86`

If these do not match, STOP: diagnose stale/duplicate livecpk first.

### Step B — exact V3.2 control
Build/install a **CONTROL ONLY** package using the exact V3.2 stack, including exact original:
- face.fpk `6cb20cfd0417db5a94f3528a8e2a473c8e461158a5f88d6a386dcfe5c0a1f81b`
- face_high `de0820ca2e312ff6a1fdc34383819e009657a583f788121b209e44c0fa26c2d8`
- hair_high `6fcc275bbf74853a20894c8d0b7c7ecd2be5b006bedaad41eb0beef1aac14e76`
- face FTEX `4fd1f7cf13526c805cc297e349fefd67d6c6c7ffec881c035f539b323c25ef99`
- hair FTEX `3c72376087e81824125226f0ad89fced7c96f9d7872266759b82210bb111ac86`

No binary mutation. No new morph. No new texture. No hair swap. No relink. No serializer. No patching.

### Interpretation
- If the hard-edged facial corruption **disappears** with exact V3.2, the target is confirmed to be inside the modified `face_high` path. Only then may we inventory the FMDL meshes/cards/cavities and design Chance 2.
- If the corruption **remains** with exact V3.2, STOP all morph work. The problem is stale/duplicate livecpk, wrong alias/path, or install-state contamination.

## After Gate 0 only
If exact V3.2 is clean in-engine, perform a mesh inventory of V3.2 vs Chance 1 before changing anything:
- enumerate all meshes/submeshes/material slots;
- identify primary facial surface vs auxiliary cards/cavities/mouth/neck pieces;
- classify which meshes had position/normal/bbox/encoding changes;
- identify the exact region corresponding to the dark hard-edged mask in-game;
- do not assume tangents, UVs, normals, card geometry, or bbox are guilty until byte/mesh evidence points there.

Only after this inventory should ChatGPT authorize the actual Chance 2 candidate strategy.

## Rules
- No new Chance 2 build until Gate 0 result is recorded.
- No generic "recalculate tangents" or Blender round-trip.
- No new albedo or hair.
- No visual PASS from offline boards.
- In-engine evidence outranks every offline hypothesis.

READY_FOR_GAME = NO
CHANCE2_CANDIDATE_BUILD = BLOCKED_PENDING_GATE0
