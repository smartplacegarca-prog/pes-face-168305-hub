# COORDINATION NOW — 2026-09-17

## Estado
Grok Chat e Gemini Spark estão autorizados a iniciar auditorias em paralelo.
Grok Work permanece BLOQUEADO até consolidação ChatGPT.

## Fluxo
1. Grok Chat executa `TASKS/ACTIVE_GROK_CHAT.md` na branch `audit/grok`.
2. Gemini Spark executa `TASKS/ACTIVE_SPARK.md` na branch `audit/spark`.
3. Ambos marcam `STATUS_FOR_CHATGPT_REVIEW = READY` quando terminarem.
4. ChatGPT compara os dois laudos, os binários disponíveis e o estado canônico.
5. ChatGPT atualiza `integration/chatgpt` com a consolidação.
6. Somente após isso nasce o prompt executivo do Grok Work em `work/v4`.

## Regra de conflito
Se Grok e Spark discordarem:
- arquivo real / render reproduzível / hash calculado vence;
- depois evidência técnica reproduzível;
- depois relatório;
- opinião sem prova não altera `CANONICAL/`.

## Não fazer ainda
- nenhuma instalação in-game;
- nenhum merge automático em `main`;
- nenhum swap de base 169070;
- nenhum morph labial baseado apenas em foto;
- nenhum `READY FOR GAME = YES`.
