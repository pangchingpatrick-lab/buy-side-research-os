# Route Contract

Every complete Research OS run must create a route before writing the final report.

The route is the audit trail. It proves the system did not skip the thinking layer, industry frameworks, analysis methods, or report template.

## Required Artifacts

```text
route.md
route.json
```

For complete report-writing runs, also follow `report_run_contract.md`.

## Route Rules

- Select exactly one `primary_core_skill`.
- Select at most two `auxiliary_core_skills`.
- Select relevant reference files when labels, roles, source types, output standards, or memory rules need interpretation.
- Select thinking skills before industry frameworks.
- Explain how the thinking skills dominate the report.
- Select industry frameworks only as supporting checklists.
- Select analysis methods before choosing the final investment decision.
- Select exactly one report template.
- Decide whether research event audit is required when early-signal sources are material.
- List excluded files and why they were excluded.
- Preserve all known `待验证` and `待补充` claims.

## Required route.md Format

```markdown
# Skill Hub Route

- topic:
- research_question:
- input_packet:
- record_count:
- primary_core_skill:
- auxiliary_core_skills:
- selected_reference_files:
- selected_thinking_skills:
- selected_research_methodologies:
- dominant_thinking_path:
- event_audit_required:
- event_audit_reason:
- required_mapping:
- selected_industry_frameworks:
- framework_support_role:
- selected_analysis_methods:
- selected_report_template:
- excluded_files:
- data_gaps:
- claims_requiring_verification:
- expected_output_files:
- memory_update_candidate:
```

## Required route.json Format

`route.json` should follow `route.schema.json`.

## Complete Run Check

A run is complete only if:

```text
route exists
AND report exists
AND report evaluation exists
AND validation tasks exist
```

If any of these are missing, label the run `partial`.

Memory updates are not required for every run, but every full run should decide whether a `memory_update_candidate.md` is warranted after evaluation.
