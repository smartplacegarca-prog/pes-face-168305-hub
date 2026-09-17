# STATE.md — ESTADO CANÔNICO

Data: 2026-09-17

## Projeto
- Jogo: SP Football Life 2026 / PES 2021
- Player ID: 168305
- Arquitetura baseline: FPK em 168305 + texturas alias 5603a
- Dono/decisão humana final: Luiz Guilherme

## Baseline V3.2
- STRUCTURAL CORE: PASS
- Albedo/naturalidade: PASS
- Likeness/identidade: FAIL — identidade 5603a dominante
- Hair style: FAIL — estilo atual não representa Luiz
- READY FOR EXTERNAL AUDIT: NO
- READY FOR GAME: NO

## Hashes V3.2
- ZIP: f6bcb3335f3080e84da00b1709fef6f69f5fe87d65b60be4f49f4786f629711a
- FPK: 6cb20cfd0417db5a94f3528a8e2a473c8e461158a5f88d6a386dcfe5c0a1f81b
- face_high: de0820ca2e312ff6a1fdc34383819e009657a583f788121b209e44c0fa26c2d8
- hair_high: 6fcc275bbf74853a20894c8d0b7c7ecd2be5b006bedaad41eb0beef1aac14e76
- face FTEX: 4fd1f7cf13526c805cc297e349fefd67d6c6c7ffec881c035f539b323c25ef99
- hair FTEX: 3c72376087e81824125226f0ad89fced7c96f9d7872266759b82210bb111ac86
- stable original FPK: 840ca7453e65c3e294f4d795af1cecb11dd0e7817abebcff19c92d5cc4f692e7

## V4 diagnóstico
- Não é candidato de jogo.
- Gate installer: hash stale identificado/corrigível; hardening transacional ainda pendente.
- Gate hair: scratches pretos do unlit não justificam mutilar hair_high; estilo atual continua inadequado.
- Gate likeness: identidade ainda insuficiente; não fechar lábios por comparação com foto estática.

## Material 169070 / alias 35457a
- Pacote real disponível: V4_UNBLOCK_CATALOG_169070.zip
- SHA-256: b81fa6f73a4e0244e37aa01be63e668b0b8900a6bcac545b35a9008adecbda6c
- Contém FPK/face_high/hair_high e texturas do conjunto 169070/35457a.
- Uso autorizado agora: benchmark read-only de cabelo, face e mouth/rest pose.
- Swap de base: NÃO autorizado.
- Integração de hair: NÃO autorizada até benchmark conclusivo.

## Auditorias em andamento
- Gemini Spark: rerun do 169070 após confirmação de acesso físico ao ZIP.
- Grok Chat: segunda opinião independente do mesmo pacote.
- ChatGPT: integrador final das duas auditorias.
