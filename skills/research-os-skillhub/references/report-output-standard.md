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

## Concrete Ticker Candidate Loop

Every public-equity report must name 3-7 concrete ticker candidates unless the
topic has no listed-equity expression.

Each candidate should include:

- ticker
- direction: `Long candidate`, `Long watch`, `Short / risk watch`, `Avoid`, or
  `Needs evidence`
- conviction
- thesis cluster
- benchmark
- one-month review date
- success / failure test

The run should also emit `performance_tracking.jsonl`. One month later, the
system should compare each candidate's return with its benchmark and use the
result to evaluate whether the report's logic created useful alpha.

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
