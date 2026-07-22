# AI 产业四技能 Benchmark 评分

## 输入数据

- 行业包：`ai`
- 本地数据源：`/Users/pangpatrick/Desktop/research_data/system_index/category_index/ai.jsonl`
- 使用记录数：59 条
- 数据来源结构：
  - `search_result`：29 条
  - `priority_account`：18 条
  - `whitelist_account`：11 条
  - `signal_markdown`：1 条
- 是否重新采集外部数据：否

## 数据观察

这份 AI 数据包有价值，但噪音也不少。

高价值信号主要集中在：

- SemiAnalysis 关于 Meta superintelligence / compute ramp 的长文信号。
- Meta 数据中心扩张、Hyperion、Louisiana、5GW、$50B+ 相关信号。
- Big Tech 为 AI capex 融资，债券发行和资本开支压力上升。
- HBM / DRAM / Micron / SK Hynix / 存储价格和 AI memory trade。
- TSM 作为 AI 芯片需求和先进制程景气度的观察窗口。
- Nvidia Rubin / B300 / compute tray / 集群部署可靠性。

低价值信号主要是：

- 重复出现的 WhatsApp 群推广帖。
- 只有 ticker 列表、没有研究逻辑的帖子。
- 只讲涨跌、不解释原因的市场短评。
- 只有 AI 关键词、但没有产业链或投资含义的内容。

所以这次 benchmark 的关键不是“谁写得最长”，而是谁最能做到三件事：

1. 保留真正有研究价值的 AI 基础设施信号。
2. 把关键词噪音降权。
3. 把数据转成下一步可执行的研究路线。

## 评分标准

| 维度 | 权重 |
| --- | ---: |
| 是否严格使用本地数据 | 20 |
| 是否产生非共识洞察 | 20 |
| 产业链 / 公司映射能力 | 20 |
| 财务验证路径 | 15 |
| 风险和反证意识 | 10 |
| PM 可读性和可执行性 | 15 |
| 合计 | 100 |

## 总分

| Skill | 分数 | 最适合用途 | 主要短板 |
| --- | ---: | --- | --- |
| Skill 001 白毛女蒸馏 | 74 | 提炼可复用的思考方式 | 太偏方法论，不像最终投研报告 |
| Skill 002 SemiAnalysis 蒸馏 | 84 | 技术基础设施和硬件约束分析 | PM 视角、估值和公司排序不够完整 |
| Skill 003 Equity Research Playbook | 82 | 把信号转成公司研究问题和验证清单 | 容易变成 ticker 列表，需要先筛稀缺层 |
| Skill 004 Serenity 产业链卡点 | 90 | AI 产业第一遍研究和稀缺层排序 | 还需要 Skill 002/003 补技术证明和最终公司报告 |

## 逐项评价

### Skill 001：白毛女蒸馏，74 分

优点：

- 能把 AI 从“热门叙事”重构成“物理基础设施和资本开支约束”。
- 能提炼出反向产业链映射、市场盲点、财务验证桥梁等思考动作。
- 对系统长期沉淀思考方式有用。

短板：

- 输出更像“方法论提炼”，不是直接可用的行业投研报告。
- 不自然地产生产业链层级排序。
- 不自然地产生公司优先级。

结论：

Skill 001 适合作为元思考层，不适合作为 AI 产业日报告的主力写手。

### Skill 002：SemiAnalysis 蒸馏，84 分

优点：

- 最擅长解释 AI 数据背后的技术机制。
- 能把问题从“AI 很热”推到 workload、GPU、HBM、先进封装、interconnect、电力、数据中心。
- 对 HBM、CPO、先进封装、GPU cluster、AI datacenter 特别有用。

短板：

- 对估值、预期差、PM 可读性处理不如 Skill 003。
- 技术解释很强，但不天然完成“哪家公司最值得研究”的排序。

结论：

Skill 002 是 AI 基础设施研究里最重要的技术搭档，最好和 Skill 004 配合。

### Skill 003：Equity Research Playbook，82 分

优点：

- 最接近传统买方研究流程。
- 能把数据转成公司研究问题、earnings checklist、验证计划。
- 适合后续写成 PM 可以直接看的公司报告。

短板：

- 当前 AI 数据里 ticker 很多，如果直接跑 Skill 003，容易变成宽泛股票池。
- 如果没有 Skill 004 先筛“真正的稀缺层”，它可能会把“AI 相关”误当成“有投资价值”。
- 需要更多一手数据才能形成最终投资结论。

结论：

Skill 003 适合放在后面，用来把产业链结论转成公司层面的投研报告。

### Skill 004：Serenity 产业链卡点，90 分

优点：

- 最适合当前 AI 数据，因为这份数据的核心就是 AI 基础设施稀缺层。
- 它先问“系统变化是什么”，再问“哪些层级变紧”，最后才问“哪些公司靠近这些层级”。
- 能有效过滤 AI 关键词噪音。
- 给出的研究路线最清楚：数据中心电力、HBM / 存储、先进封装 / interconnect、foundry、云算力变现、融资能力。

短板：

- 它生成的是“产业链卡点地图”，不是完整最终投资报告。
- 还需要 Skill 002 做技术证明，Skill 003 做公司和财务层面的落地。

结论：

Skill 004 是本次 AI 产业第一遍研究的赢家。

## 最终排序

1. Skill 004 Serenity 产业链卡点：最适合作为 AI 产业第一遍研究入口。
2. Skill 002 SemiAnalysis 蒸馏：最适合补技术约束和硬件逻辑。
3. Skill 003 Equity Research Playbook：最适合写最终 PM / 投研报告。
4. Skill 001 白毛女蒸馏：最适合沉淀思考方式。

## 推荐 AI 产业研究流程

以后 AI 产业不要四个 skill 平均用力。更合理的顺序是：

```text
本地 AI 数据包
-> Skill 004：先找产业链稀缺层
-> Skill 002：验证技术约束是否真实
-> Skill 003：转成公司层面 PM 报告
-> Skill 001：遇到特别高质量案例时，再沉淀可复用思考方式
```

## 实际结论

这次 AI 数据说明：

```text
AI 不是一个简单 ticker 主题。
它正在变成一个围绕数据中心电力、存储带宽、先进制造、interconnect、云算力变现和融资能力的稀缺层问题。
```

所以第一层研究应该先用 Skill 004，而不是直接用 Skill 003 写股票报告。
