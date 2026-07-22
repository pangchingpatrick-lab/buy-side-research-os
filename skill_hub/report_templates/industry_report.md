# Industry Report Template

Use this template for a full Chinese industry report.

```markdown
# [Industry / Topic] 买方行业研究报告

生成日期：YYYY-MM-DD
输入数据包：
route 文件：
使用思考方式 / 方法论：
主 skill：
辅助 skill：
主导映射：
使用行业框架：
使用分析方法：
报告评分：

## 1. 核心结论

必须按以下顺序写，不要写成系统运行摘要：

- 第一句话直接回答“边际变化是什么”，不要从“本次 run 做了什么”开始。
- 第二段给买方初步判断：Long candidate / Watchlist / Deep Research / Avoid / Need more evidence。
- 明确核心 thesis：一句话说明 alpha 来自哪里。
- 写出 3-7 条最强投资逻辑链，而不是泛泛行业趋势。
- 写出优先研究顺序，按“稀缺层级 + 财务传导”排序。
- 写出核心待验证点：哪些 claims 必须被 filings、earnings call、订单、backlog、pricing、capex guide、consensus 或 valuation comps 验证。

核心结论应接近这种表达质量：

```text
[行业/主题] 的边际变化，不是 [市场已知共识]，
而是 [新的稀缺层级 / 财务传导 / 价值迁移]。

买方初步判断：[主题] 仍值得跟踪，但不能泛化买入。
真正值得研究的是哪些公司能把 [行业变化] 转化为收入、订单、margin、FCF 或估值重估。
```

## 2. 研究问题

## 3. 思考路径与映射总览

- 选用的 thinking skills / methodology：
- 为什么这些思考方式主导本报告：
- 价值链映射：
- 公司 / ticker 暴露映射：
- 直接受益、间接受益、潜在受损方：
- 业务机制 -> 财务影响路径：
- 证据不足的映射节点：

## 4. What changed / Why now

## 5. 买方投资逻辑（Signal-to-Alpha）

本节必须把前面的系统变化转成可投资逻辑。按 3-6 个 signal cluster 展开，每个 cluster 使用同一结构：

```markdown
### Signal Cluster [A/B/C]：[一句话说明投资逻辑]

**Signal**：本地数据中出现了什么新信号？

**Mechanism**：为什么这个信号会改变产业链、供需、单位经济或竞争格局？

**Beneficiary Mapping**：

- 直接受益：
- 间接受益：
- 潜在受损：

**Earnings Impact**：这个逻辑会如何影响 revenue、orders、backlog、ASP、gross margin、opex、capex、depreciation、EPS、FCF 或 valuation？

**Market Expectation**：市场大概率已经相信什么？可能低估/误判什么？

**Evidence Gap**：哪些证据还缺？需要哪些一手来源验证？

**Catalyst**：什么事件会让市场重新定价？

**Invalidation**：什么证据会推翻这个 thesis？

**PM Action**：PM 下一步应该 monitor、research further、build watchlist、avoid，还是升级为 candidate？
```

本节禁止只写行业背景。每个 cluster 都必须完成从 signal 到 financial impact 的闭环。

## 6. 行业本质与商业模式

## 7. 核心增长驱动

## 8. 收入 / 利润公式

## 9. 关键经营指标

## 10. 产业链与供需结构

## 11. 公司映射与排序

## 12. 财务验证

## 13. 市场共识 vs 非共识

## 14. 估值与预期差

## 15. 催化剂

## 16. 风险与证伪条件

## 17. 投资判断

## 18. 下一轮验证问题

## 19. 数据来源与可信度说明

## 20. Report Evaluation Summary

## 21. Validation Tasks For Data Layer
```

## Rules

- Write in Chinese.
- Lead with a PM-grade core conclusion: marginal change, investment judgment, core thesis, research priority, and verification points.
- Avoid generic industry summaries.
- Include a mandatory `买方投资逻辑（Signal-to-Alpha）` section after `What changed / Why now`.
- Each signal cluster must include Signal, Mechanism, Beneficiary Mapping, Earnings Impact, Market Expectation, Evidence Gap, Catalyst, Invalidation, and PM Action.
- Thinking skills / methodology must dominate the report logic.
- Industry frameworks are supporting checklists, not the report's main skeleton.
- The report must include value-chain mapping, company mapping, beneficiary/loser mapping, and mechanism-to-financial mapping.
- Every conclusion must be traceable to source evidence.
- Missing data must be marked `待补充`.
- Unverified claims must be marked `待验证`.
- The report must reference its route artifact.
- The report must state one primary core skill and zero to two auxiliary core skills.
- The report must include a short evaluation summary using `skill_hub/evaluators/report_evaluator.md`.
- The report must include validation tasks that can be converted into `validation_tasks.jsonl`.
