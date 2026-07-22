# Skill 003 报告：AI Equity Research Playbook

## 范围

- 使用 skill：Skill 003 Equity Research Playbook
- 输入数据：`/Users/pangpatrick/Desktop/research_data/system_index/category_index/ai.jsonl`
- 使用记录数：59 条本地记录
- 是否重新采集外部数据：否
- 输出类型：基于本地信号的 PM / 买方研究路径

## 核心观点

本地 AI 数据支持一个初步研究判断：

```text
AI infrastructure 仍然是资本密集型公共股票主题，
但当前数据还不足以直接形成最终投资建议。
```

更合适的输出是研究路线和验证清单：

```text
AI capex cycle
-> 基础设施层级映射
-> 公司 exposure
-> 需要验证的财务行项目
-> 预期差
```

当前最高质量信号集中在 Meta / Google capex、HBM / memory、TSM 作为 AI cycle 指标，以及 Nvidia / Micron / Broadcom / Applied Materials 的 FCF 预期。最低质量信号是 ticker 列表、推广帖和纯价格评论。

## 证据库存

| 信号组 | 本地证据 | 证据质量 | 研究用途 |
| --- | --- | --- | --- |
| Meta compute ramp | SemiAnalysis markdown；Meta Louisiana / Hyperion 数据中心帖子 | 中等 | 建 capex-to-capacity 模型。 |
| Big Tech 融资 | Amazon / Big Tech 债券发行和 AI capex 帖子 | 弱到中等 | 验证 AI capex 是否依赖资产负债表扩张。 |
| Google capex tension | 搜索结果里关于 2026 capex guide 的帖子 | 弱 | 生成验证请求，不直接当结论。 |
| HBM / memory | Micron、SK Hynix、DRAM / HBM pricing、AI memory trade | 主题中等，单条数字较弱 | 跟踪 memory earnings、guide、pricing、客户结构。 |
| TSM AI-cycle indicator | TSM earnings watch 帖子 | 弱到中等 | 用 TSM print 交叉验证 AI chip 需求。 |
| Advanced infra / packaging | SemiAnalysis VR NVL72 compute tray；optical / CPO ticker | 中等技术信号 | 研究可靠性和部署速度在哪里创造价值。 |
| 市场噪音 | 重复 WhatsApp 帖、ticker 列表 | 低 | 从 thesis 中剔除。 |

## 主题定义

可投资主题不应是泛泛的“AI adoption”，而应该更精确地定义为：

```text
AI infrastructure cycle 正在从单纯 GPU 短缺，
扩展为横跨数据中心容量、存储带宽、先进制造、
interconnect、电力和融资能力的全栈资本周期。
```

这个主题只有在能落到以下指标时，才有投资意义：

- revenue acceleration
- backlog / order visibility
- pricing power
- gross margin / FCF expansion
- capex ROI
- valuation expectation gap

## 公司层面研究图

| 公司 / 组别 | 数据中的角色 | 可能的 equity question | 需要验证 |
| --- | --- | --- | --- |
| Meta | AI compute 买方和数据中心建设者 | capex 是在创造长期 AI 产品 / 云经济，还是只是支出强度？ | 官方项目 capex、MW timeline、AI monetization、depreciation burden。 |
| Google / Alphabet | Search、Cloud、Gemini、capex spender | AI capex 能否防守 Search 并改善 Cloud return？ | capex guide、Cloud growth、AI monetization、margin impact。 |
| Amazon / AWS | Cloud capex 和 AI infra spender | AWS AI capex 是否带来收入增长和资本回报？ | AWS growth、capex、backlog、客户需求。 |
| Nvidia | 主要 accelerator supplier | 需求是否仍然供不应求，margin 是否可持续？ | Datacenter revenue、Rubin / B300 ramp、allocation、competition。 |
| Micron / SK Hynix / Samsung | Memory / HBM supplier | AI memory pricing 是否足够持久，能推动 earnings upgrade？ | HBM mix、pricing、capacity、qualification、margin。 |
| TSM | Advanced foundry / packaging gatekeeper | TSM commentary 是否确认 AI chip demand 和 capacity constraint？ | Revenue by platform、capex、advanced packaging、customer concentration。 |
| Broadcom / Marvell / optical names | Custom silicon、networking、interconnect | AI cluster scale 是否创造长期 interconnect / custom silicon 赢家？ | Backlog、design wins、gross margin、customer mix。 |
| Applied Materials / Lam / ASML | Equipment suppliers | AI advanced manufacturing 是否支撑设备需求？ | Order book、China / export risk、foundry 和 memory capex。 |
| Vertiv / Dell / SMCI / Sanmina 类 | Datacenter infra / systems / EMS | 哪些公司真正 capture value，哪些只是 volume pass-through？ | Backlog、margin、customer concentration、execution quality。 |

## Thesis 和 Anti-thesis

### Thesis

AI infrastructure spending 正在从 GPU 扩展为多层资本周期。当前本地数据提示，公共股票研究应重点关注能把 AI demand 转化为可观察财务升级的公司，尤其是 memory、foundry、datacenter infrastructure 和 custom silicon。

### Anti-thesis

数据也有明显风险：

- 许多记录只是 X 帖，不是一手证据。
- 部分数字看起来需要严肃验证。
- 如果 AI monetization 落后于折旧和融资成本，AI capex 可能变成负担。
- 明显 AI winner 可能已经 price in 乐观路径。
- 搜索结果噪音会让弱 ticker 看起来很重要。

## 预期差

最好的预期差不是“AI demand strong”，这个已经是共识。更好的问题是：

- 市场是否低估了电力 / 数据中心 capacity 变成瓶颈的速度？
- 市场是否低估了 HBM / memory pricing 对 earnings 的传导？
- 市场是否高估了只有 AI exposure、但缺乏价值捕获的公司？
- 市场是否低估了 hyperscaler capex / depreciation / financing drag？
- 市场是否还把部分 component supplier 当周期股，而不是 structural bottleneck supplier？

## 监控清单

后续写最终投资报告前，需要跟踪：

- Hyperscaler capex guide、depreciation、lease obligations 和 AI revenue。
- 数据中心 MW / GW capacity、并网日期、电力协议、建设延迟。
- HBM mix、DRAM pricing、客户 qualification、memory gross margin。
- TSM advanced packaging 和 AI revenue commentary。
- Nvidia / AMD accelerator roadmap、backlog、margin。
- Optical / custom silicon design wins 和 backlog。
- 债券发行、利息成本、AI capex 对资产负债表影响。

## 对 Skill 003 的评价

Skill 003 最像传统买方研究，适合把本地信号转成公司问题和验证清单。它的问题是，在 AI 这种 ticker 很多的数据包里，如果没有 Skill 004 先做稀缺层筛选，容易变成宽泛股票池。
