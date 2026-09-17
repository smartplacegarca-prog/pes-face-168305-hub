# AGENTS.md

## Autoridade
Luiz = dono do projeto e decisão humana final.
ChatGPT = líder técnico / integrador / auditor final.
Grok Chat = coordenador local do ecossistema Grok.
Grok Work = executor principal.
Gemini Spark = laboratório independente / QA.

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

## Branches sugeridas
- `main` = estado aprovado/canônico
- `work/v4-*` = execução Grok Work
- `audit/spark-*` = auditoria Spark, se houver escrita via Git
- `audit/grok-*` = auditoria Grok Chat
- `integration/chatgpt-*` = consolidação antes do merge

## READY FOR GAME
Só pode ser alterado para YES após auditoria externa final e autorização humana.
