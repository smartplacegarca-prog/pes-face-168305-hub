# ChatGPT Final Decision — V4.2 Candidate

Date: 2026-09-17
Player ID: 168305
Candidate: v4.2-candidate
Tag commit: bfb868e35f9ad199c7e7a4a56c2f97bafb305b06
ZIP SHA-256: 1c0f42d429b79dd64cb6d4a069a74dbb8f833336f905caed60f831be8591c84e

## Cross-audit result
Grok Chat: CLEAR_FOR_ONE_INGAME_TEST
Gemini Spark: CLEAR_FOR_ONE_INGAME_TEST

## ChatGPT integration decision
STRUCTURAL = PASS
LIKENESS = PASS_FOR_INGAME_TEST
HAIR = PASS_FOR_INGAME_TEST
ALBEDO = PASS
INSTALLER = PASS_FOR_CONTROLLED_TEST

RECOMMENDATION = CLEAR_FOR_ONE_INGAME_TEST
READY_FOR_GAME = NO

## Controlled-test conditions
- Use the official v4.2-candidate ZIP only.
- Verify ZIP SHA-256 before extraction.
- Keep the extracted kit folder intact because FINAL_CORE.ps1 stores the active INSTALL_MANIFEST.json under its own RESULTADOS directory.
- Close Football Life completely before Install/Restore.
- Run one Install only; do not re-run Install while the manifest is active.
- If installation throws after manifest creation, use Restore from the same extracted kit folder before any second install attempt.
- Do not delete or move the extracted kit folder until the controlled test is finished and Restore is no longer needed.

## In-game visual gate
Collect evidence of:
- front close-up
- left 3/4
- right 3/4
- left profile
- right profile
- hairline/front hair
- hair sides/fade
- one gameplay/replay frame under stadium lighting
- one expression/animation frame if practical

Check specifically:
- likeness to Luiz current 2026-09-17 references
- nose projection/width
- jaw/chin
- eye region/brows
- hair clipping/alpha/cards
- neck seam
- albedo seams/halos
- lips/mouth under animation

After this single controlled test, ChatGPT will decide either READY_FOR_GAME or one targeted return-to-Build correction.
