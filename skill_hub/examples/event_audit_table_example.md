# Event Audit Table Example

This is an illustrative format example. It is not source data.

## Research Event Audit

| Event | Source | Ticker / Node | Role | Claim Type | Evidence | Strength | Discovery Stage | Price-In Status | Report Use |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Near-memory compute could reduce AI inference memory bottleneck | X specialist post | QCOM / AI inference / memory bandwidth | focal_beneficiary | technical / product / demand | social_post + specialist_analysis | weak | unknown | data_insufficient | use_as_lead |
| Azure interest validates potential deployment path | X specialist post | MSFT / Azure | customer | customer | social_post | weak | unknown | data_insufficient | use_as_context |
| HBM bandwidth remains the main bottleneck for inference workloads | local source cluster | Memory / HBM | supply_chain_context | capacity / technical | specialist_research | medium | continuation_confirmation | not_assessed | use_as_supporting_evidence |

## Thesis Clusters

| Cluster | Core Claim | Sources | Duplicate Risk | Needed Verification |
| --- | --- | --- | --- | --- |
| ai-memory-bottleneck-near-memory-compute | AI inference may shift part of the bottleneck from compute to memory bandwidth and near-memory architectures. | X specialist post, local memory cluster | medium | QCOM IR, Microsoft deployment proof, product availability, customer qualification, price reaction before/after source |

## Report Use

- Use the event as a research lead, not proof.
- Use MSFT as customer validation context, not the direct beneficiary.
- Send market reaction and primary-source verification to validation tasks.
