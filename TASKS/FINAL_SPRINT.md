# FINAL SPRINT — ENTREGAR FACE JOGÁVEL

Data: 2026-09-17
Objetivo único: produzir um candidato final jogável para o Player ID 168305 com o máximo de semelhança possível com Luiz, sem reabrir discussões antigas nem iniciar novas rodadas de diagnóstico.

## Regra de trabalho em equipe
ChatGPT, Grok Chat/Grok Build e Gemini Spark estão trabalhando como uma única equipe sobre o mesmo hub. O GitHub é a fonte comum. Cada agente deve ler o trabalho dos outros somente depois de produzir sua própria parte quando isso preservar independência; depois disso, deve convergir para a entrega.

## Hierarquia
- Luiz: decisão humana final.
- ChatGPT: líder técnico, integrador e auditor final.
- Grok Chat: coordenador técnico do ecossistema Grok.
- Grok Build: executor principal de FMDL/FTEX/FPK/Blender/scripts.
- Gemini Spark: QA independente e caçador de regressões.

## Estado congelado
- Player ID = 168305.
- Baseline funcional = V3.2.
- V3.2 naturalidade = PASS; likeness = FAIL; hair style = FAIL.
- Whole-photo warp proibido.
- Não fechar/soldar lábios por foto estática.
- Não trocar a base inteira 169070 sem prova clara de benefício e sem preservar pipeline.
- READY FOR GAME só pode virar YES após candidato real + validação técnica + autorização humana.

## Estratégia desta sprint
Não fazer mais auditorias abertas. Trabalhar por execução e verificação curta:
1. Grok Build cria UM candidato offline completo.
2. Grok Chat revisa esse candidato e aponta apenas bugs bloqueadores.
3. Spark revisa o mesmo candidato e aponta apenas bugs bloqueadores.
4. Grok Build corrige somente bloqueadores reais.
5. ChatGPT consolida hashes, installer e pacote final.
6. Entrega de um único ZIP para teste in-game.

## Ordem técnica obrigatória
### A. Hair
- Prioridade máxima: cabelo atual do Luiz.
- Benchmark e tentativa de port do hair 169070/35457a porque é o único candidato real disponível com cards cacheados/ondulados.
- Face_high V3.2 deve permanecer congelada durante o primeiro encaixe do hair.
- Render material-faithful front / 3-4 / profile.
- Corrigir apenas fit, relink, clipping, hairline e materiais necessários.
- Se o 169070 claramente não encaixar, abandonar rápido e usar a melhor solução disponível sem iniciar caça infinita a catálogo.

### B. Likeness facial
Usar V3.2 como estrutura funcional e fazer morph controlado somente onde a referência atual exige:
- largura/altura geral da face;
- nariz de perfil e projeção da ponta;
- mandíbula e queixo;
- região periocular;
- sobrancelhas;
- lábios somente forma/volume, sem soldar bordas;
- hairline e transição temporal.

Preservar topology, UV, index, skeleton, weights e vertex count salvo evidência técnica explícita.
Após qualquer vertex edit, liberar/regerar vertex encoding corretamente.

### C. Albedo
- Partir do V3.2 limpo.
- Ajustar apenas identidade: tom, sobrancelhas, bigode fino, cavanhaque/barba esparsa, sombras naturais.
- Proibido photo-paste evidente, halo, seam, green patch, painted lips, chin tab.

### D. Installer
O pacote final deve:
- usar hashes reais do candidato final;
- bloquear segundo Install com manifesto ativo;
- cobrir toda janela de mutação com rollback;
- escrever manifesto de forma protegida;
- preservar cadeia de Restore;
- diferenciar claramente teste estático de homologação PowerShell real.

## Entregas obrigatórias do Grok Build
Na branch `work/v4`:
- candidato final offline completo;
- `FINAL_CANDIDATE_MANIFEST.json` com SHA-256 de todos os binários finais;
- `FINAL_RENDER_BOARD.png` ou equivalente;
- `FINAL_TECH_REPORT.md` curto, factual;
- installer final endurecido;
- ZIP final pronto para teste.

## Entregas obrigatórias do Grok Chat
Na branch `audit/grok`:
- revisar o candidato final do Build;
- listar no máximo bugs bloqueadores reais;
- não pedir nova fase de pesquisa se o candidato estiver tecnicamente utilizável;
- produzir `FINAL_BLOCKERS_GROK.md`.

## Entregas obrigatórias do Spark
Na branch `audit/spark` ou, se o conector não permitir escrita, em relatório anexado ao usuário:
- validar hashes e regressões;
- procurar corrupção estrutural, clipping grave, materiais errados, regressão de likeness e installer inseguro;
- listar no máximo bugs bloqueadores reais;
- produzir `FINAL_BLOCKERS_SPARK.md`.

## Critério de parada
A equipe para somente quando existir UM pacote candidato jogável ou quando houver um bloqueio técnico objetivo e demonstrável que impeça gerar binário válido.
Não parar por incerteza estética pequena.
Não abrir nova rodada de brainstorming.
Não pedir novas referências ao usuário nesta sprint.

## Gatilho de execução
Ao receber a mensagem curta `EXECUTE FINAL SPRINT NOW`, cada agente deve iniciar imediatamente sua função sem pedir novo plano ao usuário. Grok Chat deve despachar o Grok Build. Spark deve preparar QA e revisar assim que o candidato aparecer. ChatGPT fará a consolidação final sobre os artefatos reais produzidos.
