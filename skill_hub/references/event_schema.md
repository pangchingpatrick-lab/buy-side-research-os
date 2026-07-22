# Research Event Schema Reference

This reference explains the event fields used by:

- `core_skills/skill_005_research_event_distillation.md`
- `contracts/research_event_contract.md`
- `analysis_methods/event_audit.md`

The contract defines the required schema. This reference explains how to interpret it.

## Core Idea

A public source item should become a research event before it affects a report.

```text
source item
-> claim
-> affected ticker / industry node
-> role
-> evidence
-> discovery stage
-> price-in question
-> report use
```

## Key Fields

| Field | Meaning | Why It Matters |
| --- | --- | --- |
| `event_id` | Stable local event identifier. | Allows audit and memory tracking. |
| `source_document_id` | Canonical local document id when available. | Connects event back to system_index. |
| `source_url` | Original URL or local source identifier. | Preserves traceability. |
| `source_channel` | X, GeoScope, a16z, filing, transcript, broker note, news, etc. | Separates early signals from stronger sources. |
| `published_at` | When the source was published. | Needed to judge timing and price-in. |
| `claim` | The specific research claim. | Prevents vague summaries. |
| `ticker` | Public ticker when applicable. | Enables company mapping. |
| `industry_nodes` | Relevant industry categories. | Enables industry framework routing. |
| `target_role` | What role the ticker plays in the claim. | Prevents context tickers becoming false beneficiaries. |
| `claim_type` | Demand, supply, capacity, pricing, earnings, technical, valuation, etc. | Clarifies what kind of thesis this is. |
| `evidence_type` | Filing, transcript, specialist research, social post, rumor, etc. | Determines proof quality. |
| `evidence_strength` | Weak, medium, strong. | Controls confidence. |
| `research_signal` | Lead, evidence, contradiction, catalyst, invalidation, context, duplicate, noise. | Decides how the report can use it. |
| `discovery_stage` | Early discovery, continuation confirmation, late validation, after-fact commentary, context only. | Separates alpha discovery from explanation. |
| `market_reaction_status` | Whether price reaction is checked or missing. | Required for price-in discipline. |
| `price_in_assessment` | Likely priced, partly priced, likely not priced, or insufficient data. | Prevents overstated variant views. |
| `report_use` | Lead, supporting evidence, context, validation, or exclude. | Controls report admission. |

## Required Discipline

- Do not use an event in a report unless source and date are traceable.
- Do not treat weak evidence as strong evidence.
- Do not treat every mentioned ticker as investable.
- Do not call a signal early without timing support.
- Do not infer price-in if market reaction data is missing.
