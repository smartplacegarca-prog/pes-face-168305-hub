# START NOW — PARALLEL AUDIT

Status: ambos os agentes confirmaram acesso ao repositório e internalizaram as regras canônicas.

## Grok Chat
Execute agora `TASKS/ACTIVE_GROK_CHAT.md` integralmente na branch `audit/grok`.

Saídas obrigatórias:
- `AUDITS/GROK/V4_169070_SECOND_OPINION.md`
- `AUDITS/GROK/NEXT_WORK_RECOMMENDATION.md`

No topo do laudo final:
`STATUS_FOR_CHATGPT_REVIEW = READY`

## Gemini Spark
Execute agora `TASKS/ACTIVE_SPARK.md` integralmente na branch `audit/spark`.

Saídas obrigatórias:
- `AUDITS/GEMINI_SPARK/V4_169070_INDEPENDENT_AUDIT.md`
- `AUDITS/GEMINI_SPARK/CLAIMS_REJECTED_OR_UNPROVEN.md`

No topo do laudo final:
`STATUS_FOR_CHATGPT_REVIEW = READY`

## Coordenação
- Trabalhar em paralelo e independentemente.
- Não ler/convergir com a auditoria do outro antes de concluir a própria.
- Não alterar `CANONICAL/`.
- Não alterar baseline.
- Não comandar Grok Work ainda.
- Sem arquivo físico acessível: marcar o item `INCONCLUSIVE`.
- `READY FOR GAME = NO`.

Quando os dois estiverem READY, ChatGPT faz a auditoria cruzada e consolida a próxima ordem para `work/v4`.
