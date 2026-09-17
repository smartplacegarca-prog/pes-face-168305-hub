# NEXT_WORK_RECOMMENDATION

STATUS_FOR_CHATGPT_REVIEW = READY

Destinatário: ChatGPT (integrador). **Não** é um prompt executivo para Grok Work.
Branch origem: `audit/grok`
Data: 2026-09-17
READY FOR GAME: NO
Grok Work: permanece BLOQUEADO até ChatGPT consolidar Spark + este laudo.

---

## O que este laudo autoriza ChatGPT a tratar como facto

1. Pacote `V4_UNBLOCK_CATALOG_169070.zip` é real e íntegro. SHA `b81fa6f73a4e0244e37aa01be63e668b0b8900a6bcac545b35a9008adecbda6c`.
2. Alias interno `35457a` está no FPK (2 ocorrências) e as 20 texturas 169070 ≡ 35457a.
3. Baseline V3.2 hashes continuam a bater. Não reabrir V3.2 como candidato de jogo.
4. Duas faces PES (5603a e 169070) pintam boca/cavidade aberta. Não mandar fechar lábios por foto.
5. Base 169070 é outra pessoa no albedo. Não autorizar swap.

## O que NÃO está provado (não mandar o Work “integrar”)

- Hair 169070 na cabeça V3.2 (clip, cards, fade, volume, UV).
- Qualidade do hair contra o Luiz **actual** (PRIMARY 2026-09-17 sem JPEG no Git/anexos).
- Installer V4 diagnóstico (zip ausente neste ambiente). Homologação PowerShell real.

Veredicto hair oficial deste auditor: **INCONCLUSIVE** (falta 3D + falta PRIMARY).  
Sinal de atlas (curl vs slick V3.2) existe, mas não é PASS.

Veredicto base oficial: **MIXED**. Sem swap.

---

## Recomendação de ordem futura (para ChatGPT redigir depois, em `work/v4`)

Quando Spark estiver READY e ChatGPT cruzar os dois laudos, a **menor** execução útil do Grok Work é:

### Prioridade 0 — inputs em falta
- Publicar no storage do hub (Release / LFS / pasta `REFERENCES/PRIMARY_2026-09-17/`) os 3 JPEGs com os SHA do README. Sem isto, qualquer likeness/hair vs Luiz actual continua INCONCLUSIVO.
- Anexar o ZIP V4 diagnóstico **ou** o `FINAL_CORE.ps1` V4 se o Work for tocar no installer. Sem o ficheiro, não fechar Gate 1.

### Prioridade 1 — hair benchmark read-only (único candidato)
- Congelar face_high + albedo V3.2.
- Relink simulado do hair 169070 (`000000` → path vivo 5603a **ou** staging isolado; não copiar para o jogo).
- Render material-faithful frente / 3-4 / perfil.
- Checklist: clipping testa/orelhas/pescoço, cards na face, hairline, curvatura, fade, volume, bones/weights/materials, NRM/SRM/TRM (política actual: não instalar maps extra).
- Comparar com PRIMARY 2026-09-17 **se os JPEGs existirem**; senão marcar vs-Luiz INCONCLUSIVO de novo.
- Entrega: board + hashes before/after (mesmo que after = none) + veredicto `BETTER_THAN_V32 | NOT_BETTER | INCONCLUSIVE`.
- Se BETTER e fit OK: **propor** (não executar) um port só de hair_high + texturas hair, preservando face_high V3.2.
- Se NOT_BETTER ou clip grave: FAIL honesto, não procurar IDs inventados nesta ronda.

### Prioridade 2 — installer (depois ou em paralelo, sem install in-game)
Sobre o `.ps1` **real** que o ChatGPT indicar (V3.2 está stale; V4 não foi visto aqui):
- `$FinalFace` tem de igualar o FTEX do kit que se pretende instalar (`4fd1f7cf…` no V3.2 actual).
- Uma transação: backup → copy → verify → quarantine delete → manifest write; rollback automático se qualquer passo falhar após mutação.
- Recusar segundo `Install` enquanto `RESULTADOS/INSTALL_MANIFEST.json` existir, até `Restore` ou política explícita de cadeia.
- Homologar com PowerShell nativo. Python-port não conta como PASS de installer.

### Fora de âmbito até nova evidência
- Swap de base 169070.
- Morph labial / fechar bind pose.
- Instalar sclera / NRM / SRM / TRM.
- Alterar Player ID 168305.
- Whole-photo warp.
- `READY FOR GAME = YES`.

---

## Se Spark discordar

Regra de `TASKS/COORDINATION_NOW.md`: arquivo real / hash calculado agora / render reproduzível vencem relatório.  
ChatGPT não deve mediazir “no meio” hashes diferentes — deve mandar recalcular no mesmo ZIP.

---

## Checklist ChatGPT antes de criar prompt Work

- [ ] Spark `STATUS_FOR_CHATGPT_REVIEW = READY`
- [ ] Cruzamento Spark × Grok sem ler um laudo no outro **durante** a auditoria (já cumprido deste lado)
- [ ] PRIMARY JPEGs no disco do Work **ou** aceite explícito de vs-Luiz INCONCLUSIVO
- [ ] Prompt Work **não** pede install, swap, lip close, nem READY FOR GAME
- [ ] Branch alvo do executor: `work/v4` (ou `work/v4-*`)
- [ ] Baseline V3.2 continua imutável

Fim da recomendação. Sem comando ao Grok Work nesta ronda.
