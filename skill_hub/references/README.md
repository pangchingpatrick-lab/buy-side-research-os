# Skill Hub References

`references/` stores explanatory reference files for the Skill Hub.

These files are not raw data, not report templates, and not execution contracts. They are the interpretation layer that tells an agent how to understand fields, roles, labels, output standards, and memory discipline.

## How References Differ From Other Folders

- `contracts/`: hard execution rules and machine-readable schemas.
- `references/`: explanatory meaning of fields, labels, roles, and calling order.
- `analysis_methods/`: methods to apply during analysis.
- `industry_frameworks/`: industry-specific checklists.
- `memory/`: evaluated lessons after reports.

## Reference Files

| File | Purpose |
| --- | --- |
| `calling_sequence.md` | Explains how data, router, skills, references, frameworks, methods, reports, evaluator, and memory call each other. |
| `event_schema.md` | Explains the research event fields used by Skill 005 and event audit. |
| `ai_infrastructure_bottleneck_method.md` | Shared AI-infrastructure bottleneck method used by Skill 001-5. |
| `cross_industry_bottleneck_framework.md` | Shared cross-industry constrained-layer framework used by Skill 001-5. |
| `event_analysis_output_shape.md` | Expected output shape for event analysis, weak hypotheses, failure modes, and memory candidates. |
| `source_evidence_taxonomy.md` | Defines source types, evidence strength, source reliability, and verification status. |
| `ticker_role_taxonomy.md` | Defines how to classify ticker roles before company mapping. |
| `report_output_standard.md` | Defines the PM-facing report standard and required logic chain. |
| `skillhub_memory_model.md` | Defines what can be stored in memory and when. |

## Loading Rule

Read the relevant reference files after `router.md` selects a route and before writing analysis.

Do not load every reference file by default. Select only the references required by the route.
