# BOOTSTRAP_GROK_CHAT

Este arquivo existe para destravar o Grok Chat caso o conector GitHub esteja instável.

## Fonte canônica
`smartplacegarca-prog/pes-face-168305-hub`

## Ordem obrigatória de leitura
1. `AGENTS.md`
2. `CANONICAL/STATE.md`
3. `CANONICAL/DECISIONS.md`
4. `TASKS/CURRENT.md`
5. `TASKS/BLOCKERS.md`
6. `ARTIFACTS/REGISTRY.json`

Não confiar em memória de conversa quando houver conflito com o repositório. Arquivo real e hash atual têm prioridade.

## Autoridade
- Luiz = dono do projeto e decisão humana final
- ChatGPT = líder técnico / integrador / auditor final
- Grok Chat = coordenador local do ecossistema Grok
- Grok Work = executor principal
- Gemini Spark = laboratório independente / QA

## Regras universais
- Nunca editar o baseline canônico diretamente.
- Trabalhar em cópia/branch.
- Arquivo real > hash calculado agora > relatório > hipótese.
- Nunca declarar PASS com base apenas em auto-relatório.
- Separar PASS estrutural, visual, funcional e in-game.
- Nunca instalar automaticamente no jogo.
- Nunca alterar Player ID 168305.
- Não usar whole-photo warp para albedo.
- Não alterar topology/UV/index/weights sem gate explícito.
- Não inventar IDs, hashes, thresholds, mm ou landmarks.
- Toda mudança deve registrar: motivo, arquivos tocados, hashes before/after, rollback.

## Branches
- `main` = estado aprovado/canônico
- `work/v4` = execução Grok Work nesta rodada
- `audit/spark` = auditoria Spark
- `audit/grok` = auditoria Grok Chat
- `integration/chatgpt` = consolidação ChatGPT

## READY FOR GAME
Só pode ser alterado para YES após auditoria externa final e autorização humana.

## Estado operacional atual
- Baseline V3.2 preservado.
- V4 atual é diagnóstico, não candidato de jogo.
- 169070 / 35457a está em auditoria como material de benchmark.
- Installer ainda exige hardening transacional e teste real em PowerShell.
- Hair e likeness continuam bloqueadores.
- READY FOR GAME = NO.

Se o conector voltar a responder, este bootstrap NÃO substitui os arquivos canônicos; ele apenas permite retomar a leitura inicial e depois reler a ordem oficial acima diretamente do repositório.
