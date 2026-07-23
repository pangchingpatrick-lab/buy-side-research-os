# Investment Memo Template

Use this template for a Chinese buy-side memo focused on one thesis or company.

Target about 8-10 PDF pages. The memo should be dense, PM-facing, and investment-led. It should not read like a Research OS run log.

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

## 2. Consensus / Our View / Why Now / PM Action

- Consensus（市场观点）：
- Our View（我们的非共识观点）：
- Why Now（为什么现在，而不是去年或明年）：
- Why This Can Make Money：
- PM Action：

## 3. Data Foundation / Thinking Path / Evidence Hierarchy

- Selected thinking skills / methodology:
- Why this thinking path dominates the memo:
- Value-chain map:
- Company / ticker exposure map:
- Direct, indirect, and negative beneficiaries:
- Business mechanism:
- Financial validation path:
- Mapping gaps:
- Social-media evidence downgrade rule:

| Evidence | Source | Credibility | Verification status |
| --- | --- | --- | --- |
| | | | |

## 4. 买方投资逻辑（Signal-to-Alpha）

围绕 memo 的核心 thesis 写 1-3 个 signal cluster，每个 cluster 使用：

```text
Consensus -> Our View -> Signal -> Mechanism -> Beneficiary Mapping -> Earnings Impact -> Market Expectation / Price-In -> Primary Evidence Gap -> Why Now -> Catalyst -> Invalidation -> PM Action
```

如果是单公司 memo，也要说明：

- 公司直接受益/间接受益/潜在受损路径。
- thesis 如何进入 revenue、orders、backlog、ASP、margin、capex、EPS、FCF 或 valuation。
- 什么证据会让 PM 升级、降级或放弃该 thesis。
- 为什么这个公司是更好的股票表达，而不是相关 peers/proxies。

## 5. Company / Peer Displacement

For a single-company memo, this section must answer:

- why this company is or is not a valid expression of the variant view
- why it is better or worse than relevant peers/proxies
- what evidence would prove a peer/proxy is the cleaner expression
- company-specific risk

For a multi-company thesis memo, add a 3-5 name candidate basket:

| Rank | Ticker / Company | Linked Variant View | Why This / Why Not Peers | Why Now / Timing Catalyst | Why It Can Make Money | What Market May Miss | Catalyst | Key Invalidation | Action State |
| ---: | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| | | | | | | | |

## 6. Business / Financial Mechanism

- Revenue impact:
- Margin impact:
- Orders / backlog:
- Capex:
- EPS / FCF:
- Valuation:

## 7. Valuation / Price-In / Risk Reward

## 8. Catalyst / Why Now / Invalidation

## 9. PM Next Action / One-Month Scorecard

## 10. Appendix：Validation Questions / Report Evaluation / Data Tasks
```

## Rules

- Do not write a generic company profile.
- Target about 8-10 PDF pages unless the user asks otherwise.
- The first section must state marginal change, core thesis, PM action, and verification points.
- The memo must answer five questions: consensus, our view, why now, why this company versus peers, and PM action.
- Thinking skills / methodology must dominate the memo's argument.
- Industry frameworks should support the memo by identifying what to inspect.
- The memo must include a Signal-to-Alpha investment logic section.
- The memo must include a real Consensus vs Variant View section; true consensus facts are not enough.
- If the memo covers a multi-company thesis, include a 3-5 name candidate basket tied to the variant view.
- Every named candidate must explain why it is the right expression versus relevant peers/proxies.
- Every named candidate must explain why now and what timing catalyst makes it actionable.
- The memo must include value-chain mapping, company exposure mapping, beneficiary/loser mapping, and mechanism-to-financial mapping.
- Do not fabricate financial metrics.
- Separate verified facts from assumptions.
- Do not repeat the same thesis, ticker, catalyst, or evidence gap across sections. Later sections must add peer displacement, financial transmission, catalyst, invalidation, or PM action.
- End with concrete validation questions.
- The memo must reference its route artifact.
- The memo must state one primary core skill and zero to two auxiliary core skills.
- The memo must include a compact report evaluation summary.
- The memo must produce validation tasks that can be converted into `validation_tasks.jsonl`.
