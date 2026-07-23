# Skill Hub Registry

This registry is the top-level inventory for report-writing skills in the Buy-side Research OS.

Use it before writing any report to decide which files should be loaded. The registry does not replace `router.md`; it tells the agent what modules exist, while `router.md` decides the exact route for a specific topic.

## Canonical Data Source

Default machine-readable data comes from the runtime data layer:

```text
/Users/pangpatrick/Desktop/research_data/system_index/index.jsonl
/Users/pangpatrick/Desktop/research_data/system_index/category_index/*.jsonl
/Users/pangpatrick/Desktop/research_data/system_index/documents/*.json
```

Do not use repository legacy `data/` files as the default source of truth unless the user explicitly requests them.

## Required Report-Writing Flow

```text
runtime data layer
-> scripts/build_data_context.rb
-> skill_hub/router.md
-> selected references
-> primary core skill
-> research event audit when early-signal sources are material
-> selected thinking skills / methodology
-> industry framework as support
-> analysis methods
-> report template
-> report evaluation
-> validation tasks
-> memory update candidate
```

## Core Skills

| File | Primary Use | Typical Output Influence |
| --- | --- | --- |
| `core_skills/skill_001_baimaonv_distillation.md` | Distill a strong public research case into reusable thinking patterns. | Case logic, narrative discipline, evidence extraction. |
| `core_skills/skill_002_semianalysis_distillation.md` | Analyze technical infrastructure, semiconductors, AI supply chains, and capacity economics. | Technical bottlenecks, supply-demand logic, infrastructure economics. |
| `core_skills/skill_003_equity_research_playbook.md` | Convert classified evidence into institutional equity research workflow. | Company thesis, earnings linkage, valuation, PM action state. |
| `core_skills/skill_004_serenity_bottleneck_mapping.md` | Find the scarce layer and map beneficiary proximity before selecting companies. | Constraint map, direct/indirect beneficiaries, alpha migration. |
| `core_skills/skill_005_research_event_distillation.md` | Convert public claims and early signals into auditable research events. | Claim/evidence separation, ticker-role discipline, discovery-stage audit, price-in questions. |

Use exactly one primary core skill and zero to two auxiliary core skills.

## Thinking Skills

| File | Use When The Report Needs To... |
| --- | --- |
| `thinking_skills/skill_001_find_blind_spot.md` | Find what the market narrative is missing. |
| `thinking_skills/skill_002_industry_causal_chain.md` | Connect signal to mechanism through a causal industry chain. |
| `thinking_skills/skill_003_reverse_value_chain_mapping.md` | Start from downstream demand and work backward to the scarce input. |
| `thinking_skills/skill_004_constraint_discovery.md` | Identify the true supply, technical, capacity, or business constraint. |
| `thinking_skills/skill_005_narrative_reframing.md` | Reframe a broad theme into a sharper investable question. |
| `thinking_skills/skill_006_alpha_migration.md` | Track where alpha moves as consensus catches up. |
| `thinking_skills/skill_007_consensus_detection.md` | Judge what may already be priced in. |
| `thinking_skills/skill_008_financial_validation_bridge.md` | Translate signal and mechanism into financial line items. |
| `thinking_skills/skill_009_research_event_reasoning.md` | Turn public claims into event-level reasoning with role, evidence stack, discovery stage, and report-use discipline. |
| `thinking_skills/skill_010_cross_industry_bottleneck_event_mapping.md` | Map event signals into demand shock, constrained layer, scarce capability, beneficiary, and falsifiable validation logic. |

Thinking skills must dominate report logic. Industry frameworks are supporting checklists.

## Research Methodologies

| File | Role |
| --- | --- |
| `research_methodologies/serenity.md` | Early-signal-to-thesis methodology focused on scarce layers and verification loops. |
| `research_methodologies/research_event_distillation.md` | Public-claim-to-research-event methodology focused on signal quality, price-in, report admission, and event memory. |
| `research_methodologies/methodology_evaluator.md` | Decide whether a methodology fits the packet and report goal. |

## References

