# Routing And Contracts

Use this reference to understand the hard execution rules.

## Canonical Files

- `skill_hub/registry.md`
- `skill_hub/router.md`
- `skill_hub/contracts/route_contract.md`
- `skill_hub/contracts/route.schema.json`
- `skill_hub/contracts/report_run_contract.md`
- `skill_hub/contracts/core_skill_contract.md`
- `skill_hub/contracts/validation_task_contract.md`
- `skill_hub/contracts/research_event_contract.md`

## Route Requirements

Every complete run must create:

```text
route.md
route.json
```

The route must include:

- topic
- research question
- input packet
- record count
- primary core skill
- auxiliary core skills
- selected reference files
- selected thinking skills
- selected methodologies
- dominant thinking path
- event audit requirement
- required mapping
- selected industry frameworks
- selected analysis methods
- selected report template
- excluded files
- data gaps
- verification claims
- expected output files

## Primary Skill Rule

Select exactly one primary core skill.

Select at most two auxiliary core skills.

If every skill is selected, the route is undisciplined.

## Complete Run Rule

A complete run requires:

```text
route
report
evaluation
validation tasks
memory candidate decision
```
