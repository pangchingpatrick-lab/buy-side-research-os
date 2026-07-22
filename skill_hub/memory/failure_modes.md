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

Fix:

- use `analysis_methods/company_mapping.md`
- classify company role before investment implication

### 5. Signal-to-Alpha Chain Is Broken

Symptom:

- report has a signal and a recommendation, but no mechanism or financial bridge

Fix:

- require the full chain: Signal -> Mechanism -> Beneficiary Mapping -> Earnings Impact -> Market Expectation -> Evidence Gap -> Catalyst -> Invalidation -> PM Action

## Soft Failure Modes

- too much background before conclusion
- no explicit PM action state
- no serious bear case
- no validation tasks
- missing source traceability
- overconfident language when evidence is weak
