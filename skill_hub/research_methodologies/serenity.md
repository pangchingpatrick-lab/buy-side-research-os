# Serenity Research Methodology

This file defines a reusable research methodology inspired by high-quality signal-driven buy-side research.

It does not summarize Serenity's opinions and does not copy content from any researcher. It extracts a reusable thinking pattern: start from an early signal, ask what changed, map the signal into an industry mechanism, identify listed-company exposure, translate the mechanism into financial impact, define the variant view, and specify what would invalidate the thesis.

Data boundary:

This methodology does not collect external data. It should operate on classified packets, extracted evidence, and local `system_index` records produced by the data layer. If evidence is missing, send a validation request back to the data layer instead of browsing, scraping, or inventing evidence.

Event boundary:

When this methodology starts from X, a16z, GeoScope, specialist blogs, newsletters, or public posts, first apply:

- `skill_hub/core_skills/skill_005_research_event_distillation.md`
- `skill_hub/contracts/research_event_contract.md`
- `skill_hub/analysis_methods/event_audit.md`

The methodology should not move from "public source says X" directly into a thesis. The signal must first become a research event with claim type, evidence type, ticker role, discovery stage, price-in status, duplicate cluster, and report use.

## 1. Research Trigger

Use this methodology when the research starts from an early signal rather than a completed financial thesis.

Good triggers include:

- repeated signals from credible X accounts
- expert commentary pointing to a new bottleneck, product cycle, capex cycle, adoption change, or supply-chain shift
- company, product, technology, or value-chain signals that appear before consensus financial models update
- a mismatch between market narrative and observable operating evidence
- a question where the answer depends on identifying who benefits from a change

Avoid using this methodology for:

- generic hype
- price-only commentary
- unsupported viral claims
- purely descriptive industry summaries
- reports where no company, product, technology, or industry mechanism can be identified

## 2. Core Question

The core question is:

```text
What changed, through what mechanism does it affect economics, who benefits, what is the market missing, and what evidence would prove us wrong?
```

The methodology should force every report to answer:

- What exactly is the new signal?
- Why is this signal appearing now?
- Which industry mechanism does it affect?
- Which part of the value chain captures economics?
- Which listed companies benefit or lose?
- How does the signal affect revenue, margin, orders, capex, inventory, EPS, or valuation?
- What does consensus likely believe?
- What is the variant view?
- What evidence is still missing?

## 3. Evidence Path

Use a layered evidence path:

```text
early signal
-> research event audit
-> source credibility check
-> repeated signal or primary-source support
-> industry mechanism
-> company exposure
-> financial translation
-> consensus gap
-> validation questions
```

Evidence priority:

- primary sources: filings, earnings calls, investor presentations, company announcements
- verified financial and operating data
- credible expert accounts and operators
- repeated X / HN / Product Hunt signals
- reputable media and broker / consulting research

Rules:

- X is an early signal, not final proof.
- a16z, GeoScope, specialist newsletters, and public posts are early signals unless supported by stronger local evidence.
- Public-source claims should enter the methodology as event rows, not as prose conclusions.
- A claim becomes decision-useful only when it is repeated by credible sources or supported by primary evidence.
- If evidence is missing, mark `待验证` or `待补充`.
- Do not invent posts, URLs, financial numbers, rankings, market sizes, or company claims.

## 4. Industry Mapping Logic

Map every signal to an industry mechanism.

Ask:

- Which industry is affected?
- Which sub-sector is affected?
- Which value-chain node is the bottleneck or beneficiary?
- Is the signal about demand, supply, pricing, capacity, regulation, technology, product cycle, or customer adoption?
- Is the effect cyclical, structural, or event-driven?
- Does the industry framework show a direct metric that should move?

Output:

- industry classification
- affected value-chain node
- mechanism type
- relevant industry framework file
- key metrics to monitor

## 5. Company Mapping Logic

Translate industry mechanism into listed-company exposure.

Classify companies into:

- direct beneficiary
- indirect beneficiary
- negative beneficiary / loser
- neutral but relevant
- watchlist / insufficient evidence

For each company, identify:

- exposure mechanism
- revenue driver
- margin driver
- order / backlog sensitivity
- capex or inventory sensitivity
- customer concentration
- evidence required before making a claim

Company mapping should not stop at naming tickers. It must explain why the company is economically exposed.

## 6. Financial Translation Logic

Convert signals into financial impact.

Use this chain:

```text
signal
-> operating metric
-> financial statement line item
-> earnings or cash-flow impact
-> valuation or expectation impact
```

Common translations:

- demand signal -> volume, usage, orders, backlog, revenue
- pricing signal -> ASP, ARPU, take rate, gross margin
- supply bottleneck -> capacity utilization, pricing power, lead time, capex
- technology shift -> product mix, adoption, cost structure, moat
- capex signal -> supplier orders, depreciation, FCF, balance-sheet risk
- inventory signal -> shipment cuts, margin pressure, working capital

Rules:

- Do not quantify impact without source support.
- If exact impact is unknown, describe the direction and required verification.
- Always state which data would validate the financial path.

## 7. Variant View Logic

The goal is not to repeat consensus. The goal is to identify where consensus may be wrong.

Ask:

- What does the market likely believe now?
- Is the signal already reflected in price, estimates, or narrative?
- What is the non-consensus interpretation?
- Is the market underestimating timing, magnitude, durability, beneficiary mapping, margin impact, or risk?
- What would make the market update its view?

A strong variant view should include:

- current consensus or likely market narrative
- why that view may be incomplete
- the alternative interpretation
- evidence required to make the alternative view investable

## 8. Risk / Invalidation Logic

Every thesis needs a clear way to be wrong.

Define:

- the strongest bear case
- missing evidence
- data that would contradict the thesis
- timing risk
- company-specific execution risk
- valuation risk
- evidence that would move the decision from `Long candidate` to `Watchlist`, `Avoid`, or `Short candidate`

Invalidation examples:

- operating data fails to confirm the early signal
- primary sources contradict the signal
- orders do not convert into revenue
- pricing power disappears
- margin impact is negative
- beneficiary mapping is wrong
- market already priced in the upside

## 9. Output Style

Output should be:

- Chinese
- thesis-first
- concise but reasoning-dense
- PM-facing
- explicit about what is verified and unverified
- focused on investment implication, not industry description

Preferred structure:

```text
核心结论
What changed
Signal -> mechanism -> financial impact
Company mapping
Consensus vs variant view
Investment judgment
Risks and invalidation
Next validation questions
```

Avoid:

- generic industry summaries
- shallow statements like "demand is growing" without mechanism
- unsupported ticker recommendations
- pretending early signals are verified facts

## 10. Reusable Workflow

1. Define the research question.
2. Identify the triggering signal.
3. Convert public-source signals into research events when applicable.
4. Check source credibility, evidence strength, ticker role, and whether the signal is repeated.
5. Classify discovery stage and ask whether the claim may already be price-in.
6. Apply the methodology to define the reasoning path before choosing the final industry framework.
7. Select the relevant industry framework to know what to inspect.
8. Map the signal to a value-chain mechanism.
9. Map direct, indirect, and negative listed-company exposure.
10. Translate the mechanism into revenue, margin, orders, capex, inventory, EPS, or valuation impact.
11. Identify consensus and the possible variant view.
12. Define risks, missing evidence, and invalidation triggers.
13. Generate a PM-facing output and next validation questions.
