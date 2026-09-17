# ACTIVE TASK — CHATGPT FINAL INTEGRATION

Owner: ChatGPT
Branch: integration/chatgpt

## Objetivo
Enquanto Grok Work executa e Grok Chat/Spark revisam, ChatGPT deve manter o estado canônico, verificar qualquer novo commit em `work/v4`, cruzar hashes e relatórios, rejeitar apenas bloqueadores demonstráveis e preparar a entrega final para Luiz.

## Assim que aparecer um candidato em work/v4
1. Ler `FINAL_CANDIDATE_MANIFEST.json`, `FINAL_TECH_REPORT.md`, render board e installer.
2. Confirmar hashes dos artefatos disponíveis.
3. Conferir que Player ID = 168305 e que topology/UV/index/skeleton/weights não foram quebrados sem justificativa.
4. Conferir hair/materials/relink e compatibilidade com arquitetura final.
5. Conferir installer: hash final, active-manifest guard, rollback, restore chain.
6. Ler `FINAL_BLOCKERS_GROK.md` e `FINAL_BLOCKERS_SPARK.md` quando existirem.
7. Classificar cada blocker como REAL / NÃO BLOQUEADOR / INCONCLUSIVO.
8. Se não houver blocker real, preparar pacote final e instruções curtas de instalação/teste.
9. Se houver blocker real, mandar somente a correção mínima ao Grok Work; não abrir nova pesquisa.

## Saída
- `AUDITS/CHATGPT/FINAL_INTEGRATION.md`
- decisão `READY_FOR_SINGLE_INGAME_TEST = YES|NO`
- um único pacote candidato final quando tecnicamente possível.

## Regra
Não declarar trabalho concluído sem artefato real. Não inventar que agentes estão rodando. O monitoramento automatizado do hub pode continuar em paralelo, mas a aprovação depende dos commits reais.
