# Deprecated: Use Framework Router

This single-file buy-side analysis framework has been replaced by the industry framework repository.

Use this flow instead:

`Runtime Data Layer -> Context Packet -> skill_hub/router.md -> Selected Skill Hub Files -> Insight Report`

## Current Source Of Truth

- Data contract: `../../../data_layer/README.md`
- Router: `../../../skill_hub/router.md`
- Framework library: `../../../skill_hub/industry_frameworks/`
- Analysis methods: `../../../skill_hub/analysis_methods/`
- Report templates: `../../../skill_hub/report_templates/`

## Why This File Remains

This file is kept only for backward compatibility with older prompts or references.
Do not use it as the active analysis framework.

## Required Behavior

When a task asks for buy-side analysis:

1. Start from `/Users/pangpatrick/Desktop/research_data/system_index`.
2. Build a context packet with `scripts/build_data_context.rb`.
3. Route the packet through `skill_hub/router.md`.
4. Select one or more applicable core skill, thinking skill, methodology, framework, analysis method, and template files.
5. Apply the selected files.
6. Generate the Chinese insight report and validation questions.

Do not generate a generic industry summary.
Do not fabricate missing data.
Mark missing information as `待补充` and unverified claims as `待验证`.
