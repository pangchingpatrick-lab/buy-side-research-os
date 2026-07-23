# PM Brief Template

Use this template for concise Chinese PM-facing output.

The brief should answer the same five PM questions as a full memo, but in compressed form: consensus, our view, why now, why this company versus peers, and PM action.

```markdown
# [Topic] PM Brief

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

## 1. 核心结论

- 边际变化：不是 [市场已知共识]，而是 [新的稀缺层级 / 财务传导 / 价值迁移]
- 投资判断：Long candidate / Short candidate / Watchlist / Avoid / Need more evidence
- 核心 thesis：
- What changed：
- Why now：
- Who benefits：
- What is not priced in：
- 最大不确定性：

## 2. 证据链

| Claim | Evidence | Source | Verification status |
| --- | --- | --- | --- |
| | | | |

## 3. 思考路径与映射

- Selected thinking skills / methodology:
- Why this thinking path matters:
- Value-chain map:
- Direct / indirect beneficiaries:
- Possible losers:
- Business mechanism:
- Financial validation path:
- Mapping gaps:

## 4. 公司映射

| Company | Ticker | Role | Impact pathway | Evidence quality |
| --- | --- | --- | --- | --- |
| | | | | |

## 5. 市场共识 vs 非共识

- 市场可能相信：
- 我们的非共识观点：
- 市场可能错在哪里：
- 需要验证的数据：

## 6. Alpha Candidate Basket

| Rank | Ticker / Company | Linked Variant View | Why This / Why Not Peers | Why Now / Timing Catalyst | Why It Can Make Money | Catalyst | Key Invalidation | Action State |
| ---: | --- | --- | --- | --- | --- | --- | --- | --- |
| | | | | | | |

候选标的必须来自非共识观点。不要把 risk/context watch 混入 alpha candidate。
每个候选标的必须回答为什么是它，而不是主要 peers / proxies。
每个候选标的必须回答为什么现在，而不是去年或明年。

## 7. 买方投资逻辑（Signal-to-Alpha）

用 1-3 个 signal cluster 简短说明：

```text
Signal -> Mechanism -> Beneficiary Mapping -> Earnings Impact -> Market Expectation -> Evidence Gap -> Why Now -> Catalyst -> Invalidation -> PM Action
```

每个 cluster 至少要说明：

- 这个信号为什么重要？
- 对哪些公司/环节有利或有害？
- 最可能影响哪些财务 line items？
- 为什么现在是相关窗口，而不是去年或明年？
- 什么证据会验证或推翻？

## 8. PM 下一步

- Action:
- Position sizing consideration:
- Catalyst:
- Invalidation:

## 9. 下一轮验证问题

| Question | Data source | Priority |
| --- | --- | --- |
| | | |

## 10. Validation Tasks For Data Layer

| Task | Claim | Data needed | Priority | Status |
| --- | --- | --- | --- | --- |
| | | | | |
```

## Rules

- Thinking skills / methodology must dominate the brief's logic.
- Industry frameworks should be used only to support what to inspect.
- The core conclusion must start with marginal change and PM action, not process summary.
- The brief must answer consensus, our view, why now, why this company versus peers, and PM action.
- The brief must include a candidate basket tied to the variant view when listed-company expressions exist.
- The brief must explain why each candidate is the better thesis expression than relevant peers/proxies.
- The brief must explain why now for each candidate.
- The brief must include a compact Signal-to-Alpha investment logic section.
- The brief must include mapping, not only conclusions.
- If mapping evidence is weak, say so clearly and mark it `待补充`.
- Do not repeat the same thesis, ticker, catalyst, or evidence gap across sections.
- The brief must reference its route artifact.
- The brief must state one primary core skill and zero to two auxiliary core skills.
- The brief must include a compact report evaluation summary.
- The brief must produce validation tasks that can be converted into `validation_tasks.jsonl`.
