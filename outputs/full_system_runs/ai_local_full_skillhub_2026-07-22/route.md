# Research OS Route

## Topic

AI 基建本地数据完整 SkillHub 报告

## Research Question

用本地 AI 分类数据判断：AI 基建的新增研究信号是否指向可投资的瓶颈层，哪些公司或价值链节点最值得进入下一轮验证，当前应给 PM 什么行动状态？

## Input Packet

- Runtime data root: `/Users/pangpatrick/Desktop/research_data/system_index`
- Category packet: `category_index/ai.jsonl`
- Context command: `ruby skills/research-os-skillhub/scripts/build-context-packet.rb ai 35`
- Runtime inspection: 776 canonical documents, 2882 readable PDFs, 15 category indexes.
- Material local evidence window: mainly 2026-07-13 to 2026-07-21.

## Route Decision

### Primary Core Skill

`skill_hub/core_skills/skill_004_serenity_bottleneck_mapping.md`

Reason: the report's first-order question is not a single-name earnings memo. It is a scarce-layer and theme-to-beneficiary problem: AI infrastructure signals need to be ranked by constrained layer before company-level action.

### Auxiliary Core Skills

- `skill_hub/core_skills/skill_002_semianalysis_distillation.md`
  - Role: translate AI workload / system architecture into HBM, interconnect, optical, test, power, cooling, and datacenter constraints.
- `skill_hub/core_skills/skill_005_research_event_distillation.md`
  - Role: audit X, a16z, public specialist, and earnings-social signals before they influence the report.

### Excluded Core Skills

- Skill 001 excluded: no single strong case is being distilled into memory.
- Skill 003 excluded as a core skill because the report is a theme/scarce-layer report, not a single-name memo. PM-facing discipline will be handled by `full_system_report.md`, analysis methods, and evaluator.

## Selected References

- `skills/research-os-skillhub/references/routing-and-contracts.md`
- `skills/research-os-skillhub/references/research-event-discipline.md`
- `skills/research-os-skillhub/references/source-evidence-taxonomy.md`
- `skills/research-os-skillhub/references/ticker-role-taxonomy.md`
- `skills/research-os-skillhub/references/thinking-methods-map.md`
- `skills/research-os-skillhub/references/report-output-standard.md`
- `skills/research-os-skillhub/references/evaluator-and-memory.md`
- `skill_hub/references/ai_infrastructure_bottleneck_method.md`
- `skill_hub/references/cross_industry_bottleneck_framework.md`
- `skill_hub/references/event_schema.md`
- `skill_hub/references/event_analysis_output_shape.md`
- `skill_hub/references/report_output_standard.md`

## Selected Thinking Skills

- `skill_hub/thinking_skills/skill_001_find_blind_spot.md`
- `skill_hub/thinking_skills/skill_002_industry_causal_chain.md`
- `skill_hub/thinking_skills/skill_003_reverse_value_chain_mapping.md`
- `skill_hub/thinking_skills/skill_004_constraint_discovery.md`
- `skill_hub/thinking_skills/skill_006_alpha_migration.md`
- `skill_hub/thinking_skills/skill_007_consensus_detection.md`
- `skill_hub/thinking_skills/skill_008_financial_validation_bridge.md`
- `skill_hub/thinking_skills/skill_009_research_event_reasoning.md`
- `skill_hub/thinking_skills/skill_010_cross_industry_bottleneck_event_mapping.md`

## Selected Methodologies

- `skill_hub/research_methodologies/serenity.md`
- `skill_hub/research_methodologies/research_event_distillation.md`

## Dominant Thinking Path

```text
market narrative
-> demand shock
-> constrained layer
-> scarce capability
-> beneficiary / risk-object mapping
-> evidence stack
-> price-in / consensus check
-> financial validation
-> PM action state
```

Thinking skills dominate because the report starts by ranking bottleneck layers and source events. Industry frameworks only decide what to inspect inside AI, semiconductor, and power infrastructure.

## Event Audit

Required.

Reason: material local evidence comes from X priority accounts, X search, hot earnings search, a16z, and public specialist posts. These are early-signal sources and must be audited by claim type, evidence type, ticker role, evidence strength, discovery stage, price-in status, and report use.

## Required Mapping

- Value-chain map.
- Constrained-layer map.
- Company role map.
- Direct / indirect beneficiary map.
- Risk-object and possible loser map.
- Signal-to-financial impact bridge.
- Price-in / consensus gap map.
- Validation loop.

## Selected Industry Frameworks

- `skill_hub/industry_frameworks/ai.md`
- `skill_hub/industry_frameworks/semiconductor.md`
- `skill_hub/industry_frameworks/energy.md`

Framework support role: AI framework defines AI infra value chain; semiconductor framework checks HBM, networking, packaging, test, and supply-chain metrics; energy framework checks datacenter power / cooling / grid load. These frameworks do not control the report structure.

## Selected Analysis Methods

- `skill_hub/analysis_methods/event_audit.md`
- `skill_hub/analysis_methods/company_mapping.md`
- `skill_hub/analysis_methods/financial_validation.md`
- `skill_hub/analysis_methods/consensus_gap.md`
- `skill_hub/analysis_methods/valuation.md`
- `skill_hub/analysis_methods/investment_decision.md`
- `skill_hub/analysis_methods/validation_loop.md`

## Selected Report Template

`skill_hub/report_templates/full_system_report.md`

## Known Data Gaps

- No complete SOXX-relative forward-return table.
- No complete consensus estimates or valuation multiples.
- Many claims are public-source leads, not primary evidence.
- Several claims need original transcript, filing, IR, or company announcement verification.
- Market reaction fields exist for some tickers but are not enough for a full price-in conclusion.

## Claims Requiring Verification

- Kimi / large model deployment increases HBM, memory capacity, and interconnect demand rather than reducing infrastructure demand.
- MRVL 1.6T Ara optical DSP shipping, data-center revenue exposure, NVIDIA partnership, and custom silicon / networking contribution.
- AEHR backlog and bookings tied to AI processors, silicon photonics, and power semiconductors.
- SMCI FY2026 revenue guidance, liquid cooling adoption, manufacturing capacity, and customer demand.
- CRWV / NBIS / Nvidia financing, utilization backstop, and GPU capacity claims.
- ORCL / OpenAI backlog, payment capacity, debt, lease, and counterparty-risk claims.
- Data center electricity share rising toward the cited 2035 level.

## Expected Output Files

- `route.md`
- `route.json`
- `full_system_report.md`
- `report_evaluation.md`
- `validation_tasks.jsonl`
- `memory_update_candidate.md`
