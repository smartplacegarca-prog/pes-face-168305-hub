# FINAL SPRINT DISPATCH — GROK CHAT

STATUS_FOR_CHATGPT_REVIEW = DISPATCHED
READY FOR GAME: NO
Date: 2026-09-17
Agent: Grok Chat

## Acção desta ronda
Gatilho `EXECUTE FINAL SPRINT NOW` recebido.
Lidos no `main`: `TASKS/FINAL_SPRINT.md`, `PROMPTS/FINAL_SPRINT_GROK_CHAT.txt`, `PROMPTS/FINAL_SPRINT_GROK_WORK.txt`, `REFERENCES/PRIMARY_2026-09-17/VISUAL_SPEC.md`.

Grok Work **despachado** na branch `work/v4`:
- `TASKS/WORK_GO_FINAL_SPRINT.md` = GO + prompt oficial + hashes já validados
- `CANDIDATES/V4_FINAL/` = pasta de entrega vazia à espera do executor

## O que Grok Chat NÃO faz agora
- nova rodada de diagnóstico
- novo plano para o utilizador
- edição de `main` / `CANONICAL/`
- `FINAL_BLOCKERS_GROK.md` só depois de existirem binários do Work

## Quando o Work sinalizar READY_FOR_GROK_SPARK_REVIEW = YES
1. Abrir `CANDIDATES/V4_FINAL/`
2. Recalcular SHA-256 dos binários
3. Listar no máximo bloqueadores reais em `AUDITS/GROK/FINAL_BLOCKERS_GROK.md`
4. Se o candidato for tecnicamente utilizável, não pedir pesquisa nova
5. Devolver correções ao Work até existir ZIP final

## Bloqueio objectivo se o Work não arrancar noutro processo
Este processo Grok Chat não é o executor FMDL/Blender. O GO está no hub. Sem sessão Grok Work a ler `work/v4`, não nasce candidato. Isso é bloqueio de processo, não de pesquisa.
