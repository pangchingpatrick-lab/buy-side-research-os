# Full System Report Template

Use this template when the user asks for a complete Research OS report, not merely a short brief.

The final report should read like a top hedge-fund internal investment memo, not a Research OS run log.

The report should be Chinese by default.

Target length: about 8-10 PDF pages. Compress by removing repetition and process narration, not by deleting investment content.

## Five Questions The Report Must Answer

Every complete report must answer these five questions near the front and continue to respect them through the body:

1. 市场共识是什么？
2. 我们的非共识观点是什么？
3. 为什么现在是关键时间点？
4. 哪家公司最能受益，为什么是它而不是同行？
5. PM 现在应该采取什么行动？

## Compression Standard

Delete or move to appendix:

- repeated descriptions of the same thesis, ticker, catalyst, or evidence gap across multiple sections
- process-only content that shows how the Research OS ran but adds no investment information
- repeated versions of `需要验证`, `继续跟踪`, `证据不足`, or similar caveats
- obvious reasoning that a PM can infer without help
- mechanical duplicate tables that restate the same ticker / thesis / catalyst mapping

Preserve:

- 核心瓶颈迁移逻辑
- Memory / HBM / interconnect
- Optical / networking / data movement
- Burn-in / test / silicon photonics
- Rack-scale / liquid cooling / power
- Cloud financing / utilization / counterparty risk
- 财务传导指标
- Market expectation / price-in
- Primary evidence gap
- Catalyst
- Invalidation
- Company-specific risk
- PM action state
- MRVL、MU、AEHR、SMCI、CRWV、NBIS、ORCL 的核心判断 when they are material to the report
- the principle that social-media evidence is downgraded unless verified by stronger sources
- the reflection that `AI 很强` is not a variant view

## Required Output Structure

```markdown
# [主题] 买方研究报告

## 1. 核心结论

- 边际变化：
- PM 行动状态：Long / Short / Watch / Ignore / Needs More Work
- 核心 thesis：
- 研究优先级：
- 最大不确定性：
- 当前最重要的 3-5 个股票表达：

## 2. Consensus / Our View / Why Now / Alpha Candidate Basket

This section is mandatory. It must answer the PM's "然后呢？" question before the report enters evidence tables.

Do not repeat true-but-consensus statements such as `AI demand is growing`, `HBM is important`, `optical is important`, or `cooling is important` unless they are used to define what the market already believes.

Use this exact structure:

```markdown
### Consensus（市场观点）

- 市场现在大概率相信什么？
- 哪些受益方向可能已经 crowded / priced in？
- 这个共识依赖什么证据或叙事？

### Our View（我们的非共识观点）

- 我们和市场的差异是什么？
- Alpha 会从哪里迁移到哪里？
- 市场可能低估的是 timing、magnitude、duration、margin、beneficiary mapping，还是 risk？

### Why This Can Make Money

- 为什么这个差异可能转化成股票收益？
- 哪些财务 line items 会变化？
- 什么 catalyst 会让市场重新定价？
- 哪些证据会证明我们错了？

### 3-5 个 Alpha Candidate

| Rank | Ticker / Company | Linked Variant View | Why This / Why Not Peers | Why Now / Timing Catalyst | Why It Can Make Money | What Market May Miss | Catalyst | Key Invalidation | Action State |
| ---: | --- | --- | --- | --- | --- | --- | --- | --- | --- |
```

Rules:

- Output 3-5 candidates for full reports when the topic has investable listed-company exposure.
- Each candidate must map to the variant view. Do not include a ticker merely because it belongs to the industry.
- A consensus winner can be included only when the report states a specific non-consensus angle beyond the broad theme.
- Each candidate must answer `为什么是它？为什么不是 peers/proxies？`.
- This rule applies to every named ticker. MRVL vs AVGO/CRDO/ANET/COHR and AEHR vs ordinary ATE are examples only, not special cases.
- For any candidate, build the relevant peer/proxy set for that thesis and explain why the selected ticker is the better, cleaner, more levered, earlier, or more mispriced expression.
- Each candidate must answer `为什么现在？为什么不是去年或明年？`. Timing is part of catalyst quality and stock selection.
- A thesis with no timing catalyst can remain `Watchlist` or `Need more evidence`, but should not be framed as a high-conviction alpha candidate.
- If fewer than three candidates are supportable from local data, write fewer and explain why forcing more names would lower report quality.
- Separate risk/context watches from alpha candidates. Do not mix them in the 3-5 candidate basket.

## 3. 数据基础与证据分层（Compressed）

| 证据 | 来源 | 证据类型 | 验证状态 | 投资含义 |
| --- | --- | --- | --- | --- |

Rules:

- This section should prove what the report is based on; it should not become a source dump.
- Consolidate repeated `待验证` language into one `Primary evidence gap` paragraph.
- Social-media evidence, including X / a16z / public specialist commentary, should be treated as lead or context unless supported by stronger evidence such as filings, calls, company IR, pricing, orders, backlog, customer proof, or market reaction.

## 4. 思考路径与主导框架

- primary core skill:
- selected thinking skills:
- selected methodology:
- 为什么这些思考方式主导本报告：
- industry framework support:

Rules:

- Thinking methods must dominate the report logic.
- Industry frameworks are support checklists, not the report skeleton.

## 5. 买方投资逻辑（Signal-to-Alpha）

This section is mandatory for full system reports and should carry the main body of the memo.

Do not use a table-only summary. Expand the investment logic into 3-6 signal clusters labeled `Signal Cluster A/B/C...`.

Each signal cluster must use this exact buy-side logic chain:

```markdown
### Signal Cluster [A/B/C]：[一句话说明投资逻辑]

