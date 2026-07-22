# Report Output Standard

Use this reference before writing the final PM-facing output.

Canonical detail file:

```text
skill_hub/references/report_output_standard.md
```

## Opening Standard

Start with:

- marginal change
- PM action state
- core thesis
- research priority
- largest uncertainty
- next validation point

Do not start with process summary.

## Signal-To-Alpha Chain

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

For full system reports and investment memos, this cannot be only a table.

The report must include explicit buy-side signal clusters:

```text
Signal Cluster A
Signal Cluster B
Signal Cluster C
...
```

Each cluster must walk through Signal, Mechanism, Beneficiary Mapping, Earnings Impact, Market Expectation, Evidence Gap, Catalyst, Invalidation, and PM Action.

This is the section where the report becomes a buy-side report rather than a research event audit.

## Medium-Depth Standard

The report should not be over-compressed. A full system report should usually be
long enough to explain the reasoning, candidate selection, price-in setup, and
review design. Removing duplicated evidence is good; removing the actual
investment reasoning is not.

Prefer added paragraphs that explain:

- why the signal matters
- where each company sits in the value chain
- whether the stock is a clean or messy expression of the thesis
- why the ticker expresses the signal
- why similar tickers were excluded
- what is already priced in
- how the one-month review should be interpreted

## Concrete Ticker Candidate Loop

Every public-equity report must name 3-7 concrete primary ticker candidates
unless the topic has no listed-equity expression.

Each candidate should include:

- ticker
- direction: `Long candidate`, `Long watch`, `Short candidate`, or `Short watch`
- conviction
- thesis cluster
- report-time price snapshot
- benchmark
- benchmark price
- one-month review date
- success / failure test

Keep risk / context names in a separate watchlist. Do not mix weak, low-quality,
or risk-only tickers into the primary candidate basket.

The run should also emit `performance_tracking.jsonl`. One month later, the
system should compare each candidate's return with its benchmark and use the
result to evaluate whether the report's logic created useful alpha.

When the report is generated outside regular market hours, use regular close as
the return baseline and show pre-market / after-hours prices only as context.

## Compression Discipline

The canonical report should be concise enough for PM use.

- Do not repeat the same source cluster in `data foundation`, `event audit`,
  `signal cluster`, `company mapping`, and `financial validation`.
- Use one argument section for the thesis, one compressed admission section for
  source discipline, and one priority table for company / financial validation.
- If the same validation wording would appear multiple times, keep it only in
  the validation priority table or validation task file.
- Detailed field-level audits belong in machine-readable artifacts, not in the
  main report body.

## Required Sections

- core conclusion
- what changed / why now
- thinking path
- buy-side signal clusters
- compressed event admission summary when early signals matter
- company and financial validation priority
- concrete ticker candidates and one-month review loop
- catalyst
- bear case / invalidation
- PM next action
- data sources and validation gaps
