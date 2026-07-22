# Investment Decision Method

Use this method to translate research into a PM-facing action state.

## Decision States

Choose one:

- `Long candidate`
- `Short candidate`
- `Watchlist`
- `Avoid`
- `Need more evidence`

## Decision Logic

| Decision | Use when |
| --- | --- |
| Long candidate | Verified evidence, clear company exposure, upside not fully priced, catalyst visible |
| Short candidate | Consensus too optimistic, downside evidence credible, timing/catalyst visible |
| Watchlist | Theme important but valuation, timing, or evidence incomplete |
| Avoid | Weak linkage to earnings, low-quality evidence, or poor risk/reward |
| Need more evidence | Interesting signal but not enough verified data |

## Output

```markdown
## Investment Decision

- Decision:
- Rationale:
- Evidence supporting:
- Evidence missing:
- Upgrade conditions:
- Downgrade conditions:
- PM next action:
```

## Candidate Basket Output

For public-equity reports, also produce a concrete candidate basket:

```markdown
| Ticker | Direction | Conviction | Current / Start Price | Benchmark | Review Date | Success / Failure Test |
| --- | --- | --- | --- | --- | --- | --- |
```

The candidate basket is the report's testable output. It should be specific
enough that a one-month review can check absolute return, benchmark-relative
return, and whether the thesis evidence improved or failed.

Include a report-time price snapshot. If the report is generated outside regular
market hours, use regular close as the return baseline and show extended-hours
price as context.

Keep risk-only or context-only tickers outside the primary basket:

```markdown
| Ticker | Classification | Why Not Primary | What It Tests | Benchmark | Review Date |
| --- | --- | --- | --- | --- | --- |
```

Use this second table for companies that are relevant to the thesis but are low
quality expressions, risk objects, customer/context tickers, or possible
invalidation checks.

## Guardrails

- Do not force an action when evidence is insufficient.
- `Watchlist` and `Need more evidence` are valid outcomes.
- State what would change the decision.
- Use `long_watch`, `short_risk_watch`, or `needs_evidence` when the report
  should track a ticker but the evidence is not strong enough for a candidate.
- Do not promote a weak company into the primary basket merely because it is
  thematically related.
