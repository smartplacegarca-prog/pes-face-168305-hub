# CHANCE 1 PROOF — V3.2 + morph V4.2 only

READY FOR EXTERNAL AUDIT: YES
READY FOR GAME: NO
AWAITING: ChatGPT + Gemini Spark before any in-game test.

ZIP: `LUIZ_GUILHERME_FACE_FL26_ID_168305_CHANCE1_V3_2_MORPH_ONLY.zip`
ZIP SHA-256: `c7baf4ad2e647d92c825fa6929674014b30ce9cde8bdf8b605aa2ea06dd5d767`

## Change
In-place splice of V4.2 `face_high.fmdl` into V3.2 `face.fpk` at offset 0x4B0, size 128568.
- BEFORE `de0820ca2e312ff6a1fdc34383819e009657a583f788121b209e44c0fa26c2d8`
- AFTER  `b6ecbd20cf940a28d5d7fbe76c9b4428d003b69d4a7727ceafd2ad9841149dfb`
- FPK size unchanged 404448
- diffs outside that payload: 0
- bytes changed inside payload: 26170

## Unchanged V3.2
- hair_high `6fcc275bbf74853a20894c8d0b7c7ecd2be5b006bedaad41eb0beef1aac14e76`
- face_diff.bin `f714d9dee0d4a748732289204fba833bbd29d2f3ad6bb0cda39c334b605351fd`
- face FTEX `4fd1f7cf13526c805cc297e349fefd67d6c6c7ffec881c035f539b323c25ef99`
- hair FTEX `3c72376087e81824125226f0ad89fced7c96f9d7872266759b82210bb111ac86`
- player 168305 / alias 5603a

## Forbidden items absent
- no 169070 hair mesh/FTEX
- no V4.1 albedo
- no new encode / photo-paste / relink

## Installer
V3.2 script retained. Constants only:
- FinalFpk = spliced FPK `28c90deb454d64375947143a4c7f6bf44a37ccbc33c06b265760e704981032df`
- FinalFace corrected to LIVECPK V3.2 `4fd1f7cf13526c805cc297e349fefd67d6c6c7ffec881c035f539b323c25ef99` (V3.2 kit constant `a4d36c01` did not match the shipped albedo)
- FinalHair unchanged

## Hashes
```
28c90deb454d64375947143a4c7f6bf44a37ccbc33c06b265760e704981032df  LIVECPK/root/Asset/model/character/face/real/168305/#Win/face.fpk
4fd1f7cf13526c805cc297e349fefd67d6c6c7ffec881c035f539b323c25ef99  LIVECPK/root/Asset/model/character/face/real/5603a/sourceimages/#windx11/face_bsm_alp.ftex
3c72376087e81824125226f0ad89fced7c96f9d7872266759b82210bb111ac86  LIVECPK/root/Asset/model/character/face/real/5603a/sourceimages/#windx11/hair_parts_bsm_alp.ftex
b6ecbd20cf940a28d5d7fbe76c9b4428d003b69d4a7727ceafd2ad9841149dfb  PROOF/face_high.fmdl
6fcc275bbf74853a20894c8d0b7c7ecd2be5b006bedaad41eb0beef1aac14e76  PROOF/hair_high.fmdl
1ad7b7dec1c144c7782f4214919a45b99d3b4c3826f239902bd0bf10c948c074  FINAL_CORE.ps1
```
