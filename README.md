# PES Face 168305 — AI Project Hub

Hub canônico do projeto de face custom do Luiz Guilherme para **SP Football Life 2026 / PES 2021**.

Este repositório é a **fonte única de verdade** para ChatGPT, Gemini Spark, Grok Chat e Grok Work.

> Estado atual: baseline V3.2 preservado; V4 é diagnóstico; material 169070/35457a em auditoria independente.

## Ordem de leitura para qualquer IA
1. `AGENTS.md`
2. `CANONICAL/STATE.md`
3. `CANONICAL/DECISIONS.md`
4. `TASKS/CURRENT.md`
5. `TASKS/BLOCKERS.md`
6. `ARTIFACTS/REGISTRY.json`

## Branches
- `main` — estado canônico aprovado
- `work/v4` — execução do Grok Work
- `audit/spark` — auditorias do Gemini Spark
- `audit/grok` — auditorias do Grok Chat
- `integration/chatgpt` — consolidação do ChatGPT antes de merge

## Regra de precedência
**arquivo real > hash calculado agora > estado canônico > relatório de IA > hipótese**

Nenhum agente pode declarar `READY FOR GAME = YES` sozinho.

## Estado atual em uma linha
Estrutura e albedo V3.2 estão estáveis; ainda faltam likeness, hair adequado e hardening final do installer.

## Coordenação ativa
Use a Issue #1 para acompanhar o desbloqueio V4 / benchmark 169070.
