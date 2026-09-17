# COLLABORATION_PROTOCOL.md

## Como cada agente trabalha

### Grok Work
- lê CANONICAL + TASKS
- trabalha em branch work/*
- nunca edita main diretamente
- entrega arquivos + evidências + hashes

### Gemini Spark
- lê CANONICAL + candidato
- faz auditoria independente
- se não tiver o arquivo real: INCONCLUSIVE
- não reaproveita números não reproduzíveis

### Grok Chat
- coordena instruções do Grok Work
- confronta relatório com binários quando possível
- não muda estado canônico sozinho

### ChatGPT
- integra auditorias
- decide tecnicamente o que entra no estado canônico
- atualiza STATE / DECISIONS / BLOCKERS após validação

## Convenção de auditoria
Cada auditoria deve conter:
- artefato auditado
- SHA-256
- PASS comprovados
- FAIL comprovados
- inconclusivos
- blockers
- recomendação mínima
