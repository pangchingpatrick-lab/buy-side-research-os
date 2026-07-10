# Buy-Side Research OS Skill Hub

This repository is the GitHub Skill Hub and operating layer for the buy-side research system.

It serves only:

- reusable core skills
- reusable thinking skills and research methodologies
- reusable industry frameworks and analysis methods
- report templates and generation logic

It does not store the primary external data layer. It connects to the local runtime data layer through `data_layer/data_layer_config.json`.

## System Boundary

External data comes from Step 1 outside GitHub:

- X and priority X accounts
- Reddit / Hacker News / Product Hunt
- company filings
- annual reports and quarterly reports
- earnings calls and investor presentations
- news and reputable media
- Wind / Choice / iFinD / Bloomberg / Refinitiv / other databases

GitHub is the stable OS layer. AI reads the runtime data index from `/Users/pangpatrick/Desktop/research_data/system_index`, then reads relevant thinking skills, methodologies, frameworks, validation methods, and templates from this repository.

## Runtime Data Layer

The canonical data layer is local:

```text
/Users/pangpatrick/Desktop/research_data/
├── raw_data/          # daily raw archive
├── readable/          # human-readable PDFs only
└── system_index/      # machine-readable JSON and indexes
```

Machine workflows should start from:

```text
/Users/pangpatrick/Desktop/research_data/system_index/index.jsonl
```

Category-specific workflows can start from:

```text
/Users/pangpatrick/Desktop/research_data/system_index/category_index/[category].jsonl
```

Full canonical records live in:

```text
/Users/pangpatrick/Desktop/research_data/system_index/documents/
```

Human reading happens in:

```text
/Users/pangpatrick/Desktop/research_data/readable/
```

The historical `data/` directory in this repository is legacy/sample material and is no longer the primary data source.

## Core Flow

```text
Information Collection
-> Information Classification
-> Core Skill / Thinking Method Selection
-> Industry Framework Selection
-> Analysis Method Selection
-> Chinese Buy-side Report
-> Validation Questions
-> Next Information Collection
```

## Runtime Workflow

The workflow is:

1. Collect information outside GitHub into the runtime data layer.
2. Read `system_index/index.jsonl` or `system_index/category_index/*.jsonl`.
3. Load canonical records from `system_index/documents/*.json`.
4. Classify or route the records by source type, industry, related company, signal/evidence type, credibility, and verification status.
5. If the input is a strong research case, run `skill_hub/core_skills/skill_001_baimaonv_distillation.md` to distill reusable thinking patterns.
6. Select the relevant thinking skills or research methodologies before selecting the industry framework.
7. Select the industry framework to define what to inspect.
8. Select analysis methods to validate the reasoning.
9. Select the report template to communicate the output.
10. Generate validation questions for the next research loop.

GitHub should be treated as the stable framework and template library, not as the raw data store.

## What Belongs In This Repo

- reusable core skills
- reusable thinking skills and research methodologies
- reusable industry frameworks
- reusable analysis methods
- report templates
- routing rules for matching classified data to frameworks
- data layer contract and runtime data readers

## What Does Not Belong In This Repo

- raw X exports
- private API tokens
- broker PDFs with restricted rights
- raw financial database exports
- unclassified data dumps
- fabricated data or unsourced claims
- local runtime `research_data/` dumps

## Useful Commands

Validate that the runtime data layer is connected:

```bash
ruby scripts/inspect_data_layer.rb
```

Build a category context packet for downstream research:

```bash
ruby scripts/build_data_context.rb semiconductor 10
```

## Guardrails

- Reports are communication outputs, not the goal of the system.
- Every report must be generated from classified and traceable data.
- X and social sources are early signals only.
- Official and financial sources validate signals.
- Missing data must be marked `待补充`.
- Unverified claims must be marked `待验证`.
