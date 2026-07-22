# Performance Tracking Contract

Every public-equity report should create a machine-readable candidate file so
the system can review whether the report generated useful, testable ideas.

This contract does not replace thesis validation. Price performance is one
feedback signal, not proof that the reasoning was correct.

## Required Artifact

```text
performance_tracking.jsonl
```

Each line represents one ticker candidate from the report.

## JSONL Fields

```json
{
  "tracking_id": "ai-2026-07-22-MU",
  "created_at": "2026-07-22",
  "review_date": "2026-08-24",
  "report_path": "outputs/full_system_runs/ai_local_full_skillhub_2026-07-22/full_system_report.md",
  "topic": "AI infrastructure",
  "ticker": "MU",
  "company": "Micron Technology",
  "candidate_bucket": "primary_candidate",
  "score_in_primary_basket": true,
  "direction": "long_watch",
  "conviction": "medium",
  "thesis_cluster": "Signal Cluster A",
  "thesis_summary": "HBM and memory bandwidth may become a scarce AI inference layer.",
  "benchmark_ticker": "SOXX",
  "start_price_date": "2026-07-22",
  "start_price": null,
  "end_price_date": null,
  "end_price": null,
  "absolute_return": null,
  "benchmark_return": null,
  "relative_return": null,
  "success_criteria": "Positive absolute return and positive SOXX-relative return, with no thesis invalidation.",
  "failure_criteria": "Negative relative return or primary evidence contradicts the thesis.",
  "status": "open",
  "review_notes": ""
}
```

## Direction Values

- `long_candidate`: evidence is strong enough for a buy-side long candidate.
- `long_watch`: thesis is attractive, but evidence or price-in data is incomplete.
- `short_candidate`: downside thesis is strong enough for a short candidate.
- `short_risk_watch`: risk thesis matters, but evidence or timing is incomplete.
- `avoid`: the report explicitly says not to use this ticker as an expression.
- `needs_evidence`: relevant ticker, but not enough evidence for direction.

## Candidate Buckets

- `primary_candidate`: the ticker is part of the report's scored candidate basket.
- `risk_context`: the ticker is used to track risk, context, or a possible
  invalidation path, but is not counted as a positive recommendation.

Use `score_in_primary_basket: false` for risk/context names. This prevents low
quality or risk-only names from contaminating the report's investable pick score.

## Review Rule

At the one-month review date:

1. Fill start price if missing.
2. Fill end price.
3. Fill benchmark start and end prices.
4. Calculate absolute return, benchmark return, and relative return.
5. Score whether the report's direction was right:
   - long direction succeeds when the ticker is positive and/or outperforms benchmark according to the stated test.
   - short direction succeeds when the ticker underperforms benchmark or the downside thesis materializes.
   - risk/context names should be reviewed separately and should not change the primary candidate basket score unless the report explicitly made them scored shorts.
   - avoid succeeds when excluded/noise candidates underperform or fail to produce useful evidence.
6. Write what worked or failed into report evaluation and memory only after review.

## Guardrails

- Do not invent prices.
- Do not call a report successful only because the whole market rallied.
- Do not call a thesis wrong only because one-month price action is noisy; separate price score from evidence score.
- If a candidate has no clean public ticker or benchmark, mark `status: needs_tracking_setup`.
