# Report Output Standard Reference

This reference defines what a good Research OS report should look like.

## Core Rule

The report is for PM decision-making, not for summarizing information.

Start with:

```text
What changed?
Why does it matter now?
Who benefits or loses?
What is verified?
What is still missing?
What should the PM do next?
```

The report should compress repeated evidence into thesis clusters. A good report
does not prove completeness by showing the same event in five formats. It uses
one section to argue the investment logic, one section to audit source admission,
and one section to assign validation priority.

## Depth Standard

A full system report should be concise, but not thin. The goal is not the
shortest possible memo. The goal is a medium-depth buy-side report where every
paragraph earns its place.

Good added detail includes:

- judgment boundaries
- why a signal is investment-relevant
- why a ticker is or is not a good expression
- price-in interpretation
- validation design
- one-month review logic

Bad added detail includes:

- the same source row repeated in several tables
- the same validation phrase repeated across sections
- generic industry background that does not change PM action

As a default, a complete rendered full-system report should usually land around
9-12 pages, unless the local data packet is unusually small.

## Required Logic Chain

Full reports and investment memos should preserve:

```text
Signal
-> Mechanism
-> Beneficiary Mapping
-> Earnings Impact
-> Market Expectation
-> Evidence Gap
-> Catalyst
-> Invalidation
-> PM Action
```

For full system reports and investment memos, the chain must be expanded into explicit buy-side signal clusters:

```text
Signal Cluster A
Signal Cluster B
Signal Cluster C
...
```

Each cluster must include Signal, Mechanism, Investment Interpretation, Beneficiary / Risk Mapping, Financial Transmission, Market Expectation / Price-In, and Evidence Gap / PM Trigger.

A table-only Signal-to-Alpha section is insufficient for a buy-side report because it hides the investment logic rather than forcing the reasoning to be written out.

Avoid repeating the same validation phrase inside multiple clusters. If one
source or validation task supports several ideas, name the shared validation once
and refer back to the thesis cluster.

## Core Conclusion Standard

The first section should include:

- marginal change
- PM action state
- core thesis
- research priority
- concrete ticker candidates
- highest uncertainty
- next validation point

Do not start with process summary or broad industry background.

## Concrete Ticker Candidate Standard

For public-equity research, the report must name specific ticker candidates.
The system is not useful if it only explains an industry and never produces
observable picks that can be evaluated later.

Use two separate buckets:

1. `Primary Candidate Basket`: the names that actually express the report's
   investable thesis and will be scored as picks.
2. `Risk / Context Watchlist`: names that help test risks, failure modes, or
   industry context, but are not positive candidates.

For the primary basket, use a compact table with:

- ticker
- direction: `Long candidate`, `Long watch`, `Short candidate`, or `Short watch`
- conviction
- linked thesis cluster
- why this stock expresses the thesis
- current / start price
- benchmark
- benchmark price
- one-month review date
- success / failure test

If evidence is incomplete, use `Long watch` or `Needs evidence` rather than
forcing `Long candidate`. The goal is to create an auditable candidate set, not
to overstate conviction.

Risk/context names should be explicitly labeled as such. They can be tracked in
`performance_tracking.jsonl` with `candidate_bucket: risk_context`, but they do
not count as the report's primary picks.

Also create `performance_tracking.jsonl` for every full report so the same
tickers can be reviewed after one month.

## Price Snapshot Standard

Every ticker candidate should include a report-time price snapshot.

Required fields:

- `price_source`
- `price_source_url`
- `price_snapshot_at`
- `currency`
- `regular_close_price`
- `latest_visible_price`
- `latest_visible_session`: `regular`, `after_hours`, `pre_market`, or `unknown`
- `start_price`
- `start_price_type`
- `benchmark_price`

Use the latest regular close as `start_price` when the report is generated
outside regular market hours. Show after-hours or pre-market prices as current
context, but do not use them as the default return baseline unless the report is
explicitly generated during regular trading hours.

If the price source fails, write `price_source_unavailable` and keep
`start_price: null`.

## Event Audit Standard

If early-signal sources are material, the report should include a compressed
Event Admission Summary. This is not a full second report. It should show:

- thesis cluster
- representative source types
- target role discipline
- evidence strength
- price-in question
- report use

Detailed fields such as `claim_type`, `evidence_type`, `target_role`,
`research_signal`, `discovery_stage`, `price_in_status`, and source URLs should
remain in machine-readable artifacts or validation appendices unless one field
directly changes the PM conclusion.

## Information Compression Standard

The report should avoid section-level duplication:

- Do not keep separate evidence, event audit, signal cluster, company mapping,
  and financial validation tables if they repeat the same rows.
- The main body should contain one primary place for each fact.
- Company mapping and financial validation should usually be merged into one
  priority table.
- If a sentence such as `待验证：IR/call/filing、shipment、customer proof`
  would appear more than once, move it into the validation table and reference
  the relevant cluster.
- Repetition across three or more sections is a report-quality failure.

## Price-In Standard

Do not say "the market is missing this" until the report describes what the market likely believes.

If market expectation or price reaction data is missing, write:

```text
市场预期数据暂缺
```

or:

```text
price-in 判断需要补充市场反应 / consensus / valuation 数据
```

## Invalidation Standard

Every thesis must state what would make it wrong.

Examples:

- primary evidence contradicts the signal
- orders fail to convert to revenue
- margin impact does not show up
- customer qualification is delayed
- capacity expands faster than demand
- valuation already prices in the upside
- the supposed beneficiary is only a context ticker
