# Skill 001 报告：AI 产业案例蒸馏

## 范围

- 使用 skill：Skill 001 白毛女蒸馏
- 输入数据：`/Users/pangpatrick/Desktop/research_data/system_index/category_index/ai.jsonl`
- 使用记录数：59 条本地记录
- 是否重新采集外部数据：否
- 输出类型：思考方式蒸馏，不是最终投资建议

## 案例定义

- 案例名称：AI 从叙事交易转向物理基础设施和资本开支瓶颈
- 数据来源：本地 AI system index
- 时间窗口：2026 年 7 月本地记录
- 验证状态：混合。SemiAnalysis 和 priority account 记录有较高参考价值；大量 X search result 仍属于 `待验证`；推广类 ticker 列表视为低质量噪音。

## 核心蒸馏

这份 AI 数据包最有价值的地方，不是证明“AI 应用在增长”，而是揭示了一个更可复用的研究模式：

```text
AI 模型需求
-> 计算集群
-> 数据中心规模
-> 电力和冷却
-> HBM / DRAM / 先进封装 / foundry
-> 融资和 capex 承受能力
-> 股票市场预期差
```

真正值得沉淀的思考动作是：不要从热门 ticker 出发，而是从 AI workload 对物理系统提出的新要求倒推产业链。

## 展现出的思考技能

### 1. 叙事重构

- 这个案例教什么：表面标签是 AI，但可投资的问题越来越变成“谁控制 AI 扩张背后的稀缺物理层和融资层”。
- 可复用规则：当一个主题变拥挤时，从终端叙事回到基础设施需求。
- 案例模式：Meta superintelligence、Google capex、Amazon 债券融资、HBM / AI chip 记录，看似分散，实际上都指向同一个资本密集型 AI 基建周期。
- 常见错误：只把 AI 当成软件渗透率故事。

### 2. 反向产业链映射

- 这个案例教什么：最强信号不是单一公司，而是一串约束。
- 可复用规则：

```text
终端需求
-> 系统要求
-> 被压迫的子系统
-> 受限供应商
-> 需要验证的财务指标
```

- 案例模式：AI training / inference 需求拉动 GPU、HBM、先进封装、网络、数据中心电力和债券融资。
- 常见错误：研究停在 Nvidia 或明显 GPU 赢家。

### 3. 市场盲点识别

- 这个案例教什么：明显赢家可能已经被充分理解，真正有价值的是二阶影响、成本承担者和被忽略的卡点。
- 可复用规则：每看到一个明显受益方，都要问谁承担下一层成本、交付延迟或电力约束。
- 案例模式：本地数据里出现“Micron / HBM 交易可能对 Apple 形成二阶成本压力”的信号。这个观点仍待验证，但它是一个好的盲点假设。
- 常见错误：把每个 ticker mention 都变成股票池。

### 4. 共识和噪音分离

- 这个案例教什么：AI 数据包里高价值信号和明显推广噪音混在一起。
- 可复用规则：不能只看 engagement 或 final score，必须先判断内容是否有研究逻辑。
- 案例模式：重复出现的 WhatsApp 群推广帖虽然包含 AI ticker，但几乎没有研究价值。
- 常见错误：把关键词密度当成研究质量。

### 5. 财务验证桥梁

- 这个案例教什么：技术压力必须转化成可验证的财务行项目。
- 可复用规则：

```text
基础设施压力
-> capex / 债券发行 / revenue per MW / HBM pricing / FCF / guidance revision
-> 股票预期差
```

- 案例模式：Meta 5GW 数据中心扩张、Big Tech 债券融资、半导体 FCF 预期，都需要后续用 filings、earnings call、capex guidance 验证。
- 常见错误：把有趣的技术信号或社媒信号直接当成财务事实。

## 不应该沉淀的东西

- 不沉淀推广类 ticker 列表。
- 不把未经验证的 Micron / SK Hynix 数字当事实。
- 不把“AI 股票上涨”当研究洞察。
- 不把 SemiAnalysis 的技术判断直接转成股票结论。
- 不假设所有 AI capex 都能创造价值。数据本身也在提示：Search、Cloud、Gemini、GPU cluster 是否能把 capex 转成 durable return，是核心问题。

## 下一步路由

- 可能使用的行业框架：AI infrastructure / semiconductor / datacenter / memory / cloud capex。
- 最适合下一步接的 skill：Skill 004 先做稀缺层排序，再用 Skill 002 做技术约束，再用 Skill 003 做公司层面投研。
- 仍然 `待验证`：
  - Meta 5GW / $50B Louisiana 扩张细节。
  - Google 2026 capex guidance。
  - Big Tech 2026 投资级债券发行金额。
  - SK Hynix ADR / Nasdaq listing 和股价波动。
  - 搜索结果里关于 Micron revenue、net income、guide 的数字。
- 仍然 `待补充`：
  - 官方 earnings call、filings、capex 表、债券发行记录、供应商评论。

## 对 Skill 001 的评价

Skill 001 很擅长提炼“AI 主题 -> 物理基础设施瓶颈 -> 财务验证”的思考方式。它的问题是天然偏方法论，不是最适合直接生成 PM 可读投研报告的主力 skill。
