# V4.2 FINAL CANDIDATO — 168305

READY FOR EXTERNAL AUDIT: YES
READY FOR GAME: NO
PowerShell nativo homologado: NAO
UTC: 2026-09-17T19:04:29.695735Z

## O que mudou vs V4.1
- `face_high.fmdl` morph programatico (pes-fmdl `FmdlFile`, `freeVertexEncoding()` antes do write).
- Topology/UV/indices/vertex count/weights preservados (roundtrip plugin ja era byte-identical no V3.2).
- Albedo V4.1 intocado.
- Hair 169070 intocado no FPK.
- Installer: so hashes do FPK novo.

## Morph (relativo, sem mm inventados)
Mesh1 (1788 verts) moved=1788 max_delta=0.01625
- slim global X * 0.93 + extra jaw/cheek/temple
- nariz: mais projetado (+Z) e mais estreito
- queixo: projecao +Z
- periocular: deslocamento minimo
- labios: NAO soldados
Mesh0 hanging-card: so X*0.93. Meshes 2-4: X scale so.

## Hashes
face_high BEFORE: de0820ca2e312ff6a1fdc34383819e009657a583f788121b209e44c0fa26c2d8
face_high AFTER:  b6ecbd20cf940a28d5d7fbe76c9b4428d003b69d4a7727ceafd2ad9841149dfb
size both: 128568 (encoding size preserved)

```
fbd06ee5f7f45b878beb1a2de69d3b69d19cc50ee3927e98ee612f7e2a7e7f8b  LIVECPK/root/Asset/model/character/face/real/168305/#Win/face.fpk
6c022d445f2e4c2f1101a8c76491b71c689b91ae3173e20e948a266786d3829e  LIVECPK/root/Asset/model/character/face/real/5603a/sourceimages/#windx11/face_bsm_alp.ftex
867c7e421cd560ceebd7e680020b9fc6c1c58299324eaae8cd6203790ec09bb3  LIVECPK/root/Asset/model/character/face/real/5603a/sourceimages/#windx11/hair_parts_bsm_alp.ftex
b6ecbd20cf940a28d5d7fbe76c9b4428d003b69d4a7727ceafd2ad9841149dfb  PROOF/face_high.fmdl
c22dfcb751bf823647a643a6f44b6173a395c6dd8b246c4d53c1f8a23978c0c2  FINAL_CORE.ps1
```

## Hair 169070
BBox overlap com a cabeca: SIM. Fit 3D material-faithful: NAO PROVADO (raster offline da face apenas).

## Previews
Ortho software raster (nao e o viewport do jogo). Boca aberta = rest pose do mesh, nao foi soldada.

## Bloqueadores
1. Sem homologacao in-game / PowerShell Windows.
2. Hair clipping vs skull nao renderizado com cards.
3. Likeness 3D ainda limitada: morph conservador sobre base 5603a, nao um retopo.
4. Raster offline != shader eFootball.

## Propositadamente nao feito
- photo-paste
- swap face 169070
- fechar labios
- NRM/SRM/TRM/sclera
