# V4_169070_SECOND_OPINION

STATUS_FOR_CHATGPT_REVIEW = READY

Agent: Grok Chat (audit/grok)
Date: 2026-09-17
Mode: READ-ONLY sobre baseline/candidatos. Escrita só nesta branch de auditoria.
READY FOR EXTERNAL AUDIT: NO
READY FOR GAME: NO

Artifact A: `V4_UNBLOCK_CATALOG_169070.zip` (anexo deste ambiente: `V4_UNBLOCK_CATALOG_169070 (1).zip`)
SHA-256 zip (calculado agora): `b81fa6f73a4e0244e37aa01be63e668b0b8900a6bcac545b35a9008adecbda6c`
Match `ARTIFACTS/REGISTRY.json` / `CANONICAL/STATE.md`: YES

Artifact B: baseline inner zip `08_BASELINE_V3_2.zip` extraído de `MASTER_HANDOFF_V3_2_TO_GROK_CHAT.zip`
SHA-256 zip V3.2 (calculado agora): `f6bcb3335f3080e84da00b1709fef6f69f5fe87d65b60be4f49f4786f629711a`
Match `CANONICAL/HASHES.json` `zip_v32`: YES

Artifact C (ausente): `LUIZ_GUILHERME_FACE_FL26_ID_168305_V4_DIAGNOSTICO.zip`
Status: NÃO presente neste ambiente.

Artifact D (ausente): binários `REFERENCES/PRIMARY_2026-09-17/{right_profile_current,left_profile_current,front_current}.jpg`
Status: só existe o README no Git. Sem JPEG físico.

---

## A. Canonical sanity check

Confirmado no repositório (`CANONICAL/STATE.md`, `CANONICAL/DECISIONS.md`, `CANONICAL/HASHES.json`, `TASKS/CURRENT.md`):

| Claim canónico | Confirmado nesta sessão |
|---|---|
| Baseline = V3.2 | YES |
| V4 = diagnóstico, não candidato | YES (metadado). ZIP V4 diagnóstico **não** estava no disco. |
| Player ID 168305 | YES — não alterado |
| Arquitectura FPK `168305` + alias `5603a` | YES |
| READY FOR GAME = NO | YES |
| Swap 169070 não autorizado | YES |
| Integração hair 169070 não autorizada até benchmark 3D | YES |
| Grok Work bloqueado até consolidação ChatGPT | YES |

Hashes V3.2 **recalculados agora** (LIVECPK / PROOF do zip canónico):

| Asset | Size | SHA-256 agora | vs HASHES.json |
|---|---|---|---|
| face.fpk | 404448 | `6cb20cfd0417db5a94f3528a8e2a473c8e461158a5f88d6a386dcfe5c0a1f81b` | MATCH |
| face_high.fmdl | 128568 | `de0820ca2e312ff6a1fdc34383819e009657a583f788121b209e44c0fa26c2d8` | MATCH |
| hair_high.fmdl | 274663 | `6fcc275bbf74853a20894c8d0b7c7ecd2be5b006bedaad41eb0beef1aac14e76` | MATCH |
| face_bsm_alp.ftex | 575544 | `4fd1f7cf13526c805cc297e349fefd67d6c6c7ffec881c035f539b323c25ef99` | MATCH |
| hair_parts_bsm_alp.ftex | 631064 | `3c72376087e81824125226f0ad89fced7c96f9d7872266759b82210bb111ac86` | MATCH |
| FINAL_CORE.ps1 | 7754 | `cffc314cb5b2db63f4380e9115106c12bd78880fa1c6592c5b7e2f0c94365052` | n/a (não está no HASHES.json) |

### Divergências repositório vs este ambiente (não vs memória de chat)

1. PRIMARY_REFERENCE_SET 2026-09-17 está **registado** mas os 3 JPEGs **não estão** no Git nem nos anexos. Comparação visual contra o Luiz actual = INCONCLUSIVE.
2. ZIP V4 diagnóstico está no REGISTRY sem SHA e **não** veio neste ambiente. Hardening “V4 diagnóstico” = INCONCLUSIVE (só o `.ps1` V3.2 foi lido).
3. Pacote 169070 **está** acessível e o SHA do zip bate com o canónico.
4. O Git **não** contém FPK/FMDL/FTEX; binários pesados estão fora, como `ARTIFACTS/README.md` descreve.

