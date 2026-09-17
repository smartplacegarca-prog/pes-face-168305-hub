# WORK GO — V4.2 MORPH / LIKENESS — ID 168305

Status: EXECUTE

V4.1 foi validado como base técnica, não como candidato visual final.

## Bloqueio principal agora
A geometria facial continua 5603a/V3.2. O próximo passo é um morph controlado real para aproximar o jogador das referências atuais do Luiz sem quebrar topology/UV/weights.

## Inputs obrigatórios
O executor deve receber o pacote externo `V4_2_REFERENCE_PACK_168305.zip` (SHA-256 `0ffa97e960697b46a84a7c2fc75b7c5d4214349777328d77dd918f9cb09d0b14`).
Ele contém:
- meta visual oficial;
- frente atual principal;
- perfil esquerdo atual;
- perfil direito atual;
- três frontais extras de 2026-09-17;
- prompt operacional V4.2.

## Regra de execução
- Não recomeçar albedo/installer do zero.
- V4.1 é base.
- O foco é face_high / likeness + validação do hair 169070.
- Blender não é requisito absoluto: reutilizar o pipeline programático de edição FMDL já comprovado no projeto quando necessário.
- Após vertex edit, liberar/regerar vertex encoding corretamente (`freeVertexEncoding()` ou equivalente real do pipeline).
- Preservar topology, UV, indices, vertex count, skeleton e weights.
- Não inventar milímetros; usar proporções relativas e overlays reproduzíveis.
- Não fechar/soldar lábios por foto estática.

## Prioridade de morph
1. contorno/largura geral da face e têmporas;
2. nariz em frente e perfil;
3. mandíbula e queixo;
4. região periocular apenas com correspondência segura;
5. lábios somente forma/volume/posição, sem topology change;
6. hairline/encaixe temporal com cautela.

## Hair
Manter 169070/35457a como primeira opção e provar fit/clipping/hairline/volume no melhor renderer offline disponível. Se o ambiente não tiver renderer 3D, não declarar fit provado.

## Entrega V4.2
- um único ZIP final candidato;
- `face_high` realmente modificado + hashes before/after;
- albedo V4.1 preservado salvo motivo objetivo;
- hair 169070 preservado se fit aceitável;
- installer com hashes reais V4.2;
- board com META | FOTO FRONT | CANDIDATO FRONT | FOTO PERFIL L/R | CANDIDATO PERFIL L/R;
- relatório curto e factual.

READY FOR EXTERNAL AUDIT = YES somente com binários reais e validados.
READY FOR GAME = NO até auditoria ChatGPT + Spark + teste humano.
