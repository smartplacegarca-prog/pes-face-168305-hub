# ACTIVE TASK — GEMINI SPARK

Branch de trabalho: `audit/spark`
Modo: auditoria independente / READ-ONLY sobre baseline e candidatos. Pode escrever somente auditoria na própria branch.

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
Fazer auditoria crítica independente do estado atual, especialmente do candidato 169070/35457a, das novas referências de 2026-09-17 e do installer.

## Trabalho obrigatório
### A. Validar material real 169070
Somente se o pacote físico estiver acessível:
- recalcular hashes na sessão;
- confirmar estrutura 169070;
- confirmar alias 35457a em arquivo/binário;
- validar FPK, face_high, hair_high e texturas;
- não reaproveitar hashes/medidas de relatórios antigos sem recalcular.

### B. Hair 169070
- inspecionar alpha/material real;
- comparar com V3.2;
- se tecnicamente possível, benchmark visual sobre cabeça V3.2 sem integração;
- avaliar fade, curvatura, volume, hairline, clipping, cards, material aliases, bones/weights;
- veredicto: `BETTER_THAN_V32 | NOT_BETTER | INCONCLUSIVE`.

### C. Base / likeness
- base 169070 é benchmark, não swap;
- comparar PHOTO CURRENT | V3.2 | 169070 quando as imagens reais estiverem acessíveis;
- priorizar as referências de 2026-09-17;
- não usar números antropométricos sem método reproduzível e overlay;
- veredicto: `BETTER_BENCHMARK | WORSE_BENCHMARK | MIXED | INCONCLUSIVE`.

### D. Mouth/rest pose
- comparar geometria real da boca de V3.2 e 169070;
- não assumir nomes de ossos, ranges em mm ou comportamento de engine sem prova;
- veredicto: `LIKELY_PIPELINE_REST_POSE | LIKELY_GEOMETRY_PROBLEM | INCONCLUSIVE`.

### E. Installer
Auditar estaticamente:
- cobertura total da mutation window;
- manifest dentro da transação;
- quarantine pós-commit;
- segundo Install com manifest ativo;
- rollback pós-copy;
- se houve PowerShell real ou apenas port/simulação.

## Saída obrigatória na branch `audit/spark`
Criar:
- `AUDITS/GEMINI_SPARK/V4_169070_INDEPENDENT_AUDIT.md`
- `AUDITS/GEMINI_SPARK/CLAIMS_REJECTED_OR_UNPROVEN.md`

O segundo arquivo deve listar explicitamente qualquer afirmação anterior que não seja reproduzível no material real.

## Proibições
- não editar `CANONICAL/`;
- não alterar baseline;
- não instalar nada;
- não declarar `READY FOR GAME = YES`;
- não inventar hashes, mm, landmarks ou thresholds;
- se faltar pacote/imagem real: `INCONCLUSIVE`, sem completar a lacuna com conhecimento geral.

Quando terminar, deixe no topo do laudo:
`STATUS_FOR_CHATGPT_REVIEW = READY`
