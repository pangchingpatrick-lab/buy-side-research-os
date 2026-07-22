# Skill 002 报告：AI 基础设施技术约束图

## 范围

- 使用 skill：Skill 002 SemiAnalysis 蒸馏
- 输入数据：`/Users/pangpatrick/Desktop/research_data/system_index/category_index/ai.jsonl`
- 使用记录数：59 条本地记录
- 是否重新采集外部数据：否
- 输出类型：基于本地证据的技术基础设施推理

## 工作假设

这份 AI 数据包最适合被理解成一份 AI infrastructure scaling 数据包，而不是泛泛的 AI 市场数据包。

核心技术问题是：

```text
当 hyperscaler 扩张 AI cluster 时，
AI stack 里的哪个部分会变成真正的约束？
```

本地数据主要集中在四类技术压力：

- 数据中心规模和电力可得性。
- HBM / DRAM 的存储带宽和价格。
- 先进 compute tray、interconnect、封装和可靠性。
- foundry 和 AI chip 供应链能力。

## 从 Workload 到 Hardware

### Workload 信号

本地数据反复出现更大 AI cluster、更快模型迭代、更激进 superintelligence compute ramp 的信号。最强的长文信号来自 SemiAnalysis 关于 Meta superintelligence 的 markdown 记录，它把 Meta 的 AI 推进描述成一次重大 compute ramp，而不是单纯产品策略。

### Hardware 含义

AI workload 可能同时受到以下约束：

| 约束类型 | 本地证据 | 解读 |
| --- | --- | --- |
| Compute scale | Nvidia / Rubin / B300、TSM AI chip earnings watch | 算力仍然是 AI stack 的显性中心。 |
| Memory bandwidth / capacity | HBM、DRAM、Micron、SK Hynix 记录 | 存储正在从背景组件变成核心约束。 |
| Datacenter power and cooling | Meta 5GW / $50B 数据中心信号、AI capex 记录 | 电力和站点规模开始变成一阶问题。 |
| Networking / assembly reliability | SemiAnalysis 关于 VR NVL72 compute tray 去线缆化的记录 | cluster 可靠性和装配效率会影响部署速度。 |
| Financing | Big Tech 债券发行 / capex 记录 | 物理扩张依赖资产负债表和债券市场承受能力。 |

## 系统架构拆解

这份数据提示，AI 基础设施应该先拆成层级，再映射公司：

```text
AI model workload
-> GPU / accelerator
-> HBM 和 memory subsystem
-> package / interconnect / compute tray
-> server / rack
-> networking
-> datacenter power and cooling
-> cloud capacity monetization
-> financing and capex return
```

这很重要，因为很多帖子都提到“AI”或“Nvidia”，但真正的投资压力可能出现在别的层。

## 物理约束识别

### 约束 1：数据中心电力和站点规模

本地信号：

- Meta Hyperion / Louisiana 扩张帖子提到 2GW 到 5GW，以及从约 $27B 到 $50B+ 的投资规模。
- SemiAnalysis markdown 强调 Meta 激进 compute ramp。
- Big Tech 债券融资帖子显示 AI 基础设施需要巨额资本支持。

技术解读：

- 系统变量不再只是 GPU 供应，而是电力、并网、许可、冷却、土地和建设执行。
- 需要验证的问题是：宣布的 capex 能否按时转化为可用 compute capacity。

证据强度：中等本地信号，需要官方确认。

### 约束 2：HBM / DRAM / Memory Economics

本地信号：

- 多条记录集中在 Micron、SK Hynix、HBM、DRAM、memory pricing。
- 有记录提出 AI memory 强势可能给 Apple 带来二阶成本压力。
- SK Hynix ADR / Nasdaq 相关记录和 AI memory 股价波动说明市场正在把存储视为 AI bottleneck。

技术解读：

- AI training 和 inference 不只是 compute-bound，也可能 memory-bandwidth-bound。
- 如果 HBM / DRAM 供应商提价或把产能分配给 AI，非 AI 客户可能承受成本压力。

证据强度：主题层面中等，具体数字需要验证。

### 约束 3：封装、Interconnect 和装配可靠性

本地信号：

- SemiAnalysis 关于 VR NVL72 compute tray 的记录：重新设计的 tray 去掉线缆，而线缆曾是 GB200 / GB300 assembly 的 failure point，并显著降低装配时间。

技术解读：

- 到 cluster scale 时，可靠性和装配吞吐量本身就是价值驱动因素。
- 一个机械结构或 interconnect 改动，可能影响部署速度、维修成本和有效算力交付。
- 这支持一个更大的规则：瓶颈不一定只在 silicon，也可能在 system integration 和 packaging。

证据强度：中等专业信号，需要产品级验证。

### 约束 4：Foundry / Advanced Node Capacity

本地信号：

- TSM earnings watch 被描述成 AI economy 的 health check。
- 记录提到 TSM 为多个 advanced AI chip 客户生产。

技术解读：

- 先进 foundry、advanced packaging 和客户产能分配仍然是 AI 芯片上游 gatekeeper。
- TSM earnings 和 capex commentary 应被视为系统级指标，而不是单一公司事件。

证据强度：弱到中等，需要 earnings transcript / 官方数据。

## 供应商差异化

本地数据支持一个初步 supplier map：

| 层级 | 涉及公司 | 需要验证什么 |
| --- | --- | --- |
| GPU / accelerator | NVDA、AMD | 性能、供应分配、margin 持续性、客户集中度。 |
| Memory / HBM | MU、SKHY、Samsung | HBM mix、pricing、capacity、qualification、gross margin。 |
| Foundry / advanced manufacturing | TSM、ASML、AMAT、LRCX | Advanced-node utilization、advanced packaging bottleneck、设备需求。 |
| Datacenter / physical infra | META、GOOGL、AMZN、ORCL、CoreWeave 类云算力 | capex 到 capacity 的转化、电力获取、ROIC。 |
| Packaging / interconnect / CPO | AVGO、MRVL、ALAB、CRDO、optical 相关公司 | 产品级 exposure、客户采用、backlog。 |

## 需要的财务验证

Skill 002 应该把这些验证需求送回数据层：

- Capex：Meta、Google、Amazon、Oracle 的官方 capex guide 和项目级数据中心支出。
- Power：MW / GW capacity、energization timeline、grid-connection risk。
- Memory：HBM revenue mix、合同价格、capacity expansion、客户 qualification。
- Packaging / interconnect：advanced packaging capacity、产品交期、compute tray 可靠性。
- Foundry：AI customer concentration、advanced packaging bottleneck、capex allocation。
- Financing：AI infrastructure 债券发行、利息费用、lease obligations、ROIC。

## 对 Skill 002 的评价

Skill 002 的技术解释力最强。它能把报告从“AI 很热”推到“到底哪些硬件和物理层正在被压迫”。但它的问题是，不天然完成 PM 需要的公司排序、估值和预期差判断。
