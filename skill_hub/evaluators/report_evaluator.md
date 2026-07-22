# Report Evaluator

Use this evaluator after a full report, PM brief, or investment memo is generated.

The evaluator grades whether the output actually used the Research OS rather than producing a generic industry note.

## Required Input

- `route.md` or `route.json`
- final report file
- input packet summary
- selected report template
- known data gaps

## Scoring Rubric

| Dimension | Weight | What Good Looks Like |
| --- | ---: | --- |
| Route discipline | 8 | Exactly one primary skill, at most two auxiliary skills, clear exclusions. |
| Thinking dominance | 10 | Thinking skills shape the thesis, not just a template section. |
| Local data discipline | 10 | Uses local packet evidence only; marks missing or unverified evidence. |
| Noise filtering | 6 | Promotional, generic, or low-research-value records are downweighted. |
| Industry framework use | 6 | Frameworks support inspection without becoming the main argument. |
| PM-grade core conclusion | 8 | Opens with marginal change, PM action state, core thesis, ticker candidates, research priority, and validation points; does not start with process summary. |
| Signal-to-Alpha investment logic | 8 | Includes explicit Signal Cluster A/B/C sections with Signal, Mechanism, Beneficiary / Risk Mapping, Financial Transmission, Market Expectation / Price-In, and Evidence Gap / PM Trigger. Table-only summaries do not receive full credit. |
| Ticker candidate / feedback loop | 8 | Names concrete tickers, direction, conviction, benchmark, one-month review date, and emits `performance_tracking.jsonl`. |
| Mapping quality | 6 | Includes value-chain, company, beneficiary/loser, and mechanism-to-financial mapping without duplicating the same rows elsewhere. |
| Financial validation | 6 | Converts claims into line items, metrics, and source-checkable questions in a compressed priority table. |
| Consensus / variant view | 4 | Separates consensus from the non-consensus view and identifies what would change minds. |
| Investment judgment | 4 | Chooses a defensible action state instead of forcing a trade. |
| Validation loop | 4 | Produces specific next-round data tasks. |
| Event audit discipline | 6 | Early-signal sources are converted into admitted / context / validation / excluded thesis clusters with claim/evidence type, ticker role, discovery stage, price-in question, duplicate clustering, and report use. |
| Information compression | 6 | Avoids repeating the same evidence, validation task, or company mapping across sections; one thesis cluster is argued once and referenced thereafter. |
| Total | 100 | |

## Output Format

```markdown
# Report Evaluation

- report:
- route:
- evaluator_version: v1
- total_score:
- decision_quality: Strong / Usable / Needs revision / Invalid

## Scorecard

| Dimension | Weight | Score | Notes |
| --- | ---: | ---: | --- |
| Route discipline | 8 | | |
| Thinking dominance | 10 | | |
| Local data discipline | 10 | | |
| Noise filtering | 6 | | |
| Industry framework use | 6 | | |
| PM-grade core conclusion | 8 | | |
| Signal-to-Alpha investment logic | 8 | | |
| Ticker candidate / feedback loop | 8 | | |
| Mapping quality | 6 | | |
| Financial validation | 6 | | |
| Consensus / variant view | 4 | | |
| Investment judgment | 4 | | |
| Validation loop | 4 | | |
| Event audit discipline | 6 | | |
| Information compression | 6 | | |

## Required Fixes

-

## Optional Improvements

-
```

## Decision Quality

- `Strong`: 85-100. Report can be shown to a PM after source caveats.
- `Usable`: 70-84. Good structure, but needs validation or sharpening.
- `Needs revision`: 50-69. Missing core mapping, weak route, or framework dominates thinking.
- `Invalid`: below 50. Generic note, fabricated evidence, no route, or no validation loop.

## Hard Fail Conditions

Any of these should force `Invalid` regardless of numeric score:

- no route artifact
- no local data reference
- fabricated source, number, URL, or claim
- no distinction between verified and unverified evidence
- final report presents an investment action without evidence support
- industry framework replaces the thinking path
- final report's core conclusion is a process summary instead of a PM-grade thesis
- public-equity report does not name concrete ticker candidates or explain why no listed-equity candidate is investable
- public-equity report does not define a one-month review date and benchmark for each candidate
- full industry report or investment memo lacks a Signal-to-Alpha investment logic section
- full system report, full industry report, or investment memo uses only a table for Signal-to-Alpha and lacks explicit Signal Cluster A/B/C style buy-side logic
- signal clusters do not connect signal to mechanism, company mapping, financial impact, and PM action
- report materially relies on X, a16z, GeoScope, newsletter, or public specialist signals but has no event audit
- report treats a context/customer/peer ticker as the focal beneficiary without explaining target role
- report counts duplicate thread/source repetitions as independent evidence
- report repeats the same evidence, validation need, or company mapping across three or more main-body sections instead of compressing it into one thesis cluster and one validation priority table
