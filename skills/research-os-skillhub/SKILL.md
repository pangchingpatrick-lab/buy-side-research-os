---
name: research-os-skillhub
description: Use when routing prepared local Research OS data into Chinese buy-side research reports, selecting core skills, references, thinking skills, methodologies, industry frameworks, analysis methods, report templates, evaluating outputs, and creating validation or memory artifacts. Do not collect new data.
---

# Research OS SkillHub

## Role

Use this skill as the mature-skill entry point for the Buy-side Research OS.

This skill does not collect data. It routes prepared local data through a controlled research process:

```text
local data packet
-> route
-> references
-> core skill
-> thinking skills / methodology
-> industry framework
-> analysis methods
-> report template
-> evaluator
-> validation tasks
-> memory candidate
```

## Canonical Library

The discoverable skill package is:

```text
skills/research-os-skillhub/
```

The underlying SkillHub library is:

```text
skill_hub/
```

Use files in `skill_hub/` as the source of truth for routing, contracts, core skills, frameworks, methods, templates, evaluators, and memory.

## Local Data Source

Use prepared runtime data only:

```text
/Users/pangpatrick/Desktop/research_data/system_index/index.jsonl
/Users/pangpatrick/Desktop/research_data/system_index/category_index/*.jsonl
/Users/pangpatrick/Desktop/research_data/system_index/documents/*.json
```

Do not use repository `data/` files as the default source of truth unless the user explicitly requests them.

## Quick Commands

Inspect runtime data:

```bash
ruby skills/research-os-skillhub/scripts/inspect-runtime-data-layer.rb
```

Build context packet:

```bash
ruby skills/research-os-skillhub/scripts/build-context-packet.rb [category|all] [limit]
```

Validate route schema:

```bash
ruby skills/research-os-skillhub/scripts/validate-route-schema.rb
```

## Required Workflow

1. Inspect the runtime data layer.
2. Build a context packet.
3. Read `skill_hub/registry.md`.
4. Read `skill_hub/router.md`.
5. Create `route.md` and `route.json` before writing.
6. Read the selected files from `skills/research-os-skillhub/references/`.
7. Read selected files from `skill_hub/core_skills/`.
8. Read selected thinking skills and methodology files.
9. Read selected industry frameworks as support only.
10. Read selected analysis methods.
11. Read the selected report template.
12. Write the Chinese buy-side output.
13. Evaluate with `skill_hub/evaluators/report_evaluator.md`.
14. Create `validation_tasks.jsonl`.
15. Create `memory_update_candidate.md` when a reusable lesson exists.

## Resource Navigation

Read these references as needed:

- `references/calling-sequence.md`: full calling order.
- `references/routing-and-contracts.md`: route files, schema, and complete-run contracts.
- `references/core-skill-taxonomy.md`: what each core skill does and when it should be primary.
- `references/research-event-discipline.md`: early-signal event audit rules.
- `references/source-evidence-taxonomy.md`: source quality and verification discipline.
- `references/ticker-role-taxonomy.md`: ticker role and beneficiary discipline.
- `references/thinking-methods-map.md`: thinking skills, methodologies, frameworks, and analysis methods.
- `references/report-output-standard.md`: PM-facing report requirements.
- `references/evaluator-and-memory.md`: scoring, hard-fail rules, memory update discipline.
- `references/example-route.md`: example route structure.

## Primary / Auxiliary Rule

Every complete run must select:

- exactly one primary core skill
- zero to two auxiliary core skills

Do not use all core skills equally.

## Core Skill Map

- Skill 001: strong-case distillation.
- Skill 002: SemiAnalysis-style technical infrastructure and supply-chain reasoning.
- Skill 003: institutional equity research workflow.
- Skill 004: scarce-layer and bottleneck mapping.
- Skill 005: public-claim and early-signal event distillation.

Skill 005 should route into thinking methods when public signals matter:

- `skill_hub/thinking_skills/skill_009_research_event_reasoning.md`
- `skill_hub/thinking_skills/skill_010_cross_industry_bottleneck_event_mapping.md` when the event implies a bottleneck or beneficiary map
- `skill_hub/research_methodologies/research_event_distillation.md`

Skill 005 does not replace Skill 001-4. Its two shared bottleneck references should feed the existing core skills:

- `skill_hub/references/ai_infrastructure_bottleneck_method.md`
- `skill_hub/references/cross_industry_bottleneck_framework.md`
- `skill_hub/references/event_analysis_output_shape.md`

## Event Audit Rule

If X, a16z, GeoScope, newsletters, blogs, or public specialist posts materially support the report, route through event audit before using the signal.

Read:

- `references/research-event-discipline.md`
- `references/source-evidence-taxonomy.md`
- `references/ticker-role-taxonomy.md`
- `skill_hub/contracts/research_event_contract.md`
- `skill_hub/references/ai_infrastructure_bottleneck_method.md` when AI infrastructure is involved
- `skill_hub/references/cross_industry_bottleneck_framework.md` when the signal implies constrained-layer mapping
- `skill_hub/references/event_analysis_output_shape.md`
- `skill_hub/thinking_skills/skill_009_research_event_reasoning.md`
- `skill_hub/analysis_methods/event_audit.md`

Classify each material signal by claim type, evidence type, evidence strength, ticker role, discovery stage, price-in status, and report use.

## Thinking Dominance Rule

Thinking skills and research methodologies must dominate the report logic.

Industry frameworks are support checklists. They define what to inspect, not how to think.

## Complete Run Artifacts

A complete Research OS report run must produce:

```text
route.md
route.json
report.md / pm_brief.md / investment_memo.md
report_evaluation.md
validation_tasks.jsonl
memory_update_candidate.md
```

If any required artifact is missing, label the run `partial`.

## Guardrails

- Do not collect new data.
- Do not browse or call external APIs from this skill.
- Do not fabricate evidence, URLs, accounts, numbers, claims, consensus, or catalysts.
- Mark unsupported claims as `待验证`.
- Mark missing data as `待补充` or `数据暂缺`.
- Preserve source traceability.
- Start reports with a PM-grade conclusion.
- Full reports should read like 8-10 page internal investment memos, not Research OS run logs.
- Full reports must answer five questions near the front: market consensus, our non-consensus view, why now, best beneficiaries versus peers, and PM action.
- Full reports must front-load a Consensus -> Our View -> Why -> 3-5 Alpha Candidate Basket section.
- Candidate tickers must be the stock expression of the variant view, not generic industry exposure.
- Candidate tickers and signal clusters must answer Why Now: why this matters now rather than last year or next year.
- Full reports and investment memos must include Signal-to-Alpha logic.
- Do not repeat the same thesis, ticker, catalyst, or evidence gap across multiple sections unless the later section adds new investment information.
- Compression must preserve bottleneck migration logic, market expectation / price-in, primary evidence gap, catalyst, invalidation, company-specific risk, and PM action.
