# Validation Loop

Use this file after writing an insight report.

Every final report must end by generating next-round validation questions. The purpose is to make the research process verifiable and iterative, not one-shot.

Full loop:

`Runtime Data Layer -> Context Packet -> Skill Hub Router -> Insight Report -> Validation Questions -> Back to Data Collection`

## Required Report Section

Every insight report must include a separate final section:

```markdown
## 下一轮验证计划

| Validation question | Data source to check | Expected evidence | Priority | Review timing |
| --- | --- | --- | --- | --- |
| | X / filings / earnings calls / annual reports / quarterly reports / investor presentations / financial databases / broker reports / consulting reports / reputable media | | High / Medium / Low | |
```

This section should be specific enough that the next agent or analyst can go directly back to the data collection layer and update the runtime data layer.

## Separate Output Path

When a persistent artifact is needed, write validation questions to the chosen output location and keep the source records traceable to `system_index`.

## Required Validation Questions

Every validation plan must answer:

1. What key claims still need evidence?
2. What financial data should be checked next?
3. Which company filings or earnings calls should be reviewed?
4. Which X accounts or keywords should be monitored?
5. What events could confirm the thesis?
6. What events could invalidate the thesis?
7. When should the thesis be reviewed again?

## Validation Question Template

Use this template when writing validation questions as a persistent artifact.

```markdown
# [Topic] Validation Questions

Generated from report: [report name or task]
Date: YYYY-MM-DD
Loop stage: Insight Report -> Validation Questions -> Back to Data Collection

## 1. Thesis To Validate

- Current investment judgment:
- Thesis / variant view:
- Main evidence so far:
- Biggest uncertainty:

## 2. Key Claims That Still Need Evidence

| Claim | Why it matters | Current evidence | Best source to check | Priority |
| --- | --- | --- | --- | --- |
| | | | | High / Medium / Low |

## 3. Financial Data To Check Next

| Data needed | Metric type | Related company | Why it matters | Best source |
| --- | --- | --- | --- | --- |
| | Revenue / margin / orders / backlog / capex / EPS / valuation / market share | | | Financial database / filing / earnings call / broker report |

## 4. Filings And Earnings Calls To Review

| Company | Document / event | Period | What to look for | Priority |
| --- | --- | --- | --- | --- |
| | Annual report / quarterly report / earnings call / investor presentation / IPO prospectus | | | High / Medium / Low |

## 5. X Accounts And Keywords To Monitor

| Account / keyword | Why monitor it | Signal to watch | Verification need |
| --- | --- | --- | --- |
| | | | |

## 6. Thesis-Confirming Events

| Event | Why it would confirm the thesis | Expected evidence | Review timing |
| --- | --- | --- | --- |
| | | | |

## 7. Thesis-Invalidating Events

| Event / evidence | Why it would invalidate the thesis | Best source to check | Review timing |
| --- | --- | --- | --- |
| | | | |

## 8. Review Timing

- Next review date:
- Review trigger:
- Update required in packet: yes / no
- Packet sections to update:

## 9. Back To Data Sources

| Validation question | Data source to check | Expected evidence | Priority | Review timing |
| --- | --- | --- | --- | --- |
| | X / HN / Product Hunt / filings / earnings calls / annual reports / quarterly reports / investor presentations / financial databases / broker reports / consulting reports / reputable media | | High / Medium / Low | |
```

## Data Source Routing

Use the validation questions to decide where the next loop should search:

- X: monitor topic experts, priority accounts, company accounts, founders, operators, engineers, and investors.
- Hacker News / Product Hunt: check developer or product adoption signals.
- Company filings: verify official claims, business exposure, risk factors, segment data, and customer concentration.
- Earnings calls: verify management commentary, guidance, orders, backlog, margin, capex, and demand signals.
- Annual / quarterly reports: verify revenue, margin, capex, and segment trends.
- Investor presentations: verify product roadmap, market framing, and management targets.
- Financial databases: verify financial metrics, valuation, ownership, revisions, and market expectations.
- Broker / consulting / media: check external confirmation or contradiction.

## Rules

- Do not answer validation questions without sources.
- Do not invent validation evidence.
- Make questions specific enough to drive the next data collection round.
- Prefer questions that can change the investment decision.
- Tie each question to a source type and expected evidence.
- Include review timing so the thesis does not remain stale.
- Feed validated answers back into the runtime data layer through the collector or a later verified-data ingestion step.
