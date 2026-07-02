# Financial Validation Method

Use this method to test whether early signals are supported by official or financial evidence.

## Inputs

- classified early signals
- source log
- company filings
- earnings calls
- annual and quarterly reports
- investor presentations
- financial database exports

## Steps

1. Extract each material claim.
2. Classify it as financial metric, management comment, operating metric, market data, or opinion.
3. Find the highest-credibility validation source.
4. Mark status as `已验证`, `部分验证`, `早期信号，待验证`, `观点，非事实`, `数据暂缺`, or `待补充`.
5. Preserve contradictions instead of smoothing them away.

## Output

| Claim | Source | Validation source | Outcome | Verification status | Notes |
| --- | --- | --- | --- | --- | --- |
| | | | | | |

## Guardrails

- Do not turn X signals into facts without validation.
- Do not invent missing financial metrics.
- If a claim cannot be checked, mark `待补充`.
