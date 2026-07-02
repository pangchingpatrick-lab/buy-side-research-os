# Skill Hub

`skill_hub/` stores reusable frameworks, methods, and templates for Steps 2 and 3 of the Research OS.

It does not collect external data. It assumes Step 1 has already collected and classified data from X, Reddit, filings, earnings calls, news, and databases.

## Folder Structure

```text
skill_hub/
├── router.md
├── industry_frameworks/
├── analysis_methods/
└── report_templates/
```

## Role In The System

```text
Information Collection
-> Information Classification
-> Skill Hub Router
-> Framework-Guided Analysis
-> Chinese Buy-side Report
-> Validation Questions
```

## Operating Workflow

1. Step 1 collects information outside GitHub from X, priority accounts, filings, earnings calls, news, databases, and other approved sources.
2. The collected information is classified before it reaches this repository.
3. The classified packet is routed through `router.md`.
4. The router selects the relevant industry framework files, analysis method files, and one report template.
5. The selected files guide report generation, but the evidence must still come from the classified packet.
6. The report creates validation questions that go back to the next information-collection loop.

The Skill Hub is therefore the thinking library. It is not the data collector and it is not a place for raw research dumps.

## Contents

- `router.md`: select the right industry frameworks, analysis methods, and report template.
- `industry_frameworks/`: reusable sector-specific thinking models.
- `analysis_methods/`: cross-industry buy-side methods such as financial validation and consensus gap analysis.
- `report_templates/`: Chinese PM-facing output formats.

## Rules

- Do not store raw data here.
- Do not generate reports directly from unclassified data.
- Do not fabricate missing numbers, URLs, posts, accounts, claims, rankings, or market sizes.
- Preserve source traceability from the incoming classified packet.
- Mark unsupported claims as `待验证`.
- Mark missing evidence as `待补充`.
