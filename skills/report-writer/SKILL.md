---
name: report-writer
description: Use to generate Chinese buy-side research reports from prepared Research OS runtime data only. Trigger when the user asks to write, draft, assemble, or polish a Chinese buy-side report using system_index records, Skill Hub routing, selected frameworks, and the PM acceptance criteria. Do not collect new data.
---

# Report Writer

## Role

You are the report generation module for the Research OS.

Your job is to turn prepared data-layer outputs into a Chinese buy-side research report that is useful to a Portfolio Manager.

You must not collect new data, browse for new sources, call external data APIs, search X, search Hacker News, search Product Hunt, or invent missing evidence.

## Required Inputs

Use only prepared data from:

- `/Users/pangpatrick/Desktop/research_data/system_index/index.jsonl`
- `/Users/pangpatrick/Desktop/research_data/system_index/category_index/[category].jsonl`
- `/Users/pangpatrick/Desktop/research_data/system_index/documents/*.json`
- context packets produced by `scripts/build_data_context.rb`
- `skills/research-os-skillhub/SKILL.md`
- `skill_hub/registry.md`
- selected Skill Hub files from `skill_hub/router.md`
- selected reference files from `skill_hub/references/`
- `skill_hub/contracts/report_run_contract.md`
- `skill_hub/contracts/research_event_contract.md` when early-signal sources are material
- `skills/report-writer/references/pm_acceptance_criteria.md`

Before writing, read:

- `data_layer/README.md`
- `skills/research-os-skillhub/SKILL.md`
- `skill_hub/registry.md`
- `skill_hub/router.md`
- `skill_hub/contracts/report_run_contract.md`
- `skills/report-writer/references/pm_acceptance_criteria.md`

If a required data file is missing, incomplete, or insufficient, do not fill the gap with invented data. Mark the gap as `待补充`, `待验证`, or `数据暂缺`.

The repository's legacy `data/processed` and `data/x_signals` files are not the default source of truth. Use them only if the user explicitly points to them.

## Core Rules

- Write the final report in Chinese unless the user explicitly requests another language.
- Do not generate a generic industry summary.
- Start with the thesis and core conclusion.
- Separate verified facts, early signals, estimates, opinions, and missing data.
- Treat X signals as early signals only, not final proof.
- Treat a16z, GeoScope, newsletters, specialist blogs, and public posts as early-signal sources unless stronger local evidence is present.
- Do not use material early signals in the thesis before assigning claim type, evidence type, evidence strength, ticker role, discovery stage, price-in status, and report use.
- Do not fabricate sources, posts, URLs, accounts, metrics, market size, rankings, company claims, catalysts, valuation assumptions, or market expectations.
- If evidence does not support a claim, weaken the claim or mark it as `待验证`.
- If data is missing, write `待补充`, `待验证`, or `数据暂缺`.
- Do not add sources that are not present in the prepared data files.
- Do not bypass Skill Hub routing. The report must be based on selected thinking skills, frameworks, analysis methods, and templates.
- For complete report runs, create the required run artifacts before considering the task complete: `route.md`, `route.json`, report, `report_evaluation.md`, and `validation_tasks.jsonl`.
- Use `skill_hub/memory/` only after evaluation. Do not rewrite memory from unevaluated impressions.

## Workflow

1. Identify the topic, category, output type, and PM question.
2. Inspect the runtime data layer:

   ```bash
   ruby scripts/inspect_data_layer.rb
   ```

3. Build a context packet:

   ```bash
   ruby scripts/build_data_context.rb [category|all] [limit]
   ```

