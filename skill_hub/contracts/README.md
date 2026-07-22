# Skill Hub Contracts

`contracts/` defines the machine-readable operating rules that make Skill Hub execution auditable.

These files are not research content. They are execution contracts.

## Why This Exists

The Research OS should not rely on a vague statement like "used the system." Every complete run must prove:

- which primary skill drove the report
- which auxiliary skills were used
- whether early signals were converted into auditable research events
- which reference files explained labels, fields, roles, and output standards
- which thinking skills shaped the argument
- which industry frameworks only supported inspection
- which analysis methods were applied
- which report template was used
- how the final report scored
- which validation tasks go back to the data layer

## Contract Files

- `route_contract.md`: required route output before any full report.
- `report_run_contract.md`: complete report run requirements, artifact order, and run manifest standard.
- `core_skill_contract.md`: shared metadata and output standard for every core skill.
- `research_event_contract.md`: event-level schema for early signals and public research claims.
- `validation_task_contract.md`: standard format for next-round data tasks.
- `route.schema.json`: compact machine-readable schema for `route.json`.

## Required Full Run Artifacts

Every complete system run should produce:

```text
route.md
route.json
full_report.md or pm_brief.md or investment_memo.md
report_evaluation.md
validation_tasks.jsonl
memory_update_candidate.md
```

If a run only produces skill comparison files or partial notes, it is not a complete system run.
