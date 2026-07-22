# Validation Loop Method

Use this method to turn every report into the next data collection loop.

## Purpose

Reports are not the end of research. They create validation questions that go back to Step 1 data collection.

## Steps

1. List claims that still need evidence.
2. Identify financial data to check.
3. Identify filings, earnings calls, or investor materials to review.
4. Identify X accounts or keywords to monitor.
5. Define thesis-confirming events.
6. Define thesis-invalidating events.
7. Set review timing.

## Output

| Validation question | Data source to check | Expected evidence | Priority | Review timing |
| --- | --- | --- | --- | --- |
| | | | High / Medium / Low | |

Also emit `validation_tasks.jsonl` using:

- `skill_hub/contracts/validation_task_contract.md`

Each task must include:

- claim
- why it matters
- data needed
- preferred sources
- priority
- expected confirming evidence
- expected disconfirming evidence
- owner layer
- status

## Guardrails

- Make questions specific enough to drive the next data loop.
- Do not answer validation questions without sources.
- Prefer questions that can change the investment decision.
- Do not leave validation questions only as prose when the run is complete.
- Convert high and medium priority questions into machine-readable tasks.