| File | Role |
| --- | --- |
| `references/calling_sequence.md` | Explains how Skill Hub files call each other during a complete run. |
| `references/event_schema.md` | Explains research event fields and how to interpret event rows. |
| `references/ai_infrastructure_bottleneck_method.md` | Shared AI-infrastructure bottleneck method integrated into Skill 001-5. |
| `references/cross_industry_bottleneck_framework.md` | Shared cross-industry demand-shock / constrained-layer framework integrated into Skill 001-5. |
| `references/event_analysis_output_shape.md` | Standard output shape for event analysis, weak hypotheses, failure modes, and memory candidates. |
| `references/source_evidence_taxonomy.md` | Defines source types, evidence strength, reliability, and verification status. |
| `references/ticker_role_taxonomy.md` | Defines ticker roles before company mapping. |
| `references/report_output_standard.md` | Defines PM-facing report quality and required logic chain. |
| `references/skillhub_memory_model.md` | Defines what memory can store and when updates are allowed. |

## Industry Frameworks

| File | Coverage |
| --- | --- |
| `industry_frameworks/ai.md` | AI infrastructure and model/application stack. |
| `industry_frameworks/semiconductor.md` | Semiconductor, HBM, equipment, foundry, advanced packaging, CPO-adjacent logic. |
| `industry_frameworks/software_saas.md` | SaaS, cloud software, cybersecurity, databases, enterprise software. |
| `industry_frameworks/consumer_electronics.md` | Apple, smartphones, PCs, wearables, supply chain. |
| `industry_frameworks/energy.md` | Power, oil/gas, LNG, grid, nuclear, uranium, renewables. |
| `industry_frameworks/financials.md` | Banks, brokers, fintech, liquidity transmission. |
| `industry_frameworks/healthcare.md` | Healthcare company and industry research. |
| `industry_frameworks/real_estate.md` | Real estate and property-linked research. |
| `industry_frameworks/space.md` | Space economy, satellites, launch, constellation economics. |

## Analysis Methods

| File | Role |
| --- | --- |
| `analysis_methods/company_mapping.md` | Map evidence to companies, tickers, roles, and exposure. |
| `analysis_methods/consensus_gap.md` | Compare evidence with market expectations and consensus narrative. |
| `analysis_methods/event_audit.md` | Convert early signals into event rows and decide report use. |
| `analysis_methods/financial_validation.md` | Convert claims into revenue, margin, capex, backlog, pricing, or valuation checks. |
| `analysis_methods/investment_decision.md` | Convert evidence state into PM action state. |
| `analysis_methods/valuation.md` | Frame valuation and price-in risk. |
| `analysis_methods/validation_loop.md` | Produce next-round validation tasks. |

## Report Templates

| File | Use When |
| --- | --- |
| `report_templates/pm_brief.md` | The PM needs a short actionable brief. |
| `report_templates/industry_report.md` | The PM needs a full industry or theme report. |
| `report_templates/investment_memo.md` | The PM needs a single-name or basket investment memo. |
| `report_templates/full_system_report.md` | The user asks for a complete Research OS run with route, evaluation, and validation loop, while the final report itself should still read like an 8-10 page PM investment memo. |

## Evaluator

Use `evaluators/report_evaluator.md` after every full report, PM brief, or investment memo.

The evaluator should check route discipline, thinking dominance, local-data discipline, five-question PM memo quality, memo compression, mapping quality, Signal-to-Alpha logic, price-in analysis, and validation loop quality.

## Memory

Memory is not raw data. It stores lessons learned from reports.

| File | Purpose |
| --- | --- |
| `memory/validated_patterns.md` | Successful report patterns and reusable signal-to-alpha chains. |
| `memory/failure_modes.md` | Repeated mistakes and hard failure patterns. |
| `memory/event_validated_patterns.md` | Evaluated event-level signal patterns that should be reused. |
| `memory/event_failure_modes.md` | Event-level interpretation mistakes to avoid. |
| `memory/playbook_updates.md` | Candidate updates to skills, frameworks, templates, and routing rules. |
| `memory/score_history.jsonl` | Machine-readable report scores over time. |

Only update memory after a report has been evaluated.
