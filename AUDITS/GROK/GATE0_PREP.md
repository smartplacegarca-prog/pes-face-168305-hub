# GATE 0 PREP — 2026-09-17

Task: `TASKS/CHANCE2_INPLACE_POSITION_PATCH.md` on main (SUPERSEDED previous Chance 2 plan).

## Status
- CHANCE2_CANDIDATE_BUILD = BLOCKED_PENDING_GATE0
- READY_FOR_GAME = NO
- No morph / no FMDL patch / no reexport performed.

## Kit
`GATE0_V32_CONTROL_168305.zip`
SHA-256: `0f7881fc5d2fded4d27916a9272e6ee3c4f41ad220922f32859e1e628d389a7f`

Exact V3.2 binaries (verified):

| file | SHA-256 |
|---|---|
| face.fpk | `6cb20cfd0417db5a94f3528a8e2a473c8e461158a5f88d6a386dcfe5c0a1f81b` |
| face_high.fmdl | `de0820ca2e312ff6a1fdc34383819e009657a583f788121b209e44c0fa26c2d8` |
| hair_high.fmdl | `6fcc275bbf74853a20894c8d0b7c7ecd2be5b006bedaad41eb0beef1aac14e76` |
| face_bsm_alp.ftex | `4fd1f7cf13526c805cc297e349fefd67d6c6c7ffec881c035f539b323c25ef99` |
| hair_parts_bsm_alp.ftex | `3c72376087e81824125226f0ad89fced7c96f9d7872266759b82210bb111ac86` |

Payload check: `face.fpk[0x4B0:0x4B0+128568] == face_high.fmdl`.

## Only non-binary change
Stock V3.2 `FINAL_CORE.ps1` `$FinalFace` was stale `a4d36c01...` and would refuse the LIVECPK FTEX that HASHES.txt lists as correct.
GATE0 installer constant only: `$FinalFace = 4fd1f7cf13526c805cc297e349fefd67d6c6c7ffec881c035f539b323c25ef99`.

Do not use `BACKUPS_KIT/*` from the original V3.2 zip (different hashes).

## What the user must do
1. Step A: run `VERIFY_STEP_A.ps1` on the Windows install. Expect Chance 1 `face.fpk = 28c90deb...` if Chance 1 is still live. If not, STOP.
2. Step B: install this control kit. Expect `face.fpk = 6cb20cfd...`.
3. Photograph Luighi front + both profiles.
4. Report: `MASCARA SUMIU` | `MASCARA FICOU` | `OUTRO`.

Grok Chat cannot hash the live Windows `livecpk` from here. Gate 0 is not complete until that in-game A/B exists.
