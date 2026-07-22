# Report Evaluation

- report: `outputs/full_system_runs/ai_local_full_skillhub_2026-07-22/full_system_report.md`
- route: `outputs/full_system_runs/ai_local_full_skillhub_2026-07-22/route.md`
- evaluator_version: v3
- total_score: 89 / 100
- decision_quality: Strong

## Scorecard

| Dimension | Weight | Score | Notes |
| --- | ---: | ---: | --- |
| Route discipline | 8 | 8 | Route artifact exists, schema validated, exactly one primary core skill and two auxiliary skills. |
| Thinking dominance | 10 | 9 | Bottleneck mapping, event reasoning, constraint discovery, price-in thinking, and financial bridge shape the thesis before industry frameworks. |
| Local data discipline | 10 | 9 | Uses local AI runtime packet and clearly marks X / social / secondary research as leads. Primary source gaps remain explicit. |
| Noise filtering | 6 | 5 | Generic rally, ETF, options, upgrades, and short context posts are demoted or excluded. |
| Industry framework use | 6 | 5 | AI, semiconductor, and energy frameworks support inspection without becoming the report skeleton. |
| PM-grade core conclusion | 8 | 8 | Opens with marginal change, action state, thesis, ticker candidates, priorities, uncertainty, and next validation. |
| Signal-to-Alpha investment logic | 8 | 8 | Uses explicit Signal Cluster A/B/C/D with signal, mechanism, mapping, financial transmission, price-in, and PM trigger. |
| Ticker candidate / feedback loop | 8 | 8 | Separates primary basket (`MU`, `MRVL`, `AEHR`) from risk/context watchlist (`SMCI`, `ORCL`), with direction, conviction, report-time price snapshot, benchmark price, review date, and `performance_tracking.jsonl`. |
| Mapping quality | 6 | 5 | Company and risk-object mapping are concentrated in one validation priority table rather than repeated across sections. |
| Financial validation | 6 | 4 | Converts claims into line items and source-checkable questions, but still lacks primary earnings data, consensus estimates, and price tables. |
| Consensus / variant view | 4 | 3 | Separates consensus AI beta from variant bottleneck migration, but price-in evidence is incomplete. |
| Investment judgment | 4 | 4 | Correctly chooses `Watchlist / Needs More Evidence` rather than forcing a trade. |
| Validation loop | 4 | 4 | Produces specific next-round validation questions and keeps them tied to PM action. |
| Event audit discipline | 6 | 4 | Uses a compressed admission summary and avoids treating duplicate events as independent evidence; full automated clustering is still pending. |
| Information compression | 6 | 5 | Removes repeated evidence, company mapping, and validation phrasing from the main body while adding a compact candidate tracking section. |

## Required Fixes

- Add primary evidence for MU / HBM, MRVL, AEHR, SMCI, CRWV / NBIS, and ORCL before upgrading any idea from watchlist to candidate.
- Add benchmark-relative and peer-relative price-in tables, especially SOXX-relative returns and prior run-up / drawdown windows.
- Add consensus estimates, valuation multiples, and line-item revision evidence for key tickers.
- Keep `SMCI` and `ORCL` out of the primary candidate basket unless future evidence materially improves their quality or confirms a scored short thesis.
- At the one-month review, refresh end prices from the same or a documented alternative price source.
- Improve automated event clustering so repeated memory / HBM / MRVL posts count as one thesis cluster before report generation.

## Optional Improvements

- Build a dedicated price-in module that outputs `consensus_view`, `variant_view`, `what_is_already_reflected`, and `what_can_still_surprise`.
- Add a stronger loser / displacement map, especially for companies exposed to AI capex but lacking scarce capability.
- Use this compressed report as a regression sample: future reports should improve evidence quality without expanding duplicated sections.
- On 2026-08-24, run the one-month candidate review and append the outcome to SkillHub memory only after price and evidence review are complete.
