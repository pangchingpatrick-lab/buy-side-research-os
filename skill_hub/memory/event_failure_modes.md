# Event Failure Modes

This file stores recurring mistakes in event-level signal interpretation.

It is not raw data. Add new failures only after evaluated reports or event audits.

## Starter Failure Modes

### Viral Signal Treated As Proof

High engagement, strong wording, or repeated reposting does not make a claim verified.

Fix: keep the event as `use_as_lead` or `send_to_validation` unless stronger evidence exists.

### Context Ticker Misread As Beneficiary

A source may mention a large customer or peer to explain demand. That ticker is not automatically the best beneficiary.

Fix: classify `target_role` before company mapping.

### Thread Lines Counted As Independent Evidence

One long thread can create many raw records but only one thesis cluster.

Fix: assign `thesis_cluster_id` and avoid sample-size inflation.

### Correct Theme But Wrong Timing

A source can be directionally right after the market has already reacted.

Fix: classify discovery stage and ask the price-in question before using the event.

### Absolute Move Confused With Alpha

A stock can rise with the market while underperforming the relevant benchmark or opportunity set.

Fix: prefer benchmark-relative evidence when market data exists; otherwise mark as `data_insufficient`.

### Missing Price Data Treated As Negative Evidence

No price data means the event is not auditable yet. It does not prove the thesis failed.

Fix: mark `market_reaction_status: price_data_missing`.

### Generic Theme Repost Enters Report

Generic news reposts often repeat known information without adding mechanism, evidence, or investment implication.

Fix: exclude unless the item adds a specific claim, company role, new evidence, or validation path.
