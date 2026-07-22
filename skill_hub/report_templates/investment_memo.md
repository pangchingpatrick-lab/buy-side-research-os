# Investment Memo Template

Use this template for a Chinese buy-side memo focused on one thesis or company.

```markdown
# [Company / Thesis] 投资备忘录

生成日期：YYYY-MM-DD
输入数据包：
route 文件：
使用思考方式 / 方法论：
主 skill：
辅助 skill：
主导映射：
使用行业框架：
使用方法：
报告评分：

## 1. Thesis First

- 边际变化：不是 [市场已知共识]，而是 [新的稀缺层级 / 财务传导 / 价值迁移]
- 核心 thesis：
- 投资判断：
- 时间周期：
- 目标 PM 动作：
- 核心待验证点：

## 2. What Changed

## 3. Why Now

## 4. Thinking Path And Mapping

- Selected thinking skills / methodology:
- Why this thinking path dominates the memo:
- Value-chain map:
- Company / ticker exposure map:
- Direct, indirect, and negative beneficiaries:
- Business mechanism:
- Financial validation path:
- Mapping gaps:

## 5. Evidence Chain

| Evidence | Source | Credibility | Verification status |
| --- | --- | --- | --- |
| | | | |

## 6. Business / Financial Mechanism

- Revenue impact:
- Margin impact:
- Orders / backlog:
- Capex:
- EPS / FCF:
- Valuation:

## 7. 买方投资逻辑（Signal-to-Alpha）

围绕 memo 的核心 thesis 写 1-3 个 signal cluster，每个 cluster 使用：

```text
Signal -> Mechanism -> Beneficiary Mapping -> Earnings Impact -> Market Expectation -> Evidence Gap -> Catalyst -> Invalidation -> PM Action
```

如果是单公司 memo，也要说明：

- 公司直接受益/间接受益/潜在受损路径。
- thesis 如何进入 revenue、orders、backlog、ASP、margin、capex、EPS、FCF 或 valuation。
- 什么证据会让 PM 升级、降级或放弃该 thesis。

## 8. Company Mapping

## 9. Consensus vs Variant View

## 10. Valuation / Risk Reward

## 11. Catalysts

## 12. Bear Case / Invalidation

## 13. PM Next Action

## 14. Validation Questions

## 15. Report Evaluation Summary

## 16. Validation Tasks For Data Layer
```

## Rules

- Do not write a generic company profile.
- The first section must state marginal change, core thesis, PM action, and verification points.
- Thinking skills / methodology must dominate the memo's argument.
- Industry frameworks should support the memo by identifying what to inspect.
- The memo must include a Signal-to-Alpha investment logic section.
- The memo must include value-chain mapping, company exposure mapping, beneficiary/loser mapping, and mechanism-to-financial mapping.
- Do not fabricate financial metrics.
- Separate verified facts from assumptions.
- End with concrete validation questions.
- The memo must reference its route artifact.
- The memo must state one primary core skill and zero to two auxiliary core skills.
- The memo must include a compact report evaluation summary.
- The memo must produce validation tasks that can be converted into `validation_tasks.jsonl`.
