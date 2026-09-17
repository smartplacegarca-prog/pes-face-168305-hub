# MCP — Fase 2

Depois que os agentes estiverem conectados ao repositório, uma camada MCP pode expor operações controladas.

## Read
- `get_canonical_state`
- `get_decisions`
- `get_blockers`
- `get_current_task`
- `get_artifact_registry`
- `get_latest_audits`

## Write controlado
- `submit_audit(agent, markdown, artifact_sha)`
- `propose_candidate(manifest)`
- `propose_state_change(diff)`

## Nunca expor diretamente
- merge automático em `main`
- `READY_FOR_GAME = YES` automático
- instalação local do jogo
- deleção do baseline

Toda escrita de agente entra como branch/PR/proposta. O estado canônico só muda após revisão.