Memória de conversa anterior **não** foi usada como prova. Hashes e strings abaixo foram calculados nesta sessão sobre ficheiros extraídos agora.

---

## B. 169070 / 35457a — validação de pacote

ZIP: 51 ficheiros. `MANIFEST_SHA256.json` tem 50 entradas (não se hasheia a si). Recálculo: **0 mismatches**.

Estrutura presente: `169070/#Win/face.fpk` + extract `face_fpk/{face_diff.bin,face_high.fmdl,hair_high.fmdl}` + `sourceimages/#windx11` (ftex+dds) **e** pasta alias `35457a/sourceimages/#windx11`.

### Alias 35457a — prova binária

- `169070/#Win/face.fpk` contém string `35457a` **2** vezes; `169070` **0**; `5603a` **0**; `168305` **0**.
- 20/20 texturas `169070/sourceimages/#windx11/*` **byte-identical** a `35457a/sourceimages/#windx11/*`.
- `face_high.fmdl` e `hair_high.fmdl` 169070 **não** contêm `35457a`; path interno = `/Assets/pes16/model/character/face/real/000000/sourceimages/` (1× `000000` cada).
- FMDLs V3.2 referem `5603a` (1× cada).

Padrão pasta jogador + alias de textura confirmado no FPK. Relink `000000` é risco de port, não prova de alias.

`face.fpk` ≠ `face.fpk.bak` (mesmo size 381776, hashes diferentes). Não usar `.bak` como substituto.

### Hashes 169070 calculados agora

| Ficheiro | Size | SHA-256 |
|---|---|---|
| face.fpk | 381776 | `3abb61655bedc9aa01cd1d0253bc0efe2d5637adc7997d5727b4c294b2329ccc` |
| face.fpk.bak | 381776 | `658e59b6d063086b94ab0fefaccf3b6e7d07050b780a25eb80bd489e9ba1921d` |
| face_high.fmdl | 128889 | `074250cf8eb6cd12e07402315ada20fdec318baa7822f4d2130dff06b202f9f0` |
| hair_high.fmdl | 251672 | `826393d61324171f3b0f874c6786fdfcd779115b40d530b871cec9207da16504` |
| face_bsm_alp.ftex | 529272 | `c52eeb0e6dc1b4bc314486e32abb70418ea78fe3aaa1cfe8101b65d4811b8668` |
| hair_parts_bsm_alp.ftex | 527432 | `867c7e421cd560ceebd7e680020b9fc6c1c58299324eaae8cd6203790ec09bb3` |

Texturas presentes (pares ftex+dds) em 169070 e 35457a: face_bsm_alp, face_nrm, face_srm, face_trm, hair_parts_bsm_alp, hair_parts_nrm, hair_parts_srm, hair_parts_trm, eye_sclera_bsm, eye_occlusion_alp.

XML do FPK: só `face_diff.bin`, `face_high.fmdl`, `hair_high.fmdl`.

### Hair 169070

O que **foi** possível (2D, ficheiros reais):

- Atlas hair 2048×512. Alpha = cards cacheados/encolhidos, densos (dois tiles de curl + cap). RGB mean ≈ 10 (quase preto).
- Atlas V3.2 `SOURCE/hair_parts_bsm_alp.png` 2048×512: cards lisos/slick, layout diferente.
- hair_high size 251672 ≠ V3.2 274663 → malhas **não** idênticas.
- Materiais hair iguais ao V3.2: `fox_hair_mat`, `pes_3ddf_hair2`, `pes3DDF_Hair2`, `fox_head_shell_mat`, `fox_skin_mat`, `MESH_hair_high`.
- Bones FOX presentes (sk_head/neck, skf_jaw, lips, brows…). Não é rig alienígena.
- Path interno `000000` no hair_high. Port para 168305 exige relink.
- Catálogo inclui hair NRM/SRM/TRM. Arquitectura V3.2 **não instala** esses maps (`CANONICAL/DECISIONS.md`).

