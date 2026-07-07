# Buy-Side Research OS Skill Hub

This repository is the GitHub Skill Hub for the buy-side research system.

It serves only:

- reusable core skills
- reusable thinking skills and research methodologies
- reusable industry frameworks and analysis methods
- report templates and generation logic

It does not store the primary external data layer.

## System Boundary

External data comes from Step 1 outside GitHub:

- X and priority X accounts
- Reddit / Hacker News / Product Hunt
- company filings
- annual reports and quarterly reports
- earnings calls and investor presentations
- news and reputable media
- Wind / Choice / iFinD / Bloomberg / Refinitiv / other databases

GitHub is only the Skill Hub. AI reads relevant thinking skills, methodologies, frameworks, validation methods, and templates from this repository after classifying incoming data.

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

1. Collect information outside GitHub.
2. Classify the information by source type, industry, related company, signal/evidence type, credibility, and verification status.
3. If the input is a strong research case, run `skill_hub/core_skills/skill_001_baimaonv_distillation.md` to distill reusable thinking patterns.
4. Select the relevant thinking skills or research methodologies before selecting the industry framework.
5. Select the industry framework to define what to inspect.
6. Select analysis methods to validate the reasoning.
7. Select the report template to communicate the output.
8. Generate validation questions for the next research loop.

GitHub should be treated as the stable framework and template library, not as the raw data store.

## What Belongs In This Repo

- reusable core skills
- reusable thinking skills and research methodologies
- reusable industry frameworks
- reusable analysis methods
- report templates
- routing rules for matching classified data to frameworks

## What Does Not Belong In This Repo

- raw X exports
- private API tokens
- broker PDFs with restricted rights
- raw financial database exports
- unclassified data dumps
- fabricated data or unsourced claims

## Guardrails

- Reports are communication outputs, not the goal of the system.
- Every report must be generated from classified and traceable data.
- X and social sources are early signals only.
- Official and financial sources validate signals.
- Missing data must be marked `待补充`.
- Unverified claims must be marked `待验证`.