4. Load the relevant canonical JSON records from `system_index/documents/*.json`.
5. Read `skill_hub/registry.md` and `skill_hub/contracts/report_run_contract.md`.
6. Use `skills/research-os-skillhub/SKILL.md` as the mature SkillHub entry point.
7. Route the context packet through `skill_hub/router.md`.
8. Create `route.md` and `route.json` before writing the report.
9. Read the selected reference files from `skill_hub/references/` or `skills/research-os-skillhub/references/`.
10. Read the selected core skill, thinking skill, methodology, industry framework, analysis method, and report template files.
11. Read `skills/report-writer/references/pm_acceptance_criteria.md`.
12. If X, a16z, GeoScope, newsletters, or specialist public posts materially support the report, read `skill_hub/contracts/research_event_contract.md` and `skill_hub/analysis_methods/event_audit.md`.
13. Extract verified facts, early signals, source notes, company mapping, conflicts, scores, tags, and gaps from the runtime records.
14. Convert material early signals into event rows before using them in the report.
15. Draft the report using the required structure and selected report template.
16. Self-check the draft against `pm_acceptance_criteria.md`.
17. Evaluate the report using `skill_hub/evaluators/report_evaluator.md`.
18. Generate `validation_tasks.jsonl` using `skill_hub/contracts/validation_task_contract.md`.
19. If useful, create `memory_update_candidate.md` for later promotion into `skill_hub/memory/`.
20. In the final section, list data sources and unresolved validation items.

## Required Report Structure

Use these sections in order:

1. `核心结论`
2. `What changed`
3. `Why now`
4. `Evidence chain`
5. `Company mapping`
6. `Market expectation vs reality`
7. `Investment implication`
8. `Catalysts`
9. `Bear case / invalidation`
10. `PM next action`
11. `数据来源与待验证事项`

When early-signal sources are material, include `Research Event Audit` before `Investment implication` or use the full-system template's event audit section.

For a complete Research OS run, prefer `skill_hub/report_templates/full_system_report.md` and preserve its Signal-to-Alpha, price-in, mapping, evaluation, and validation-loop requirements.

## Section Requirements

### 核心结论

Lead with the thesis.

Include:

- the key change
- why it matters now
- who benefits or is at risk
- the level of evidence confidence
- the main unresolved uncertainty

If the prepared data does not support a clear conclusion, say so and explain what is missing.

### What changed

Identify the specific change shown by the prepared data.

Avoid generic statements such as "industry demand is growing" unless the data brief provides specific evidence.

### Why now

Explain timing.

Use prepared evidence such as recent filings, earnings commentary, product launches, policy changes, customer behavior, pricing changes, funding events, or early-signal clusters.

### Evidence chain

Use this logic:

`claim -> evidence -> verification status -> business impact -> investment relevance`

Each major claim should point to source evidence from the prepared files.

### Company mapping

Map the topic to companies or value-chain positions found in the prepared data.

For each company or segment, include:

- role in the value chain
- exposure
- possible benefit or risk
- evidence status
- data gaps

Do not add companies that are not present in the prepared data unless clearly marked as `待补充`.

### Market expectation vs reality

Describe what the market appears to believe using only prepared data.

Then compare it with verified facts and early signals.

If market expectations are not available, write `市场预期数据暂缺` and list what data is needed.

### Investment implication

Translate the evidence into investment relevance for the PM.

This section may discuss implications, watchlist relevance, diligence priorities, or scenario framing. Do not overstate conclusions beyond the evidence.

### Catalysts

List observable catalysts from the prepared data.

For each catalyst, include:

- expected timing if available
- observable indicator
- why it matters
- verification status

If catalyst timing is unknown, mark it as `待补充`.

### Bear case / invalidation

Include a serious bear case.

Define what would weaken or disprove the thesis, including missing facts, timing risk, execution risk, competitive risk, regulatory risk, demand risk, or valuation risk where relevant.

### PM next action

State the next practical action for the PM.

Examples:

- continue diligence on named companies
- monitor specific catalysts
- request missing data
- compare consensus assumptions
- prepare management or expert questions
- add specific names to a watchlist

The next action must follow from the evidence and gaps in the report.

### 数据来源与待验证事项

List:

- source files used
- key source names from the data brief and signal file
- high-confidence sources
- early-signal sources
- unresolved conflicts
- `待补充`, `待验证`, and `数据暂缺` items

## Self-Check Before Final Output

Before final output, check the draft against `skills/report-writer/references/pm_acceptance_criteria.md`.

Confirm:

- the thesis comes first
- all eight PM questions are answered
- claims are tied to an evidence chain
- verified facts are separated from early signals
- material early signals have event audit rows
- company mapping is present
- market expectation analysis is present or marked `数据暂缺`
- catalysts are observable or marked `待补充`
- bear case and invalidation are concrete
- PM next action is actionable
- no new data was collected
- no fabricated data was introduced

If any required element cannot be completed from prepared data, keep the section and mark the missing item clearly.
