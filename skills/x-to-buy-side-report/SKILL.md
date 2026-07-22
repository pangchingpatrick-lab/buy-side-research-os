---
name: x-to-buy-side-report
description: Use to turn X-led early signals from the runtime data layer into Chinese buy-side insight reports, with validation questions for the next research loop. Trigger when the user asks for X signal research, Twitter/X market signal analysis, a Chinese buy-side report, a research packet, or PM-facing investment insight based on early signals. Route packets through skill_hub/router.md before analysis.
---

# X to Buy-Side Report

## Purpose

Use this skill to run a simple buy-side research loop:

`Runtime Data Layer -> Context Packet -> Skill Hub Router -> Thinking Skills / Methodology -> Industry Frameworks -> Analysis Methods -> Report Template -> Insight Report -> Validation Questions -> Back to Data Collection`

The skill is not a generic report generator. It converts decision-useful early signals from `system_index` into a structured context packet, routes the packet through the Skill Hub, writes a concise Chinese insight report, and produces next-round validation questions.

## Core Rules

- Final insight reports must be in Chinese.
- Do not fabricate X posts, URLs, accounts, data, rankings, financial numbers, market size, or company claims.
- Treat X, Hacker News, and Product Hunt as early-signal sources, not final proof.
- Use official filings, company reports, earnings calls, regulator data, broker research, and financial databases to validate signals.
- If a claim is not verified, mark it as `待验证`.
- If data is missing, mark it as `待补充`.
- Separate early signals, verified evidence, assumptions, opinions, and PM actions.
- Keep the system simple. Do not create extra layers or research object models.
- Do not treat raw X posts as final evidence. Use canonical JSON records from the runtime data layer.
- Do not use the repository's legacy `data/` directory as the default input.

## Inputs

Use one or more of:

- A topic from the user.
- Runtime data from `/Users/pangpatrick/Desktop/research_data/system_index`.
- A prepared context packet produced by `scripts/build_data_context.rb`.
- User-provided source links or notes.
- Live X / web / database access only when the user explicitly asks or the runtime data layer is insufficient.

## Outputs

Create only the outputs needed for the loop:

- Context packet or working notes when needed.
- Chinese insight report in the user-requested format.
- Validation questions for the next data collection loop.

Do not generate a full report when the user only asks for structure, templates, or documentation.

## Required References

Read the relevant reference before each task:

- `../../data_layer/README.md`: Use to understand the runtime data contract.
- `../../skill_hub/router.md`: Use before analysis to choose core skills, thinking skills, frameworks, analysis methods, and report templates.
- `references/data_source_rules.md`: Use before collecting or filtering sources.
- `references/research_packet_template.md`: Use when creating or updating a research packet.
- `../../skill_hub/core_skills/*.md`: Use when the packet is a strong research case.
- `../../skill_hub/thinking_skills/*.md` and `../../skill_hub/research_methodologies/*.md`: Use for reasoning path selection.
- `../../skill_hub/industry_frameworks/*.md`: Use the selected framework files for analysis.
- `../../skill_hub/analysis_methods/*.md`: Use to validate and translate the reasoning.
- `../../skill_hub/report_templates/*.md`: Use for the selected PM-facing output format.
- `references/report_template.md`: Use when writing the Chinese insight report.
- `references/validation_loop.md`: Use when generating next-round validation questions.

## Workflow

1. Clarify the topic, category, and requested output type.
2. Inspect the runtime data layer:

   ```bash
   ruby scripts/inspect_data_layer.rb
   ```

3. Build a context packet:

   ```bash
   ruby scripts/build_data_context.rb [category|all] [limit]
   ```

4. Load the relevant canonical JSON records from `system_index/documents/*.json`.
5. Preserve source URLs, verification status, credibility, tickers, categories, tags, and data gaps.
6. Route the packet through `skill_hub/router.md`.
7. Read the selected core skill, thinking skill, methodology, industry framework, analysis method, and report template files.
8. Generate a concise Chinese insight report from traceable evidence only.
9. Generate validation questions.
10. Send validation questions back to the data collection layer for the next loop.

## Final Check

Before finishing, confirm:

- The runtime data layer was inspected before analysis.
- The report is based on filtered high-quality runtime records, not raw X summaries.
- Every core signal has a source, score, verification status, and investment relevance.
- Signals below 18/25 are excluded from the core thesis or placed in `待观察 / 附录`.
- The context packet was routed through `skill_hub/router.md`.
- The selected frameworks are named in the working notes or report.
- The report answers what changed, why now, who benefits, market expectation, variant perception, catalysts, invalidation, and PM next action.
- Validation questions are specific enough to guide the next data collection round.
