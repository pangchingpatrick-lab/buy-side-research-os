# Report Output Standard Reference

This reference defines what a good Research OS report should look like.

## Core Rule

The report is for PM decision-making, not for summarizing information.

For full reports, the target is an 8-10 page internal investment memo, not a 14-page Research OS run log. Compression should remove repetition and process narration, not investment substance.

Start with:

```text
What changed?
Why does it matter now?
What does consensus already believe?
What is our variant view?
Which 3-5 listed companies express that view?
Who benefits or loses?
What is verified?
What is still missing?
What should the PM do next?
```

Every full report must explicitly answer:

```text
1. 市场共识是什么？
2. 我们的非共识观点是什么？
3. 为什么现在是关键时间点？
4. 哪家公司最能受益，为什么是它而不是同行？
5. PM 现在应该采取什么行动？
```

## Investment Memo Compression Standard

A report should become shorter by collapsing repeated logic, not by deleting the parts that make it investable.

Remove or move to appendix:

- repeated descriptions of the same thesis, ticker, catalyst, or validation gap
- tables that restate the same information already explained in prose
- process-only explanation of how the Research OS ran
- multiple versions of `需要验证`, `继续跟踪`, `证据不足`, or similar caveats
- obvious industry background that does not change the PM action
- duplicate event rows that inflate evidence without adding a new claim

Must preserve when relevant:

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
- core judgments on MRVL, MU, AEHR, SMCI, CRWV, NBIS, and ORCL when material
- the principle that social-media evidence is downgraded unless verified by stronger sources
- the reflection that `AI 很强` is not a variant view

Use this deduplication rule:

```text
one thesis -> one primary explanation -> later sections add only peer displacement, financial transmission, catalyst, invalidation, or PM action
```

## Required Logic Chain

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

For full system reports and investment memos, the chain must be expanded into explicit buy-side signal clusters:

```text
Signal Cluster A
Signal Cluster B
Signal Cluster C
...
```

Each cluster must include Signal, Mechanism, Beneficiary Mapping, Earnings Impact, Market Expectation, Evidence Gap, Why Now, Catalyst, Invalidation, and PM Action.

A table-only Signal-to-Alpha section is insufficient for a buy-side report because it hides the investment logic rather than forcing the reasoning to be written out.

## Variant View And Candidate Basket Standard

Every full report must include a dedicated section near the front:

```text
Consensus（市场观点）
-> Our View（我们的非共识观点）
-> Why This Can Make Money
-> 3-5 个 Alpha Candidate
```

This section answers the PM's "然后呢？" question. It should not be buried after the evidence audit.

### What Counts As Consensus

Consensus is the market's likely current belief or already-crowded narrative.

Examples:

- AI capex remains strong.
- GPU and HBM are central beneficiaries.
- Datacenter power and cooling matter.
- Cloud providers need more AI infrastructure.

These statements may be true, but they are not enough for an investment report unless the report explains what is not yet reflected in price, estimates, ownership, or narrative.

### What Counts As Variant View

A variant view must state how the report differs from consensus.

It should usually identify one of:

- alpha migration from a crowded layer to a less appreciated layer
- timing misperception
- magnitude misperception
- durability misperception
- margin or earnings transmission misperception
- beneficiary mapping error
- underappreciated risk that can create a short or avoid decision

Example:

```text
Consensus: AI opportunity remains concentrated in GPU and HBM.
Our View: Next-stage alpha migrates from compute to data movement and cluster deployment.
Why: GPU/HBM are better understood, while networking, test, cooling, rack integration, and power bottlenecks may not be fully reflected in estimates.
```

### Candidate Basket Rule

The report must then output 3-5 alpha candidates when local data supports listed-company exposure.

Each candidate must include:

- ticker / company
- linked variant view
- why this ticker is the right expression versus peers / proxies
- why now / timing catalyst
- why it can make money
- what the market may be missing
- catalyst
- key invalidation
- action state

Do not include a ticker merely because it is famous, large, or belongs to the industry. The candidate must be the stock expression of the variant view.

Risk/context watches should be separated from alpha candidates.

If fewer than three candidates are supportable, write fewer and explicitly say that forcing more names would reduce quality.

## Why Now / Timing Catalyst Standard

Every signal cluster and every candidate must answer:

```text
为什么现在？
为什么不是去年？
为什么不是明年？
```

This is part of catalyst analysis and stock selection. A structural thesis can be true for years; a buy-side idea needs a timing window.

Good `Why Now` analysis should name a concrete timing signal, such as:

- product generation transition
- deployment cycle starting or accelerating
- customer qualification / validation stage
- order, backlog, ASP, or guidance inflection
- capex budget release or installation schedule
- regulatory / policy calendar
- earnings report / investor day / product launch
- price reaction that suggests expectations are being reset

Examples only:

- Memory: HBM4 ramp, Rubin deployment, ASP cycle turning.
- MRVL-style data movement thesis: 1.6T DSP or custom silicon entering customer validation.
- Rack / cooling thesis: Blackwell-class racks pushing liquid-cooling deployment.

These examples are not special cases. Every named thesis needs its own timing answer.

Guardrails:

- Do not use generic long-term demand as `Why Now`.
- If timing evidence is missing, write `timing catalyst 待验证`.
- A candidate without timing can be a watchlist item, but should not be framed as a high-conviction alpha candidate.
- Catalyst should follow from Why Now; do not list disconnected events.

## Why This Ticker / Why Not Peers Standard

Every thesis or candidate that names a ticker must answer:

```text
为什么是它？
为什么不是主要 peers / proxies？
```

This is mandatory because facts about what a company does are not yet an investment argument.

Bad:

```text
MRVL does DSP, optical, and connectivity.
```

Better:

```text
MRVL is the cleaner expression of this specific data-movement thesis than ANET because the thesis depends on optical DSP and custom silicon revenue transmission, while ANET is primarily a switch / networking systems expression. It must still be compared with AVGO, CRDO, and COHR before conviction can rise.
```

Good candidate analysis should include:

- primary peer / proxy set
- why the selected ticker has cleaner or more levered exposure
- why peers may be better, worse, or only partial expressions
- evidence needed to confirm the selected ticker is truly better
- invalidation if a peer proves to be the cleaner expression

Examples only:

- MRVL: compare against AVGO, CRDO, ANET, COHR.
- AEHR: explain why burn-in / reliability exposure differs from ordinary ATE or broad semiconductor equipment.
- Cooling / power candidates: compare pure-play exposure versus diversified industrial proxies.

These examples do not limit the rule. Every named ticker needs its own thesis-specific peer/proxy set.

## Core Conclusion Standard

The first section should include:

- marginal change
- PM action state
- core thesis
- research priority
- highest uncertainty
- next validation point

Do not start with process summary or broad industry background.

## Event Audit Standard

If early-signal sources are material, the report should show:

- event
- source
- ticker / industry node
- target role
- claim type
- evidence type
- evidence strength
- discovery stage
- price-in status
- report use

Event audit is supporting infrastructure, not the main memo. In a full report, keep it compact or move detailed rows to appendix. The main body should use event audit only to decide which signals can enter the thesis, which are context, and which must become validation tasks.

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

The report may still form a variant view with incomplete market data, but it must label the price-in confidence as `低`, `中`, or `高` and name the missing evidence.

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
