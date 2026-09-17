# V4.1 FINAL CANDIDATO — 168305

READY FOR EXTERNAL AUDIT: YES
READY FOR GAME: NO
PowerShell nativo homologado: NAO (ambiente Linux; script endurecido com hashes reais)
UTC: 2026-09-17T18:40:39.273695Z

## O que mudou vs V4-candidate
- Albedo `face_bsm_alp.ftex` re-encoded DXT5/FTEX: pintura nativa de identidade
  (sobrancelhas mais densas/escuras, bigode fino, cavanhaque leve). Zero photo-paste.
- Hair 169070/35457a mantido (mesh relink + FTEX).
- face_high.fmdl V3.2 byte-identical (topology/UV/weights intactos).
- face.fpk inalterado vs V4 (hair ja estava 169070).
- FINAL_CORE.ps1: hashes actualizados para o FTEX novo. Semantica transaccional igual.

## Hashes SHA-256
```
d0e40babdf52e1259ac71f6df61ec0349e06f525da271463bbf79fd9f9f0b8c4  LIVECPK/root/Asset/model/character/face/real/168305/#Win/face.fpk
6c022d445f2e4c2f1101a8c76491b71c689b91ae3173e20e948a266786d3829e  LIVECPK/root/Asset/model/character/face/real/5603a/sourceimages/#windx11/face_bsm_alp.ftex
867c7e421cd560ceebd7e680020b9fc6c1c58299324eaae8cd6203790ec09bb3  LIVECPK/root/Asset/model/character/face/real/5603a/sourceimages/#windx11/hair_parts_bsm_alp.ftex
f8754ec08be07db182aba49ffc13487ac4372f6de522dbe0d77eec4d8391bbec  FINAL_CORE.ps1
```

## FTEX
- size: 517100
- format: FTEX DXT5/BC3 zlib-chunk (mesmo layout Fox)
- forbidden/mesh0 pixels unchanged: 0

## Instalador
- Kit hash check antes do copy
- backup-before-copy
- verify pos-copy
- manifest escrito ANTES da quarantine deletion
- 2o Install bloqueado com manifest activo
- rollback try/catch
- Restore apaga manifest activo
- NAO corrido em PowerShell Windows

## Bloqueadores reais (honestos)
1. Morph facial NAO feito (sem Blender / sem regenerar vertex encoding). Nariz, largura, mandibula, hairline 3D ainda sao 5603a.
2. Previews 3D de frente/perfil usam OBJ V3.2 (cabelo slick no OBJ). O cabelo 169070 esta no FPK, nao neste viewport.
3. PNG meta oficial `retrato_de_jogador_em_estilo_efootball.png` NAO estava no disco. Board usa PROXY eFootball gerado da foto de estudio.
4. JPEGs perfil esquerdo/direito 2026-09-17 NAO estavam no disco.
5. Sem teste in-game. Clip do hair 169070 na cabeca V3.2 continua por provar.

## Nao feito de proposito
- swap da face 169070
- fechar labios
- NRM/SRM/TRM/sclera custom
- photo-paste / whole-photo warp
