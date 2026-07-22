# Full System Report Template

Use this template when the user asks for a complete Research OS report, not merely a short brief.

The report should be Chinese by default.

## Required Output Structure

```markdown
# [主题] 买方研究报告

## 1. 核心结论

- 边际变化：
- PM 行动状态：Long / Short / Watch / Ignore / Needs More Work
- 核心 thesis：
- 研究优先级：
- 最大不确定性：

## 2. What Changed / Why Now

## 3. 数据基础与证据分层

| 证据 | 来源 | 证据类型 | 验证状态 | 投资含义 |
| --- | --- | --- | --- | --- |

## 4. 思考路径

- primary core skill:
- selected thinking skills:
- selected methodology:
- 为什么这些思考方式主导本报告：

## 5. Research Event Audit

Use this section when X, a16z, GeoScope, newsletters, specialist blogs, or other early-signal sources materially support the report.

If no early-signal source is material, write: `本报告不依赖早期信号源，事件审计不适用。`

| Event | Source | Ticker / Node | Target Role | Claim Type | Evidence Type | Strength | Discovery Stage | Price-In Status | Report Use |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |

Required interpretation:

- 哪些事件能进入报告：
- 哪些只能作为 context：
- 哪些必须进入 validation task：
- 哪些应排除：
- 是否存在重复 thesis cluster：
- 是否存在 ticker role 误判风险：

## 6. 买方投资逻辑（Signal-to-Alpha）

This section is mandatory for full system reports.

Do not use a table-only summary. Expand the investment logic into 3-6 signal clusters labeled `Signal Cluster A/B/C...`.

Each signal cluster must use this exact buy-side logic chain:

```markdown
### Signal Cluster [A/B/C]：[一句话说明投资逻辑]

**Signal**：本地数据中出现了什么新信号？

**Mechanism**：为什么这个信号会改变产业链、供需、单位经济、竞争格局或风险定价？

**Beneficiary Mapping**：

- 直接受益：
- 间接受益：
- 潜在受损 / 风险暴露：

**Earnings Impact**：这个逻辑会如何影响 revenue、orders、backlog、ASP、gross margin、opex、capex、depreciation、EPS、FCF 或 valuation？

**Market Expectation**：市场大概率已经相信什么？可能低估、误判或尚未充分 price in 什么？

**Evidence Gap**：哪些证据还缺？需要哪些一手来源验证？

**Catalyst**：什么事件会让市场重新定价？

**Invalidation**：什么证据会推翻这个 thesis？

**PM Action**：PM 下一步应该 monitor、research further、build watchlist、avoid，还是升级为 candidate？
```

At the end of this section, include a short investment logic summary that ranks the signal clusters by:

```text
scarcity -> financial transmission -> market expectation gap -> validation urgency
```

## 7. 产业链与价值链映射

## 8. 公司映射

| 公司 / ticker | 角色 | 直接/间接受益 | 证据 | 财务传导 | 风险 | 待验证 |
| --- | --- | --- | --- | --- | --- | --- |

## 9. 市场预期与 Price-in 判断

## 10. 财务验证路径

## 11. 催化剂

## 12. Bear Case / Invalidation

## 13. PM Next Action

## 14. 数据来源与待验证事项
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
