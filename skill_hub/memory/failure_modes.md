# Failure Modes

This file stores recurring ways Research OS reports fail.

Use it before finalizing a report and update it after report evaluation when a new failure pattern appears.

## Hard Failure Modes

### 1. Framework-Led Generic Report

Symptom:

- the report reads like an industry overview
- the industry framework dictates the structure
- thinking skills are listed but do not change the conclusion

Fix:

- reroute through `thinking_skills/`
- rebuild the thesis from signal -> mechanism -> mapping -> financial impact

### 2. Early Signal Treated As Verified Evidence

Symptom:

- X, a16z, or public commentary is written as fact
- no verification status is shown

Fix:

- mark the signal as `early signal`
- add validation tasks for filings, earnings calls, management commentary, channel checks, or market data

### 3. No Price-In Discipline

Symptom:

- the thesis may be right, but the report never asks whether the stock already prices it in

Fix:

- use `thinking_skills/skill_007_consensus_detection.md`
- use `analysis_methods/valuation.md`
- explicitly write `市场预期数据暂缺` if the local data does not support a price-in view

### 4. Company Mapping Is Too Loose

Symptom:

- every company mentioned becomes a beneficiary
- customers, suppliers, competitors, and comparison tickers are mixed together
- the report lists what a company does but never answers why it is the better thesis expression than peers/proxies

Fix:

- use `analysis_methods/company_mapping.md`
- classify company role before investment implication
- build a thesis-specific peer/proxy set for every candidate
- answer `why this ticker / why not peers` before upgrading conviction

### 5. Signal-to-Alpha Chain Is Broken

Symptom:

- report has a signal and a recommendation, but no mechanism or financial bridge

Fix:

- require the full chain: Signal -> Mechanism -> Beneficiary Mapping -> Earnings Impact -> Market Expectation -> Evidence Gap -> Why Now -> Catalyst -> Invalidation -> PM Action

### 6. No Why Now / Timing Catalyst

Symptom:

- thesis is structurally true but does not explain why it should work now
- catalyst section lists generic long-term demand instead of a timing event
- candidate looks right thematically but could have been written last year or next year

Fix:

- require `Why Now`: why now, why not last year, why not next year
- connect timing to product cycle, deployment cycle, order/backlog/ASP/guide inflection, customer validation, policy calendar, earnings date, or price reaction
- keep candidates without timing in `Watchlist` or `Need more evidence`

### 7. Research OS Run Log Instead Of Investment Memo

Symptom:

- report spends too much space explaining route, source processing, event audit, or framework mechanics
- PM must read system process before seeing investment judgment
- report is long because it displays the OS rather than compressing the investment answer

Fix:

- target an 8-10 page PM-facing memo
- answer five questions near the front: consensus, our view, why now, why this company versus peers, and PM action
- move route details, event audit mechanics, and source classification to appendix or artifacts
- keep the main body focused on signal -> mechanism -> company expression -> financial transmission -> catalyst -> invalidation -> PM action

### 8. Mechanical Repetition Masquerading As Structure

Symptom:

- the same ticker, thesis, catalyst, or validation gap appears in multiple tables with different headings
- evidence table, event audit, signal cluster, company map, and financial validation all repeat the same sentence
- `需要验证`, `继续跟踪`, or `证据不足` appears many times without new information

Fix:

- use one primary explanation per thesis
- later sections may add only peer displacement, financial transmission, price-in, catalyst, invalidation, company-specific risk, or PM action
- consolidate validation gaps into one `Primary evidence gap` section
- do not compress by deleting investment-critical content such as bottleneck migration, price-in, catalyst, invalidation, or company-specific risk

## Soft Failure Modes

- too much background before conclusion
- no explicit PM action state
- no serious bear case
- no validation tasks
- missing source traceability
- overconfident language when evidence is weak
