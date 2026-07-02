# Buy-Side Research OS Skill Hub

This repository is the GitHub Skill Hub for the buy-side research system.

It serves only:

- Step 2: reusable industry frameworks and analysis methods
- Step 3: report templates and generation logic

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

GitHub is only the Skill Hub. AI reads relevant frameworks and templates from this repository after classifying incoming data.

## Core Flow

```text
Information Collection
-> Information Classification
-> GitHub Skill Hub Routing
-> Framework-Guided Analysis
-> Chinese Buy-side Report
-> Validation Questions
-> Next Information Collection
```

## Runtime Workflow

The workflow is:

1. Collect information outside GitHub.
2. Classify the information by source type, industry, related company, signal/evidence type, credibility, and verification status.
3. Send the classified research packet to `skill_hub/router.md`.
4. Let the router decide which GitHub framework files, analysis methods, and report template should be read.
5. Generate the Chinese buy-side report from the classified packet and selected Skill Hub files.
6. Generate validation questions for the next research loop.

GitHub should be treated as the stable framework and template library, not as the raw data store.

## What Belongs In This Repo

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
