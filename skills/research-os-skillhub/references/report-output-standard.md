# Report Output Standard

Use this reference before writing the final PM-facing output.

Canonical detail file:

```text
skill_hub/references/report_output_standard.md
```

## Opening Standard

Full reports should read like 8-10 page internal investment memos, not Research OS run logs. Compress by removing repeated logic and process narration, not by deleting investment substance.

Start with:

- marginal change
- PM action state
- core thesis
- research priority
- largest uncertainty
- next validation point

Do not start with process summary.

## Five Required Questions

Every full report must answer:

1. 市场共识是什么？
2. 我们的非共识观点是什么？
3. 为什么现在是关键时间点？
4. 哪家公司最能受益，为什么是它而不是同行？
5. PM 现在应该采取什么行动？

## Compression Standard

Remove or move to appendix:

- repeated descriptions of the same thesis, ticker, catalyst, or evidence gap
- process-only Research OS mechanics that add no investment information
- repeated versions of `需要验证`, `继续跟踪`, or `证据不足`
- obvious industry background
- mechanical duplicate tables

Preserve when material:

- bottleneck migration logic
- Memory / HBM / interconnect
- Optical / networking / data movement
- Burn-in / test / silicon photonics
- Rack-scale / liquid cooling / power
- Cloud financing / utilization / counterparty risk
- financial transmission metrics
- market expectation / price-in
- primary evidence gap
- catalyst
- invalidation
- company-specific risk
- PM action state
- core judgments on MRVL, MU, AEHR, SMCI, CRWV, NBIS, and ORCL
- social-media evidence downgrade discipline
- the reflection that `AI 很强` is not a variant view

Deduplication rule:

```text
one thesis -> one primary explanation -> later sections add only peer displacement, financial transmission, catalyst, invalidation, or PM action
```

## Signal-To-Alpha Chain

Full reports and investment memos should preserve:

```text
Signal
-> Mechanism
-> Beneficiary Mapping
-> Earnings Impact
-> Market Expectation
-> Evidence Gap
-> Why Now
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

Each cluster must walk through Signal, Mechanism, Beneficiary Mapping, Earnings Impact, Market Expectation, Evidence Gap, Why Now, Catalyst, Invalidation, and PM Action.

This is the section where the report becomes a buy-side report rather than a research event audit.

## Variant View And Candidate Basket

Full reports must include this near the front:

```text
Consensus（市场观点）
-> Our View（我们的非共识观点）
-> Why This Can Make Money
-> 3-5 个 Alpha Candidate
```

The purpose is to answer the PM's "然后呢？" question before the report enters evidence tables.

Do not treat true consensus facts as variant views. Statements like "AI demand is growing", "HBM is important", "optical is important", or "cooling is important" are only useful when framed as what the market already knows.

The candidate basket must contain 3-5 listed-company expressions when local data supports them. Each candidate must be tied to the variant view and include why this ticker versus peers/proxies, why now / timing catalyst, catalyst, invalidation, and action state.

Risk/context watches should be separated from alpha candidates.

## Why This Ticker / Why Not Peers

Every thesis or candidate that names a ticker must answer:

```text
为什么是它？
为什么不是主要 peers / proxies？
```

Company description is not investment logic. MRVL versus AVGO/CRDO/ANET/COHR is only an example. The rule applies to every named ticker: build the relevant peer/proxy set for that thesis and explain why the selected ticker is the better, cleaner, more levered, earlier, or more mispriced expression. Also state what evidence would prove a peer/proxy is better.

## Why Now / Timing Catalyst

Every signal cluster and every candidate must answer why now, why not last year, and why not next year.

This is part of catalyst analysis. Generic long-term demand is not enough. The report should point to a concrete timing signal such as product generation transition, deployment cycle, customer validation, order/backlog/ASP/guide inflection, capex timing, policy calendar, earnings date, or price reaction.

If timing evidence is missing, write `timing catalyst 待验证` and keep the idea in watchlist / need-more-evidence mode.

## Required Sections

- core conclusion
- consensus / our view / why now / alpha candidate basket
- compressed data foundation and evidence hierarchy
- thinking path and dominant methodology
- Signal-to-Alpha thesis clusters
- company / peer displacement map
- financial validation, catalyst, invalidation, and PM action
- appendix: research event audit and source notes when early signals matter

Event audit is supporting infrastructure, not the main memo. Keep detailed event rows compact or in appendix; the main body should use them only to decide thesis admission, context, validation tasks, or exclusion.