**Consensus**：市场大概率已经相信什么？

**Our View**：我们的非共识判断是什么？

**Signal**：本地数据中出现了什么新信号？

**Mechanism**：为什么这个信号会改变产业链、供需、单位经济、竞争格局或风险定价？

**Beneficiary Mapping**：

- 直接受益：
- 间接受益：
- 潜在受损 / 风险暴露：

**Why This Ticker / Why Not Peers**：如果本 cluster 提出具体标的，必须说明为什么这个标的是该 thesis 的最佳或较优股票表达，并比较主要 peers / proxies。不要只介绍公司业务事实。

**Earnings Impact**：这个逻辑会如何影响 revenue、orders、backlog、ASP、gross margin、opex、capex、depreciation、EPS、FCF 或 valuation？

**Market Expectation / Price-In**：市场可能已经 price in 什么？可能低估、误判或尚未充分 price in 什么？如果数据不足，标注 price-in confidence 为低/中/高。

**Primary Evidence Gap**：只写最关键的一手证据缺口，不要重复泛泛的 `继续验证`。

**Why Now (Timing)**：为什么这个 thesis 现在进入可投资窗口？为什么不是去年？为什么不是明年？必须指出产品周期、部署节奏、订单/ASP/guide 变化、capex 节点、客户验证、监管/政策、价格反应或财报日历中的具体 timing signal。

**Catalyst**：什么事件会让市场重新定价？Catalyst 必须和 Why Now 对齐，不能只是泛泛写“长期需求增长”。

**Invalidation / Company-specific Risk**：什么证据会推翻这个 thesis？公司自身有什么特定风险？

**PM Action**：PM 下一步应该 monitor、research further、build watchlist、avoid，还是升级为 candidate？
```

At the end of this section, include a short investment logic summary that ranks the signal clusters by:

```text
scarcity -> financial transmission -> market expectation gap -> validation urgency
```

## 6. Company / Peer Displacement Map

| 公司 / ticker | 角色 | Linked Thesis | Peer / Proxy Set | Why This / Why Not Peers | 财务传导 | Price-In | Catalyst / Why Now | Invalidation / Risk | PM Action |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |

Rules:

- This section should add peer displacement and stock-expression judgment. Do not restate the same company facts already written in Signal-to-Alpha.
- MRVL、MU、AEHR、SMCI、CRWV、NBIS、ORCL 的核心判断 must be preserved when material, but each should appear once with the incremental reason it belongs in the map.

## 7. Financial Validation / Catalyst / PM Action

- 财务传导指标：
- Primary evidence gap：
- Catalyst / Why Now：
- Invalidation：
- Company-specific risk：
- PM action state：
- 一个月后验证方式：

Rules:

- Consolidate validation items here instead of scattering similar caveats across the report.
- The PM action must be explicit: buy candidate, watchlist, avoid, deep research, position sizing pending, or no action.
- If the report recommends specific names, record the price/date basis when available and define the one-month scorecard.

## 8. Appendix：Research Event Audit / Source Notes

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

Appendix rule:

- Keep event audit compact. It supports the memo; it should not become a second report.
- If the same event, ticker, or thesis already appears in the main body, only add source traceability or classification here.
```

## Writing Rules

- Start with the conclusion, not a process summary.
- Do not let the industry framework become the report skeleton.
- Show how the thinking skills changed the thesis.
- Use industry frameworks only to decide what to inspect.
- Use `待验证`, `待补充`, or `数据暂缺` instead of filling gaps with assumptions.
- Do not claim the market is wrong until the market's current expectation is described.
- Full reports must read like PM-facing investment memos, not Research OS execution logs.
- Full reports should target about 8-10 PDF pages unless the user asks otherwise.
- Full reports must answer: consensus, our variant view, why now, best beneficiaries versus peers, and PM action.
- Full reports must include a `Consensus / Our View / Why Now / Alpha Candidate Basket` section before evidence tables.
- The 3-5 alpha candidates must be derived from the variant view, not from generic industry exposure.
- Every thesis that names a ticker must answer why that ticker is the right expression versus relevant peers or proxies.
- A company description is not an investment argument. `Company does X` must become `Company is the better expression than A/B/C because...`.
- Every thesis and candidate must include a `Why Now (Timing)` answer as part of catalyst analysis.
- `Why Now` must answer why the idea matters now rather than last year or next year. Generic long-term tailwinds are insufficient.
- If early-signal sources are material, do not use them before assigning claim type, evidence type, ticker role, discovery stage, price-in status, and report use.
- Every report must include a serious invalidation path.
- The `买方投资逻辑（Signal-to-Alpha）` section must use explicit `Signal Cluster A/B/C...` subsections. A table alone is not acceptable for a buy-side report.
- Do not repeat the same thesis, ticker, catalyst, or evidence gap in multiple sections unless the later section adds new investment information.
- Keep the Research Event Audit and route details in appendix or artifacts; the main report should not explain system mechanics.
