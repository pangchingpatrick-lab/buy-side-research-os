# Research Event Contract

This contract defines how early signals and public research claims should be converted into auditable research events before they influence a report.

The contract is adapted for the Research OS from the `research-event-distiller` style of thinking. It does not import that repository's data collection scripts. It only keeps the discipline:

```text
source item
-> timestamped research event
-> ticker / industry role
-> claim type
-> evidence type
-> discovery stage
-> price-in / market-reaction question
-> report use or validation task
```

## When This Contract Is Required

Use this contract when a report depends on:

- X posts
- a16z / blog / newsletter signals
- GeoScope / specialist article signals
- early market observations
- source clusters with repeated claims
- any claim where the question is "is this useful signal or just noise?"

It is optional when the report is based only on already-verified filings, transcripts, company IR, or broker models.

## Event Row Schema

Each event should be one row. One source item can create multiple rows if it contains multiple distinct company-level or industry-level claims.

```json
{
  "event_id": "stable local id",
  "source_document_id": "canonical system_index document id when available",
  "source_url": "original source URL or local source identifier",
  "source_channel": "x / geoscope / a16z / filing / transcript / broker_note / news / database / other",
  "author": "source author or publisher",
  "published_at": "ISO timestamp or date when available",
  "event_date": "YYYY-MM-DD",
  "event_title": "short human-readable event title",
  "claim": "the specific research claim being audited",
  "ticker": "single ticker if applicable, otherwise empty",
  "company": "company name if applicable",
  "industry_nodes": ["ai", "semiconductor"],
  "target_role": "focal_beneficiary / supplier / customer / peer / comparison / supply_chain_context / risk_object / context_only / unknown",
  "claim_type": "demand / supply / capacity / pricing / margin / earnings / guidance / product / customer / competitive / regulatory / technical / valuation / market_reaction / thesis / risk / other",
  "evidence_type": ["social_post", "specialist_research"],
  "evidence_strength": "weak / medium / strong",
  "time_horizon": "intraday / days / weeks / quarters / years / unknown",
  "research_signal": "lead / evidence / contradiction / catalyst / invalidation / context / duplicate / noise",
  "thesis_cluster_id": "stable id for duplicated or related claims",
  "discovery_stage": "early_discovery / continuation_confirmation / late_validation / after_fact_commentary / context_only / unknown",
  "market_reaction_status": "not_checked / price_data_missing / no_obvious_reaction / reacted_before_signal / reacted_after_signal / still_unclear",
  "price_in_assessment": "not_assessed / likely_not_priced / partly_priced / likely_priced / data_insufficient",
  "needs_verification": true,
  "verification_needed": ["filing", "earnings call", "company IR", "customer proof"],
  "report_use": "use_as_lead / use_as_supporting_evidence / use_as_context / send_to_validation / exclude",
  "confidence": "low / medium / high"
}
```

## Required Fields For Report Use

A row cannot support a report claim unless it has:

- `source_url` or a local `source_document_id`
- `published_at` or `event_date`
- `claim`
- `target_role`
- `claim_type`
- `evidence_type`
- `evidence_strength`
- `research_signal`
- `report_use`

If any are missing, keep the item as `send_to_validation` or `use_as_context`.

## Role Discipline

Do not treat every ticker mention as the same thing.

- `focal_beneficiary`: the source directly argues this company benefits or is affected.
- `supplier`: the company enables the constraint or product.
- `customer`: the company validates demand but is not necessarily the best beneficiary.
- `peer`: comparable company.
- `comparison`: used as an analogy or valuation comparison.
- `supply_chain_context`: part of the map but not the direct claim.
- `risk_object`: company or segment that may be hurt.
- `context_only`: background mention.
- `unknown`: cannot classify from current evidence.

Only `focal_beneficiary`, `supplier`, and sometimes `risk_object` can directly drive a company thesis. Other roles should usually become context or validation tasks.

## Evidence Strength

- `strong`: filing, transcript, company IR, official data, contract/order, regulatory document, or verified primary evidence.
- `medium`: specialist research, credible industry media, broker report, database, or cross-source support.
- `weak`: X post, social thread, screenshot, unverified channel check, price action, rumor, or single unsupported claim.

Weak evidence can start research. It cannot finish the thesis.

## Discovery Stage

Classify timing before using a signal:

- `early_discovery`: signal appears before broad market recognition or before clear price reaction.
- `continuation_confirmation`: signal supports an existing thesis after some recognition.
- `late_validation`: signal confirms what the market likely already knows.
- `after_fact_commentary`: signal explains an event after it happened.
- `context_only`: useful background but not a signal.
- `unknown`: timing cannot be determined from current data.

## Price-In Rule

Every event that affects a public company should ask:

```text
Did the source identify a change before the market priced it, or is it mostly explaining something already reflected in price and consensus?
```

If local market reaction data is missing, mark `market_reaction_status: price_data_missing` and `price_in_assessment: data_insufficient`. Do not guess.

## Duplicate Cluster Rule

Multiple posts in the same thread, same source, or same repeated thesis should be clustered under one `thesis_cluster_id`. Do not count them as independent proof.

## Output Rule

The event audit is not the final report. It decides how the report may use each item:

- lead
- supporting evidence
- context
- validation task
- excluded noise
