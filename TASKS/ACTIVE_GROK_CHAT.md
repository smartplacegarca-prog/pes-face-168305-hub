# ACTIVE TASK — GROK CHAT

Branch de trabalho: `audit/grok`
Modo: READ-ONLY sobre baseline/candidatos. Pode escrever somente auditoria/coordenação na própria branch.

## Ordem obrigatória de leitura
1. `PROMPTS/ENTRYPOINT_ALL_AGENTS.txt`
2. `AGENTS.md`
3. `CANONICAL/STATE.md`
4. `CANONICAL/DECISIONS.md`
5. `TASKS/CURRENT.md`
6. `TASKS/BLOCKERS.md`
7. `REFERENCES/PRIMARY_2026-09-17/README.md`
8. `ARTIFACTS/REGISTRY.json`
9. Issue #1

## Objetivo desta rodada
Emitir segunda opinião técnica independente e coordenar a próxima execução do Grok Work, SEM ainda liberar execução.

## Trabalho obrigatório
### A. Canonical sanity check
- confirmar que V3.2 continua baseline;
- confirmar que V4 continua diagnóstico;
- confirmar `READY FOR GAME = NO`;
- listar qualquer divergência entre repositório e memória local.

### B. 169070 / 35457a
Se o pacote real estiver acessível no ambiente:
- validar FPK/FMDL/texturas e hashes calculados agora;
- confirmar alias 35457a por arquivo/binário;
- auditar hair 169070 material-faithful;
- benchmark da base 169070 somente como referência, sem swap;
- comparar mouth/rest pose entre duas faces PES reais;
- usar `BETTER_THAN_V32 | NOT_BETTER | INCONCLUSIVE` para hair;
- usar `BETTER_BENCHMARK | WORSE_BENCHMARK | MIXED | INCONCLUSIVE` para base.

Se o pacote real NÃO estiver acessível:
- marcar essas partes como `INCONCLUSIVE`;
- não usar dados lembrados da conversa como substituto.

### C. Novas fotos 2026-09-17
Se os binários estiverem acessíveis:
- tratá-los como PRIMARY_REFERENCE_SET;
- reavaliar hair, nariz de perfil, mandíbula, queixo, olhos/periocular, sobrancelhas e pelos faciais;
- apontar quais conclusões antigas devem ser descartadas ou reabertas.

Se as imagens não estiverem acessíveis fisicamente:
- marcar comparação visual como `INCONCLUSIVE`.

### D. Installer
Revisar o estado do hardening e confirmar:
- toda mutation window dentro de transação;
- manifest write protegido;
- quarantine deletion pós-commit;
- proteção contra segundo Install com manifest ativo;
- rollback pós-copy;
- diferença explícita entre Python-port e PowerShell real.

## Saída obrigatória na branch `audit/grok`
Criar:
- `AUDITS/GROK/V4_169070_SECOND_OPINION.md`
- `AUDITS/GROK/NEXT_WORK_RECOMMENDATION.md`

O segundo arquivo deve ser uma recomendação operacional para ChatGPT consolidar, NÃO um comando direto ao Grok Work.

## Proibições
- não editar `CANONICAL/`;
- não editar baseline;
- não instalar nada;
- não gerar `READY FOR GAME = YES`;
- não autorizar swap de base sem evidência;
- não inventar mm, landmarks, hashes ou comportamento de engine.

Quando terminar, deixe no topo do laudo:
`STATUS_FOR_CHATGPT_REVIEW = READY`
