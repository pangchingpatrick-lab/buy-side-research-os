# AI 产业完整 System Run 路由

生成日期：2026-07-14

## 1. Topic

AI infrastructure / AI 产业链基础设施。

## 2. Research Question

用本地 AI 数据包跑完整 Research OS：

```text
本地数据
-> core skill / thinking skill
-> research methodology
-> industry framework
-> analysis methods
-> report template
-> 买方行业研究报告
```

核心问题：

```text
AI 产业里真正变紧的层级是什么？
哪些公司最靠近这些稀缺层？
当前数据是否足以形成投资判断？
下一步应该验证什么？
```

## 3. Data Packet

- 数据源：`/Users/pangpatrick/Desktop/research_data/system_index/category_index/ai.jsonl`
- 使用记录数：59 条
- 是否重新采集外部数据：否
- 数据来源结构：
  - `search_result`：29 条
  - `priority_account`：18 条
  - `whitelist_account`：11 条
  - `signal_markdown`：1 条

## 4. Selected Core Skill Files

主导：

- `skill_hub/core_skills/skill_004_serenity_bottleneck_mapping.md`

辅助：

- `skill_hub/core_skills/skill_002_semianalysis_distillation.md`
- `skill_hub/core_skills/skill_003_equity_research_playbook.md`

未作为主导：

- `skill_hub/core_skills/skill_001_baimaonv_distillation.md`

原因：本次不是单个高质量案例蒸馏，而是本地 AI 数据包的完整行业研究。Skill 001 可用于沉淀思考方式，但不是最终 report 的主引擎。

## 5. Selected Thinking Skill Files

- `skill_hub/thinking_skills/skill_001_find_blind_spot.md`
- `skill_hub/thinking_skills/skill_002_industry_causal_chain.md`
- `skill_hub/thinking_skills/skill_003_reverse_value_chain_mapping.md`
- `skill_hub/thinking_skills/skill_004_constraint_discovery.md`
- `skill_hub/thinking_skills/skill_006_alpha_migration.md`
- `skill_hub/thinking_skills/skill_007_consensus_detection.md`
- `skill_hub/thinking_skills/skill_008_financial_validation_bridge.md`

## 6. Selected Research Methodology Files

- `skill_hub/research_methodologies/serenity.md`

## 7. Dominant Thinking Path

```text
早期信号
-> 真实系统变化
-> 产业链层级排序
-> 稀缺层识别
-> 公司靠近卡点程度
-> 财务验证桥
-> 共识 vs 非共识
-> 投资判断 / 下一轮验证
```

本次 thinking path 必须主导报告。产业框架只是检查清单，不作为主论点。

## 8. Required Mapping

- 价值链映射：AI workload -> compute -> HBM / memory -> packaging / interconnect -> datacenter -> power -> financing。
- 公司暴露映射：直接受益、间接受益、潜在受损、watchlist。
- 财务映射：signal -> operating metric -> financial line item -> evidence source。
- 反证映射：什么数据会证明判断错了。

## 9. Classified Industry

主行业：

- AI infrastructure

交叉行业：

- semiconductor
- energy / power grid
- cloud / datacenter
- memory

## 10. Selected Industry Framework Files

- `skill_hub/industry_frameworks/ai.md`
- `skill_hub/industry_frameworks/semiconductor.md`
- `skill_hub/industry_frameworks/energy.md`

## 11. How The Framework Supports The Thinking Path

- AI framework：定义模型、云、算力、应用、数据中心的商业模式和财务传导。
- Semiconductor framework：定义 GPU、HBM、foundry、advanced packaging、equipment 的价值链和关键指标。
- Energy framework：定义电力、grid、utilities、power infrastructure 对数据中心扩张的约束。

这三个 framework 不决定结论，只用于检查哪些指标、公司和风险不能漏。

## 12. Selected Analysis Method Files

- `skill_hub/analysis_methods/company_mapping.md`
- `skill_hub/analysis_methods/financial_validation.md`
- `skill_hub/analysis_methods/consensus_gap.md`
- `skill_hub/analysis_methods/valuation.md`
- `skill_hub/analysis_methods/investment_decision.md`
- `skill_hub/analysis_methods/validation_loop.md`

## 13. Selected Report Template

- `skill_hub/report_templates/industry_report.md`

## 14. Files Intentionally Excluded

- `skill_hub/industry_frameworks/healthcare.md`
- `skill_hub/industry_frameworks/real_estate.md`
- `skill_hub/industry_frameworks/financials.md`
- `skill_hub/industry_frameworks/space.md`
- `skill_hub/industry_frameworks/software_saas.md`
- `skill_hub/report_templates/investment_memo.md`
- `skill_hub/report_templates/pm_brief.md`

原因：本次目标是 AI 产业完整行业研究，不是单公司 memo，也不是短 PM brief。

## 15. Data Gaps To Preserve

- 缺少官方 capex / filings / earnings call 证据。
- 缺少 TSM、MU、SK Hynix、NVDA、AVGO、AMAT 等公司的一手财务验证。
- 缺少数据中心电力合同、并网时间、项目建设进度。
- 缺少 HBM pricing、capacity、customer allocation 的一手证据。
- 缺少估值倍数、市场预期、consensus estimate 数据。

## 16. Claims Requiring Verification

- Meta Louisiana / Hyperion 5GW 和 $50B+ 项目细节。
- Google 2026 capex guidance。
- Amazon / Big Tech AI capex 债券融资金额。
- SK Hynix ADR / Nasdaq listing 和 AI memory trade 波动。
- Micron revenue、net income、guide 等社媒数字。
- AI investment 对 US GDP growth 的贡献比例。

## 17. Output

完整报告：

- `outputs/full_system_runs/ai/full_system_report.md`

机器可读路由：

- `outputs/full_system_runs/ai/route.json`

报告评分：

- `outputs/full_system_runs/ai/report_evaluation.md`

下一轮数据层验证任务：

- `outputs/full_system_runs/ai/validation_tasks.jsonl`