O que **não** foi possível:

- Render material-faithful do hair 169070 na cabeça V3.2 congelada (frente / 3-4 / perfil).
- Clipping testa/orelhas/pescoço; cards pretos sobre face; fade vs volume afro; hairline; weights reais em engine.
- Comparação com fotos PRIMARY 2026-09-17 (ausentes).

**Veredicto hair (campo pedido): INCONCLUSIVE**

Sub-sinais (não substituem o campo):

- Atlas 169070 vs atlas V3.2: estilo cacheado vs slick — o 169070 é o único candidato real de curl neste disco.
- Fit 3D / cards / fade / PRIMARY Luiz: INCONCLUSIVE.
- Não é Hair PASS. Não autoriza integração.

### Base 169070 (benchmark only)

Albedo DDS 1024×1024 aberto agora: jogador **diferente** — pele mais escura, barba fechada, tatuagens de pescoço (`Familia`, estrela, lettering), volume tipo afro-taper no albedo, cavidade oral aberta.

face_high size 128889 ≠ V3.2 128568. Mesmo conjunto de bones/materiais FOX (`fox_skin_mat`, `pes_3ddf_skin_face`, `MESH_face_high`, `MESH_face_parts`) + ossos labiais `skf_lip_*` / `skf_jaw`.

Sem PRIMARY 2026-09-17, não há board PHOTO_actual | V3.2 | 169070. Foto secundária do kit V3.2 (`SOURCE/01_front_studio.jpg` / `PREVIEWS/source_photo.jpg`) **não** substitui o set canónico actual.

Não há landmarks reproduzíveis nesta sessão. Sem mm.

Swap 169070 → 168305: **não autorizado** (identidade errada no albedo + topologia de tamanho diferente + path `000000` + decisão canónica).

**Veredicto base (campo pedido): MIXED**

- vs identidade Luiz (PRIMARY): INCONCLUSIVE (fotos ausentes).
- vs V3.2 como *alvo de swap*: pior (pessoa errada, tatuagens).
- vs pipeline PES: útil como segunda face nativa (boca aberta, fade no albedo, rig FOX).

---

## C. Novas fotos 2026-09-17

`REFERENCES/PRIMARY_2026-09-17/` contém **apenas** `README.md` (1908 bytes).  
SHA-256 originais citados no README **não foram verificados** — JPEGs inexistentes neste ambiente e no Git.

Comparação visual hair / nariz de perfil / mandíbula / queixo / olhos / sobrancelhas / pelos faciais contra o Luiz actual:

**INCONCLUSIVE**

Nenhuma conclusão antiga é descartada **por este set**, porque o set não foi aberto. Também **não** se infere a aparência a partir do README (regra do próprio README).

O que permanece de pé vem de `CANONICAL/STATE.md` (não destas fotos): likeness V3.2 FAIL; hair style V3.2 FAIL.

---

## D. Boca / rest pose

Comparação directa de **dois albedos PES reais** (não foto vs mesh):

- V3.2 / 5603a: cavidade oral pintada, lábios entreabertos.
- 169070 / 35457a: a mesma convenção.

Bones labiais nos dois face_high: `skf_lip_t_l/c/r`, `skf_lip_b_l/c/r`, `skf_lip_s_l/r`, `skf_lip_volume`, `skf_jaw`.

Isto **não** prova abertura em mm nem clip in-game. Prova que fechar lábios na bind pose só porque uma foto está fechada é inferência inválida.

**Veredicto boca: LIKELY_PIPELINE_REST_POSE** (comparação PES×PES).  
Comportamento in-game: continua INCONCLUSIVO.  
Não recomendar morph labial.

---

## E. Installer

Ficheiro real lido: `FINAL_CORE.ps1` V3.2, SHA-256 `cffc314cb5b2db63f4380e9115106c12bd78880fa1c6592c5b7e2f0c94365052`.

ZIP V4 diagnóstico: **ausente**. Afirmações do README 169070 sobre try/catch V4 **não** foram reauditadas em `.ps1` V4.

### V3.2 — factos do código

