# Report Run Guide

Use this guide when creating a complete Research OS report run.

## Required Inputs

- research topic or PM question
- category or data scope
- runtime context packet from local `system_index`
- selected route

## Commands

Inspect data:

```bash
ruby skills/research-os-skillhub/scripts/inspect-runtime-data-layer.rb
```

Build packet:

```bash
ruby skills/research-os-skillhub/scripts/build-context-packet.rb [category|all] [limit]
```

Validate schema:

```bash
ruby skills/research-os-skillhub/scripts/validate-route-schema.rb
```

## Complete Run Artifacts

A complete run should produce:

```text
route.md
route.json
report.md / pm_brief.md / investment_memo.md
report_evaluation.md
validation_tasks.jsonl
memory_update_candidate.md
```

## Routing Discipline

Every route must select:

- exactly one primary core skill
- zero to two auxiliary core skills
- selected references
- selected thinking skills / methodologies
- selected industry frameworks
- selected analysis methods
- one report template

## Event Audit

If the report relies on X, a16z, GeoScope, newsletters, blogs, or public specialist posts, run event audit first.

Required files:

- `skills/research-os-skillhub/references/research-event-discipline.md`
- `skill_hub/contracts/research_event_contract.md`
- `skill_hub/analysis_methods/event_audit.md`

## Report Standard

Start with a PM-grade conclusion.

Full reports and investment memos should include:

```text
Signal -> Mechanism -> Beneficiary Mapping -> Earnings Impact -> Market Expectation -> Evidence Gap -> Catalyst -> Invalidation -> PM Action
```

## Evaluation

Evaluate every full report with:

```text
skill_hub/evaluators/report_evaluator.md
```

Do not update memory until the report is evaluated.
