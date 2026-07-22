# Ticker Role Taxonomy Reference

This reference defines how to classify ticker mentions before company mapping.

## Why This Exists

A ticker appearing in a source does not mean it is the beneficiary.

The same post can mention:

- the company that benefits
- the customer validating demand
- the supplier enabling the product
- the peer used for comparison
- a risk object
- a background ticker

Confusing these roles creates bad reports.

## Role Labels

| Role | Meaning | Report Use |
| --- | --- | --- |
| `focal_beneficiary` | The source directly claims this company benefits or is affected. | Can drive company thesis if evidence supports it. |
| `supplier` | The company supplies the scarce product, input, component, infrastructure, or capability. | Can drive beneficiary mapping. |
| `customer` | The company validates demand or adoption. | Usually context or supporting evidence, not direct beneficiary. |
| `peer` | Comparable company. | Useful for comp, not direct signal. |
| `comparison` | Used as analogy, valuation comparison, or example. | Context only unless explicitly analyzed. |
| `supply_chain_context` | Part of the value chain but not direct thesis target. | Useful for mapping. |
| `risk_object` | The company or segment that may be hurt. | Can drive bear case or short-side mapping. |
| `context_only` | Background mention. | Do not use as signal. |
| `unknown` | Role cannot be determined. | Send to validation or use as context. |

## Company Mapping Rule

Only these roles can directly support company-level conclusions:

- `focal_beneficiary`
- `supplier`
- `risk_object`

These usually need caution:

- `customer`
- `peer`
- `comparison`
- `supply_chain_context`

These should not drive thesis:

- `context_only`
- `unknown`

## Common Mistakes

- Treating a large customer as the best beneficiary.
- Treating every ticker in a thread as an independent signal.
- Treating peer comparisons as recommendations.
- Ignoring negative beneficiaries and losers.
