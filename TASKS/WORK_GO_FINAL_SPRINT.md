# WORK GO — FINAL SPRINT

Status: **GO**
From: Grok Chat
To: Grok Work
Branch: `work/v4`
Trigger: `EXECUTE FINAL SPRINT NOW`
Time: 2026-09-17
READY FOR GAME: NO até ZIP + validação técnica + autorização humana

## Prompt oficial (copiar e executar, não reinterpretar)

```
FINAL SPRINT EXECUTION. Leia TASKS/FINAL_SPRINT.md, CANONICAL/STATE.md, CANONICAL/DECISIONS.md e REFERENCES/PRIMARY_2026-09-17/VISUAL_SPEC.md. Você é o executor principal e deve trabalhar em work/v4. Objetivo: produzir UM candidato final offline completo para Player ID 168305, com máxima semelhança possível e pronto para teste in-game. Prioridade: 1) hair 169070/35457a com fit/material-faithful sobre V3.2; 2) morph facial controlado preservando topology/UV/index/skeleton/weights; 3) albedo limpo com identidade atual; 4) installer endurecido e hashes finais. Não abrir nova pesquisa, não fazer dezenas de variantes, não instalar no jogo. Gere FINAL_CANDIDATE_MANIFEST.json, FINAL_RENDER_BOARD, FINAL_TECH_REPORT.md, installer final e ZIP final. Quando houver candidato, sinalize READY_FOR_GROK_SPARK_REVIEW = YES.

GATILHO: ao receber `EXECUTE FINAL SPRINT NOW`, comece imediatamente e não peça nova confirmação.
```

## Ordem de execução (uma passagem)
1. Hair 169070/35457a sobre face_high V3.2 congelada. Relink `000000` → alias vivo. Render front / 3-4 / profile. Se não encaixar, abandonar rápido e ficar com a melhor solução disponível. Sem caça a catálogo.
2. Morph controlado só onde VISUAL_SPEC exige. Preservar topology/UV/index/skeleton/weights/vertex count. Regenerar vertex encoding após edit.
3. Albedo a partir do V3.2. Identidade: tom, sobrancelhas, bigode fino, cavanhaque esparso. Sem photo-paste / halo / seam / green patch / painted lips / chin tab.
4. Installer: hashes reais do candidato; rollback em toda mutation window; manifest protegido; bloquear 2º Install com manifesto ativo; Restore em cadeia.

## Inputs reais já validados (não recalcular como pesquisa)
- Player ID: 168305. Arquitectura: FPK `168305` + texturas `5603a`.
- ZIP V3.2: `f6bcb3335f3080e84da00b1709fef6f69f5fe87d65b60be4f49f4786f629711a`
- face.fpk V3.2: `6cb20cfd0417db5a94f3528a8e2a473c8e461158a5f88d6a386dcfe5c0a1f81b`
- face_high V3.2: `de0820ca2e312ff6a1fdc34383819e009657a583f788121b209e44c0fa26c2d8`
- hair_high V3.2: `6fcc275bbf74853a20894c8d0b7c7ecd2be5b006bedaad41eb0beef1aac14e76`
- face FTEX V3.2: `4fd1f7cf13526c805cc297e349fefd67d6c6c7ffec881c035f539b323c25ef99`
- hair FTEX V3.2: `3c72376087e81824125226f0ad89fced7c96f9d7872266759b82210bb111ac86`
- ZIP 169070: `b81fa6f73a4e0244e37aa01be63e668b0b8900a6bcac545b35a9008adecbda6c`
- hair_high 169070: `826393d61324171f3b0f874c6786fdfcd779115b40d530b871cec9207da16504`
- hair FTEX 169070: `867c7e421cd560ceebd7e680020b9fc6c1c58299324eaae8cd6203790ec09bb3`
- FPK 169070 alias string: `35457a` x2. Path interno FMDL: `000000`.
- `$FinalFace` do FINAL_CORE.ps1 V3.2 está STALE (`a4d36c01…`). Usar hash real do FTEX do candidato.

## Proibido
- alterar Player ID
- swap de base 169070
- soldar/fechar lábios por foto
- whole-photo warp
- instalar no jogo
- editar `main` ou `CANONICAL/`
- `READY FOR GAME = YES`

## Entrega nesta branch
- candidato offline completo
- `CANDIDATES/V4_FINAL/FINAL_CANDIDATE_MANIFEST.json`
- `CANDIDATES/V4_FINAL/FINAL_RENDER_BOARD.png`
- `CANDIDATES/V4_FINAL/FINAL_TECH_REPORT.md`
- installer endurecido
- ZIP final
- no topo do tech report: `READY_FOR_GROK_SPARK_REVIEW = YES`
