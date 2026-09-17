# V4.2 EXTERNAL AUDIT — GROK CHAT

Date: 2026-09-17
Auditor: Grok Chat / audit/grok
Evidence: release ZIP `v4.2-candidate` recalculated on disk, not the report.

ZIP SHA-256 (calculated): `1c0f42d429b79dd64cb6d4a069a74dbb8f833336f905caed60f831be8591c84e`
Tag target: work/v4 `bfb868e`

## Recalculated kit hashes
- face.fpk `fbd06ee5f7f45b878beb1a2de69d3b69d19cc50ee3927e98ee612f7e2a7e7f8b`
- face_bsm_alp.ftex `6c022d445f2e4c2f1101a8c76491b71c689b91ae3173e20e948a266786d3829e`
- hair_parts_bsm_alp.ftex `867c7e421cd560ceebd7e680020b9fc6c1c58299324eaae8cd6203790ec09bb3`
- PROOF/face_high.fmdl `b6ecbd20cf940a28d5d7fbe76c9b4428d003b69d4a7727ceafd2ad9841149dfb` size 128568
- FINAL_CORE.ps1 `c22dfcb751bf823647a643a6f44b6173a395c6dd8b246c4d53c1f8a23978c0c2`
- FPK inner face_high == PROOF face_high
- FPK inner hair_high `0008dbbd212b4c9c4c0d4cd2e5cbb7c3bdeb066caaefe36ff7c3857ef1a2ab4e` == V4/V4.1 169070 hair
- V4.1 face_high BEFORE confirmed `de0820ca2e312ff6a1fdc34383819e009657a583f788121b209e44c0fa26c2d8`

## Structural proof (V4.1 vs V4.2 via FmdlFile)
All 5 meshes: same vertex count, face indices, UVs, bone names, weights.
Mesh1 1788/1788 moved; max delta 0.016254; X half-width reduced; Z max 0.20732 -> 0.21641.
Not a bbox-only edit.

## Formal
STRUCTURAL = PASS
LIKENESS = PASS_FOR_INGAME_TEST
HAIR = PASS_FOR_INGAME_TEST
ALBEDO = PASS
INSTALLER = PASS_FOR_CONTROLLED_TEST
BLOCKERS =
1. PowerShell nativo nao homologado neste ambiente; teste controlado deve usar a mesma pasta extraida do ZIP (manifest em RESULTADOS/).
2. Fit/clip do hair 169070 na caveira V4.2 continua INCONCLUSIVO offline — resolver no jogo, nao e FAIL estrutural.
3. Janela residual: se o Install falhar depois de gravar INSTALL_MANIFEST.json e durante a quarantine deletion, o catch restaura ficheiros mas deixa o manifest activo (Restore seguinte limpa; nao corrompe o jogo se a pasta do kit for conservada).
RECOMMENDATION = CLEAR_FOR_ONE_INGAME_TEST
READY_FOR_GAME = NO
