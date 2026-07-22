# Full System Report Template

Use this template when the user asks for a complete Research OS report, not merely a short brief.

The report should be Chinese by default.

## Required Output Structure

Full system reports should be compact. The main body should compress evidence into
decision logic instead of repeating the same facts across several tables.

```markdown
# [主题] 买方研究报告

## 1. 核心结论

- 边际变化：
- PM 行动状态：Long / Short / Watch / Ignore / Needs More Work
- 核心 thesis：
- 研究优先级：
- 具体股票候选：
- 最大不确定性：
- 下一步验证：

## 2. What Changed / Why Now

## 3. 思考路径

- primary core skill:
- selected thinking skills:
- selected methodology:
- 为什么这些思考方式主导本报告：
- 行业框架只负责检查哪些环节，不负责替代投资判断：

## 4. 买方投资逻辑（Signal-to-Alpha）

This section is mandatory for full system reports.

Do not use a table-only summary. Expand the investment logic into 3-5 signal clusters labeled `Signal Cluster A/B/C...`.

Each signal cluster must use this compact buy-side logic chain:

```markdown
### Signal Cluster [A/B/C]：[一句话说明投资逻辑]

**Signal**：本地数据中出现了什么新信号？

**Mechanism**：为什么这个信号会改变产业链、供需、单位经济、竞争格局或风险定价？

**Beneficiary / Risk Mapping**：直接受益、间接受益、潜在受损或风险暴露分别是谁？

**Financial Transmission**：这个逻辑会影响哪些 line items 或经营指标？

**Market Expectation / Price-In**：市场大概率已经相信什么？可能低估、误判或尚未充分 price in 什么？

**Evidence Gap / PM Trigger**：还缺哪一个最关键证据？什么结果会改变 PM 动作？
```

At the end of this section, include a short investment logic summary that ranks the signal clusters by:

```text
scarcity -> financial transmission -> market expectation gap -> validation urgency
```

## 5. Event Admission Summary

Use this section when X, a16z, GeoScope, newsletters, specialist blogs, or other early-signal sources materially support the report.

This is not a second argument section. It is a compressed audit that explains why an evidence cluster was admitted, demoted to context, sent to validation, or excluded.

If no early-signal source is material, write: `本报告不依赖早期信号源，事件审计不适用。`

| Thesis Cluster | Representative Source Types | Target Role Discipline | Evidence Strength | Price-In Question | Report Use |
| --- | --- | --- | --- | --- | --- |

Required interpretation:

- 哪些 thesis cluster 能进入主文：
- 哪些只能作为 context：
- 哪些必须进入 validation task：
- 哪些应排除：
- 是否存在重复 thesis cluster：
- 是否存在 ticker role 误判风险：

## 6. 公司与财务验证优先级

Combine company mapping and financial validation into one compressed priority table.

| Priority | Company / Node | Role | Financial Transmission | One Critical Validation Question | PM Implication |
| --- | --- | --- | --- | --- | --- |

## 7. 具体股票候选与 30 日验证池

Every public-equity report must name concrete tickers unless the topic has no
publicly traded exposure. Do not leave the report at the industry-node level.

Separate true report candidates from risk / context names. The primary basket is
what will be used to judge whether the report generated useful investable ideas.
Risk names can be tracked, but they must not be mixed into the same table as
positive candidates.

Primary candidates can be `Long candidate`, `Long watch`, `Short candidate`, or
`Short watch`.

| Ticker | Direction | Conviction | Thesis Cluster | Why This Stock | Benchmark | Review Date | Success / Failure Test |
| --- | --- | --- | --- | --- | --- | --- | --- |

Risk / context watchlist:

| Ticker | Classification | Why Not Primary | What It Tests | Benchmark | Review Date |
| --- | --- | --- | --- | --- | --- |

Also emit a machine-readable `performance_tracking.jsonl` file for the same
candidates so the system can review price performance after one month. Include
`candidate_bucket` to separate `primary_candidate` from `risk_context`.

## 8. Bear Case / Invalidation

## 9. PM Next Action

## 10. 数据来源与待验证事项
```

## Writing Rules

- Start with the conclusion, not a process summary.
- Do not let the industry framework become the report skeleton.
- Show how the thinking skills changed the thesis.
- Use industry frameworks only to decide what to inspect.
- Use `待验证`, `待补充`, or `数据暂缺` instead of filling gaps with assumptions.
- Do not claim the market is wrong until the market's current expectation is described.
- If early-signal sources are material, do not use them before assigning claim type, evidence type, ticker role, discovery stage, price-in status, and report use.
- Every report must include a serious invalidation path.
- The `买方投资逻辑（Signal-to-Alpha）` section must use explicit `Signal Cluster A/B/C...` subsections. A table alone is not acceptable for a buy-side report.
- For public-equity reports, include 3-7 concrete ticker candidates or explicitly explain why no listed-equity candidate is investable.
- Each candidate must have direction, conviction, benchmark, one-month review date, and a success / failure test.
- Do not mix low-quality risk/context names into the primary candidate basket.
- Risk watch names can be tracked separately, but they should not count as the report's investable picks.
- Candidate direction is a research action state, not a personal investment instruction.
- One fact should serve one role in the main body. Do not repeat the same evidence, validation need, or ticker mapping across Event Audit, Signal Cluster, Company Mapping, and Financial Validation sections.
- Do not create separate `数据基础`, `公司映射`, and `财务验证` tables if they contain the same rows. Merge them into `Event Admission Summary` and `公司与财务验证优先级`.
- Detailed event fields belong in machine-readable files, validation tasks, or appendix material. The PM-facing report should show compressed judgment, not repeated audit rows.
- Target main-body length: 6-8 decision sections, 3-5 signal clusters, and no more than two tables before the appendix.
