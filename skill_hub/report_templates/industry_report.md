# Industry Report Template

Use this template for a full Chinese industry report.

The final output should read like a PM-facing investment memo, not an industry encyclopedia or Research OS run log. Target about 8-10 PDF pages unless the user asks for a longer report.

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
- 写出 3-5 条最强投资逻辑链，而不是泛泛行业趋势。
- 写出优先研究顺序，按“稀缺层级 + 财务传导”排序。
- 写出核心待验证点：哪些 claims 必须被 filings、earnings call、订单、backlog、pricing、capex guide、consensus 或 valuation comps 验证。

核心结论应接近这种表达质量：

```text
[行业/主题] 的边际变化，不是 [市场已知共识]，
而是 [新的稀缺层级 / 财务传导 / 价值迁移]。

买方初步判断：[主题] 仍值得跟踪，但不能泛化买入。
真正值得研究的是哪些公司能把 [行业变化] 转化为收入、订单、margin、FCF 或估值重估。
```

## 2. Consensus / Our View / Why Now / Alpha Candidate Basket

本节必须回答：

1. 市场共识是什么？
2. 我们的非共识观点是什么？
3. 为什么现在是关键时间点？
4. 哪家公司最能受益，为什么是它而不是同行？
5. PM 现在应该采取什么行动？

必须按以下顺序写：

```text
Consensus（市场观点）
-> Our View（我们的非共识观点）
-> Why Now（为什么现在）
-> Why This Can Make Money
-> 3-5 个 Alpha Candidate
```

候选标的必须是非共识观点的股票表达，而不是行业热度最高的公司列表。

| Rank | Ticker / Company | Linked Variant View | Why This / Why Not Peers | Why Now / Timing Catalyst | Why It Can Make Money | What Market May Miss | Catalyst | Key Invalidation | Action State |
| ---: | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| | | | | | | | |

## 3. 数据基础、证据分层与思考路径（Compressed）

用一个紧凑章节交代报告依据和方法，不要拆成多个重复章节。

- 选用的 thinking skills / methodology：
- 为什么这些思考方式主导本报告：
- 价值链映射：
- 公司 / ticker 暴露映射：
- 直接受益、间接受益、潜在受损方：
- 业务机制 -> 财务影响路径：
- 证据不足的映射节点：
- 社交媒体证据降级原则：

| 证据 | 来源 | 证据类型 | 验证状态 | 投资含义 |
| --- | --- | --- | --- | --- |

## 4. 买方投资逻辑（Signal-to-Alpha）

本节必须把前面的系统变化转成可投资逻辑。按 3-6 个 signal cluster 展开，每个 cluster 使用同一结构：

### Signal Cluster [A/B/C]：[一句话说明投资逻辑]

**Consensus**：市场大概率已经相信什么？

**Our View**：我们的非共识判断是什么？

**Signal**：本地数据中出现了什么新信号？

**Mechanism**：为什么这个信号会改变产业链、供需、单位经济或竞争格局？

**Beneficiary Mapping**：

- 直接受益：
- 间接受益：
- 潜在受损：

**Why This Ticker / Why Not Peers**：如果提出具体公司，必须解释为什么它比主要 peers / proxies 更适合作为这个 thesis 的股票表达。

**Earnings Impact**：这个逻辑会如何影响 revenue、orders、backlog、ASP、gross margin、opex、capex、depreciation、EPS、FCF 或 valuation？

**Market Expectation / Price-In**：市场大概率已经相信什么？可能低估/误判或尚未充分 price in 什么？

**Primary Evidence Gap**：只写最关键的一手证据缺口。

**Why Now (Timing)**：为什么现在进入可投资窗口？为什么不是去年或明年？指出产品周期、部署节奏、订单/ASP/guide 变化、capex 节点、客户验证、政策、价格反应或财报日历中的具体 timing signal。

**Catalyst**：什么事件会让市场重新定价？Catalyst 必须和 Why Now 对齐。

**Invalidation / Company-specific Risk**：什么证据会推翻这个 thesis？公司自身有什么特定风险？

**PM Action**：PM 下一步应该 monitor、research further、build watchlist、avoid，还是升级为 candidate？

本节禁止只写行业背景。每个 cluster 都必须完成从 signal 到 financial impact 的闭环。

## 5. Company / Peer Displacement Map

| 公司 / ticker | 角色 | Linked Thesis | Peer / Proxy Set | Why This / Why Not Peers | 财务传导 | Price-In | Catalyst / Why Now | Invalidation / Risk | PM Action |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |

## 6. Financial Validation

- revenue / orders / backlog:
- ASP / pricing:
- gross margin / opex:
- capex / depreciation:
- EPS / FCF / valuation:
- consensus / price-in data gap:

## 7. Catalyst / Invalidation / PM Action

- Catalyst / Why Now:
- Invalidation:
- Company-specific risk:
- PM action state:
- 一个月后验证方式:

## 8. Appendix：Research Event Audit / Source Notes

Use when early-signal sources materially support the report. Keep compact and avoid duplicating the main thesis.

## 9. Report Evaluation Summary / Validation Tasks
```

## Rules

- Write in Chinese.
- Target about 8-10 PDF pages for a full industry report unless the user asks otherwise.
- Lead with a PM-grade core conclusion: marginal change, investment judgment, core thesis, research priority, and verification points.
- Avoid generic industry summaries.
- Answer the five required PM questions near the front: consensus, our view, why now, best beneficiaries versus peers, and PM action.
- Include a mandatory `Consensus / Our View / Why Now / Alpha Candidate Basket` section after the core conclusion.
- Include a mandatory `买方投资逻辑（Signal-to-Alpha）` section after the candidate basket.
- Each signal cluster must include Signal, Mechanism, Beneficiary Mapping, Earnings Impact, Market Expectation, Evidence Gap, Why Now, Catalyst, Invalidation, and PM Action.
- The 3-5 alpha candidates must be tied to the variant view, not generic industry exposure.
- Every named candidate must answer why it is preferred versus relevant peers or proxies.
- Every named candidate must answer why now, not last year or next year.
- Thinking skills / methodology must dominate the report logic.
- Industry frameworks are supporting checklists, not the report's main skeleton.
- The report must include value-chain mapping, company mapping, beneficiary/loser mapping, and mechanism-to-financial mapping.
- Every conclusion must be traceable to source evidence.
- Missing data must be marked `待补充`.
- Unverified claims must be marked `待验证`.
- Do not repeat the same thesis, ticker, catalyst, or evidence gap across multiple sections.
- Preserve bottleneck migration logic, Memory/HBM/interconnect, Optical/networking/data movement, burn-in/test/silicon photonics, rack-scale/liquid cooling/power, cloud financing/utilization/counterparty risk, financial transmission metrics, market expectation/price-in, primary evidence gap, catalyst, invalidation, company-specific risk, PM action state, and material judgments on MRVL, MU, AEHR, SMCI, CRWV, NBIS, and ORCL.
- The report must reference its route artifact.
- The report must state one primary core skill and zero to two auxiliary core skills.
- The report must include a short evaluation summary using `skill_hub/evaluators/report_evaluator.md`.
- The report must include validation tasks that can be converted into `validation_tasks.jsonl`.
