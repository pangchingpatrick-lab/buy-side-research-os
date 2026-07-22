# Report Template

Use this template for a Chinese buy-side insight report generated from runtime `system_index` records.

The final report must be in Chinese. It must be useful for a PM and must not read like a generic industry article.

The report should be generated from:

- `/Users/pangpatrick/Desktop/research_data/system_index`
- a context packet produced by `scripts/build_data_context.rb`
- `../../../skill_hub/router.md`
- selected files from `../../../skill_hub/core_skills/`
- selected files from `../../../skill_hub/thinking_skills/` or `../../../skill_hub/research_methodologies/`
- selected files from `../../../skill_hub/industry_frameworks/`
- selected files from `../../../skill_hub/analysis_methods/`
- selected files from `../../../skill_hub/report_templates/`
- `references/validation_loop.md`

```markdown
# [Topic] 买方洞察报告

生成日期：YYYY-MM-DD
输入数据：/Users/pangpatrick/Desktop/research_data/system_index
路由结果：skill_hub/router.md -> [selected Skill Hub files]
重要说明：X / HN / Product Hunt 是早期信号，不是最终 proof。未验证信息均标记为 `待验证`，缺失数据标记为 `待补充`。

## 1. 核心结论

用 3 到 5 个 bullet points 写清楚投资判断。不要写泛泛行业总结。

- 投资判断：Long candidate / Watchlist / Too early / Need more evidence / Avoid / Short candidate
- 核心变化：
- 为什么现在重要：
- 主要受益或受损公司：
- 最大不确定性：

## 2. 研究问题

- 本报告回答的问题：
- 为什么现在需要回答：
- 这个问题会影响什么投资决策：
- 当前证据是否足够：是 / 否 / 部分足够

## 3. X早期信号

包括来自 X / Hacker News / Product Hunt 的关键早期信号。只放高质量信号，弱信号放入 `待观察 / 附录`。

| 来源账号 / 作者 | 平台 | 原始信号 | 为什么重要 | 相关公司 / 产品 / 技术 | 信号分数 | 验证状态 |
| --- | --- | --- | --- | --- | --- | --- |
| | X / HN / Product Hunt | | | | /25 | 早期信号，待验证 |

### 待观察 / 附录信号

| 来源 | 信号 | 为什么不进入核心论证 |
| --- | --- | --- |
| | | |

## 4. 财务与公开数据验证

用公司文件、电话会、年报、季报、投资者材料、财务数据库或其他高可信来源验证早期信号。

| 证据来源 | 来源类型 | 日期 | 验证了什么 | 相关公司 | 可信度 | 验证状态 |
| --- | --- | --- | --- | --- | --- | --- |
| | Company filing / earnings call / annual report / quarterly report / investor presentation / financial database | | | | /5 | 待补充 |

### 仍未验证的关键 claims

-

## 5. 买方分析逻辑

用 `signal -> financial impact -> consensus gap -> investment implication` 的链条写，不要只描述行业趋势。

### 分析链条 A：[Signal cluster name]

- Signal：
- Financial impact：
- Consensus gap：
- Investment implication：
- Evidence quality：已验证 / 部分验证 / 待验证
- Missing data：

### 分析链条 B：[Signal cluster name]

- Signal：
- Financial impact：
- Consensus gap：
- Investment implication：
- Evidence quality：已验证 / 部分验证 / 待验证
- Missing data：

## 6. 公司映射与排序

按受益或受损强度排序。不要添加没有证据支持的 ticker-level claims。

| 排序 | 公司 | Ticker | 分类 | 价值链角色 | 受益 / 受损机制 | 证据强度 | 验证状态 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | | | Primary beneficiary | | | 高 / 中 / 低 | 待补充 |
| 2 | | | Secondary beneficiary | | | 高 / 中 / 低 | 待补充 |
| 3 | | | Indirect beneficiary | | | 高 / 中 / 低 | 待补充 |
| 4 | | | Possible loser | | | 高 / 中 / 低 | 待补充 |

## 7. 市场共识 vs 非共识观点

- 市场可能相信：
- 市场可能已经 price in 的部分：
- 我们的非共识观点：
- 市场可能错在哪里：
- 需要验证的市场预期数据：

若缺少市场定价或 consensus 数据，写 `市场预期待验证`。

## 8. 投资判断

必须五选一：

- `Long candidate`
- `Watchlist`
- `Too early / Need more evidence`
- `Avoid`
- `Short candidate`

填写：

- 最终判断：
- 判断依据：
- 需要满足什么条件才能升级：
- 需要出现什么证据才会降级：
- 适合 PM 的下一步动作：

## 9. 风险与证伪条件

- 什么证据会 invalidate thesis：
- 什么公司数据会改变 view：
- 什么市场数据会显示已经 price in：
- 什么客户、订单、margin、capex 或竞争数据会削弱判断：

## 10. 下一轮验证问题

这些问题应送回 data collection layer，作为下一轮采集和验证任务。

| 问题 | 为什么重要 | 下一轮应查数据源 | 预期证据 |
| --- | --- | --- | --- |
| | | X / filings / earnings calls / annual reports / quarterly reports / investor presentations / financial databases / broker reports | |

## 11. 数据来源与可信度说明

### Verified facts

| Fact | Source | Credibility | Notes |
| --- | --- | --- | --- |
| | | /5 | |

### Unverified claims

| Claim | Source | Why it matters | Verification status |
| --- | --- | --- | --- |
| | | | 待验证 |

### Data gaps

| Missing data | Why it matters | Best source to check next |
| --- | --- | --- |
| | | |
```

## Report Quality Rules

- Write in Chinese.
- Lead with conclusion.
- Make a clear investment judgment.
- Do not write a generic industry article.
- Tie signals to financial impact and company exposure.
- Separate verified facts from unverified claims.
- Mark missing data as `待补充`.
- Mark unverified claims as `待验证`.
- Include next-round validation questions.
