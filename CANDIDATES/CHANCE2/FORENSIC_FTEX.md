# CHANCE 2 FORENSIC — FACE_BSM_ALP_FTEX_PIPELINE

`CHANCE2_VISUAL = FAIL`  
`CHANCE3 = NOT_AUTHORIZED`  
`READY_FOR_GAME = NO`

Native: `6edb1b440a334915b7731f3158cd2f1ed731bbd5ca529145b9136077f1b6e352` (632984)  
Chance2: `1bddaceb687fb8a8c81921672fec2de12815d498bcf25e7857ee5abad9454a94` (540040)

Header 64 B identical (BC3/1024/11 mips/flags 17/type 3).  
Pillow-decoded alpha pixel-identical. Offline RGB still a PES face.

Lost in rebuild:
- zlib CMF `789c` → `78da`
- mip offsets %16 native all `8` (mip10=`0`) vs mixed
- DXT bitstream re-encoded (quicktex)
- file packed 15% smaller

In-game black mask = dead sampler fallback, not the paint.

Legal next step when authorized: splice DXT **inside** native container. No `write_ftex`.
Rollback = native hash above.
