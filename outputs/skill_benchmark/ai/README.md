# AI 产业四技能 Benchmark

这是 Research OS 的一次单行业测试：用同一份本地 AI 产业数据，分别跑四个核心 skill，看哪一种思考方式生成的投研输出质量最高。

## 测试范围

- 行业包：`ai`
- 本地数据源：`/Users/pangpatrick/Desktop/research_data/system_index/category_index/ai.jsonl`
- 使用记录数：59 条
- 是否重新采集外部数据：否
- 测试日期：2026-07-14

## 测试目的

这次不是判断哪个 skill 永远最好，而是判断：

```text
面对当前本地 AI 产业数据时，
哪一种思考方式最适合作为第一遍投研研究入口。
```

## 本次生成文件

- `skill_001_baimaonv_report.md`
- `skill_002_semianalysis_report.md`
- `skill_003_equity_playbook_report.md`
- `skill_004_serenity_report.md`
- `evaluation.md`

## 简短结论

本次 AI 数据包里，最强的是 **Skill 004：Serenity 产业链卡点**。

原因是当前数据的核心不是泛泛的“AI 很热”，而是集中在：

- 数据中心 capex
- 电力和物理基础设施
- HBM / DRAM / 存储
- 先进半导体和封装
- 云厂商 AI 投入
- AI capex 的融资能力

所以最合适的第一步不是直接写股票报告，而是先回答：

```text
AI 产业链里真正变紧的层级在哪里？
哪些公司最靠近这些稀缺层？
哪些证据是真的，哪些只是噪音？
```

推荐后续顺序：

```text
Skill 004 先找产业链稀缺层
-> Skill 002 补技术约束和硬件逻辑
-> Skill 003 写成 PM 可以看的公司/投研报告
-> Skill 001 只在出现特别高质量案例时做思考方式沉淀
```
