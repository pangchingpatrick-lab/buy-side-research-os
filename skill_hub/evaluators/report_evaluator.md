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
| Route discipline | 5 | Exactly one primary skill, at most two auxiliary skills, clear exclusions. |
| Thinking dominance | 8 | Thinking skills shape the thesis, not just a template section. |
| Local data discipline | 7 | Uses local packet evidence only; marks missing or unverified evidence. |
| Noise filtering | 3 | Promotional, generic, or low-research-value records are downweighted. |
| Industry framework use | 2 | Frameworks support inspection without becoming the main argument. |
| PM-grade core conclusion | 7 | Opens with marginal change, PM action state, core thesis, research priority, and validation points; does not start with process summary. |
| Five-question memo answer | 8 | Clearly answers: consensus, our non-consensus view, why now, best beneficiaries versus peers, and PM action. |
| Variant view / alpha migration | 10 | Separates consensus from the non-consensus view, explains why consensus may be incomplete, and identifies where alpha migrates from and to. |
| Alpha candidate basket | 7 | Provides 3-5 listed-company candidates tied directly to the variant view, with catalyst, invalidation, and action state. |
| Peer displacement / why this ticker | 7 | Each named thesis candidate explains why it is the right stock expression versus relevant peers/proxies, not merely what the company does. |
| Why Now / timing catalyst | 7 | Each signal cluster and named candidate answers why now, why not last year, and why not next year, with a concrete timing catalyst. |
| Signal-to-Alpha investment logic | 7 | Includes explicit Signal Cluster A/B/C sections with Signal, Mechanism, Beneficiary Mapping, Earnings Impact, Market Expectation, Evidence Gap, Why Now, Catalyst, Invalidation, and PM Action. Table-only summaries do not receive full credit. |
| Memo compression / information density | 8 | Reads like an 8-10 page PM memo, removes duplicate process/log content, and preserves investment-critical content. |
| Mapping quality | 3 | Includes value-chain, company, beneficiary/loser, and mechanism-to-financial mapping without mechanical repetition. |
| Financial validation | 4 | Converts claims into line items, metrics, and source-checkable questions. |
| Investment judgment | 3 | Chooses a defensible action state instead of forcing a trade. |
| Validation loop | 2 | Produces specific next-round data tasks. |
| Event audit discipline | 2 | Early-signal sources are converted into event rows with claim/evidence type, ticker role, discovery stage, price-in question, duplicate clustering, and report use. |
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
| Route discipline | 5 | | |
| Thinking dominance | 8 | | |
| Local data discipline | 7 | | |
| Noise filtering | 3 | | |
| Industry framework use | 2 | | |
| PM-grade core conclusion | 7 | | |
| Five-question memo answer | 8 | | |
| Variant view / alpha migration | 10 | | |
| Alpha candidate basket | 7 | | |
| Peer displacement / why this ticker | 7 | | |
| Why Now / timing catalyst | 7 | | |
| Signal-to-Alpha investment logic | 7 | | |
| Memo compression / information density | 8 | | |
| Mapping quality | 3 | | |
| Financial validation | 4 | | |
| Investment judgment | 3 | | |
| Validation loop | 2 | | |
| Event audit discipline | 2 | | |

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
- full report reads like a Research OS run log instead of a PM-facing investment memo
- full report does not answer the five required questions: consensus, our view, why now, why this company versus peers, and PM action
- report mechanically repeats the same thesis, ticker, catalyst, or evidence gap across multiple sections
- report compresses by deleting investment-critical content such as bottleneck migration, price-in, catalyst, invalidation, company-specific risk, or PM action
- final report's core conclusion is a process summary instead of a PM-grade thesis
- full system report, full industry report, or investment memo lacks a front-loaded Consensus -> Our View -> Why -> Candidate Basket section
- variant view only repeats true consensus statements such as AI demand, HBM importance, optical importance, or cooling importance
- alpha candidates are not tied to the variant view or are selected only because they belong to the industry
- named thesis candidates do not answer why this ticker is a better expression than relevant peers/proxies
- report describes company capabilities without comparing alternative stock expressions
- named thesis candidates or signal clusters lack a concrete Why Now / timing catalyst
- catalyst section lists events without answering why the thesis matters now rather than last year or next year
- full system report, full industry report, or investment memo lacks a Signal-to-Alpha investment logic section
- full system report, full industry report, or investment memo uses only a table for Signal-to-Alpha and lacks explicit Signal Cluster A/B/C style buy-side logic
- signal clusters do not connect signal to mechanism, company mapping, financial impact, and PM action
- report materially relies on X, a16z, GeoScope, newsletter, or public specialist signals but has no event audit
- report treats a context/customer/peer ticker as the focal beneficiary without explaining target role
- report counts duplicate thread/source repetitions as independent evidence
