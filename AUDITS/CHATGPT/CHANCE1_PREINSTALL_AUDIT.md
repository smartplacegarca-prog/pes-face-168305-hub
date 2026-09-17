# CHANCE 1 — PRE-INSTALL AUDIT

Date: 2026-09-17

## Scope
Audit the `work/chance1` candidate before spending one of Luiz's three final in-game chances.

## Evidence inspected
- `TASKS/CHANCE1_V3_2_PLUS_MORPH_ONLY.md` on `main`
- `CANDIDATES/CHANCE1/CHANCE1_PROOF.md` on `work/chance1`
- branch head `work/chance1` commit `3c2b2982482e882d61cbd53d4c786ee04d7efc91`

## Findings
### Isolation
PASS on the documented build method:
- V3.2 face FPK used as base.
- Only the 128,568-byte `face_high.fmdl` payload was spliced at offset `0x4B0`.
- Reported diffs outside that payload: 0 bytes.
- Embedded `face_high` target hash: `b6ecbd20cf940a28d5d7fbe76c9b4428d003b69d4a7727ceafd2ad9841149dfb`.
- V3.2 hair_high hash preserved: `6fcc275bbf74853a20894c8d0b7c7ecd2be5b006bedaad41eb0beef1aac14e76`.
- V3.2 face FTEX preserved: `4fd1f7cf13526c805cc297e349fefd67d6c6c7ffec881c035f539b323c25ef99`.
- V3.2 hair FTEX preserved: `3c72376087e81824125226f0ad89fced7c96f9d7872266759b82210bb111ac86`.
- No 169070 hair, no V4.1 albedo, no new FTEX encoding, no relink or alias change is documented.

### Important correction to Spark wording
Do NOT treat renderer/material risk as "eliminated" offline. The isolation substantially reduces risk, but only the game can prove normal rendering. `SAFE_TO_BUILD_CHANCE1` is reasonable; visual success is not yet proven.

### Installer
The proof reports V3.2 installer logic with only hash constants updated. Previous Windows testing showed two operational requirements:
1. extract to a short path;
2. run PowerShell as Administrator.
These are acceptable for a controlled test, but the package must be the actual audited ZIP.

## Current blocker before spending Chance 1
The expected release tag `chance1-v3.2-morph-only` is not currently available through the GitHub releases API. The branch contains the proof report, but the actual ZIP is not yet independently retrievable from the hub by ChatGPT.

Therefore:
- BUILD ISOLATION: PASS
- TECHNICAL DESIGN: PASS FOR CONTROLLED TEST
- ACTUAL ZIP VERIFIED BY CHATGPT: NO
- READY TO INSTALL: NO, until the exact ZIP is published/attached and its SHA-256 is verified as `c7baf4ad2e647d92c825fa6929674014b30ce9cde8bdf8b605aa2ea06dd5d767`.

## Decision
Do not spend Chance 1 yet. Publish or attach the exact ZIP first. Once the real ZIP is accessible and matches the declared SHA-256, ChatGPT can release one controlled in-game test.