`$FinalFace` no script = `a4d36c01a76a932c08e938ab548712db5869c4c8a7b1adc6f0e021982f8a7f71`  
FTEX V3.2 real = `4fd1f7cf13526c805cc297e349fefd67d6c6c7ffec881c035f539b323c25ef99`  
→ hash stale. Install aborta no gate pré-copy com o kit actual.

`$ExpectedFpkStable` declarado e **não usado** no `switch`.

Ordem Install: backup destinos → listar quarantine → Copy-Item (3 ficheiros) → hash pós-copy → `Remove-Item` quarantine → escrever `RESULTADOS/INSTALL_MANIFEST.json`.

Checklist pedido:

| Item | V3.2 (provado no .ps1) | V4 diagnóstico |
|---|---|---|
| Toda mutation window em transação com rollback | FAIL. `throw` pós-copy (linhas de hash após Copy-Item) **não** restaura backups. | INCONCLUSIVO (zip ausente) |
| Manifest write protegido / dentro da transação | FAIL. Manifest é o último passo. Crash entre copy e write = disco mutado sem manifesto novo. | INCONCLUSIVO |
| Quarantine deletion só após commit válido | FAIL. Delete ocorre **antes** do manifest. | INCONCLUSIVO |
| Bloquear 2º Install com manifest activo | FAIL. Sobrescreve `INSTALL_MANIFEST.json`. Restore passa a apontar para o estado já instalado, não ao CPK virgem. | INCONCLUSIVO |
| Rollback pós-copy | FAIL. Não existe. | INCONCLUSIVO |
| Python-port vs PowerShell real | Nenhum dos dois foi executado aqui. Dry-run Python **não** homologa `powershell -File`. | INCONCLUSIVO |

`$Game = Find-Game` corre **antes** do switch — Restore/Install exigem pasta de jogo mesmo para inspecção.

---

## PASS comprovados

- ZIP 169070 SHA bate com o canónico.
- Manifest interno 169070 íntegro (50/50).
- Alias `35457a` no FPK + texturas 169070≡35457a.
- Hashes V3.2 LIVECPK/PROOF batem com `CANONICAL/HASHES.json`.
- Duas faces PES com cavidade oral aberta no albedo.
- Hair/face 169070 usam materiais/bones FOX reconhecíveis.

## FAIL comprovados

- `$FinalFace` stale no `FINAL_CORE.ps1` V3.2.
- Installer V3.2 não-atómico (copy → throw sem rollback; quarantine/manifest fora de transação; 2º Install sem guarda).
- Base 169070 não é o mesmo indivíduo que o albedo V3.2 (tatuagens / fisionomia). Swap continua proibido por evidência **e** por `DECISIONS.md`.
- hair_high / face_high 169070 **não** são drop-in do V3.2 (sizes diferentes; path `000000`).

## Inconclusivos

- Hair 3D material-faithful na cabeça V3.2.
- Hair vs Luiz PRIMARY 2026-09-17.
- Likeness actual (PRIMARY ausente).
- Conteúdo do installer V4 diagnóstico.
- Homologação PowerShell nativa.
- Alpha cutoff FOX / cards in-game.
- Animação facial in-game.
- Diff de 12 bytes face.fpk vs .bak.
- Identidade roster do jogador 169070 (não necessária para o teste de hair).

## Bloqueadores (para ChatGPT, não para execução imediata)

1. Fotos PRIMARY 2026-09-17 precisam de binários no ambiente do executor.
2. Hair 169070 precisa render 3D na face V3.2 congelada **antes** de qualquer port.
3. Installer: hash stale + transação incompleta no único `.ps1` presente.
4. Grok Work continua BLOQUEADO até consolidação.
5. READY FOR GAME permanece NO.

## Menor próxima acção (coordenação)

ChatGPT deve consolidar este laudo com Spark. Só depois: (1) colocar os 3 JPEGs PRIMARY no storage acessível; (2) pedir ao Work **apenas** benchmark 3D read-only do hair 169070 sobre V3.2, com relink simulado, sem install e sem swap de base.

READY FOR EXTERNAL AUDIT: NO
READY FOR GAME: NO
