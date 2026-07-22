# Skill Hub Router

This router is the decision engine of the Skill Hub.

After Step 1 produces classified external data in the local runtime data layer, use this file to decide which Skill Hub files the AI should read and combine.

The router does not generate analysis. It only selects:

1. core skill files when the input is a research case
2. thinking skill and research methodology files
3. industry framework files
4. analysis method files
5. report template file

## Full Workflow Position

```text
Data / Case
-> Skill Hub Registry
-> Route Contract
-> Reference Files
-> Skill 001 白毛女蒸馏, Skill 002 SemiAnalysis 蒸馏, Skill 003 Equity Research Playbook 蒸馏, Skill 004 Serenity 产业链卡点蒸馏, or Skill 005 Research Event Distillation
-> Research Event Audit when early-signal sources are material
-> Thinking Skills / Research Methodologies
-> Industry Frameworks
-> Analysis Methods
-> Report Templates
-> Buy-side Report
-> Report Evaluator
-> Validation Tasks
-> Memory Update Candidate
```

The router should only receive classified packets or context packets built from `system_index`. It should not read raw X posts, raw filings, raw PDFs, or unstructured notes directly.

Default packet source:

```bash
ruby scripts/build_data_context.rb [category|all] [limit]
```

Canonical records should come from:

```text
/Users/pangpatrick/Desktop/research_data/system_index/documents/*.json
```

If the input is a high-quality research case rather than a normal data packet, route it first to:

- `skill_hub/core_skills/skill_001_baimaonv_distillation.md`
- `skill_hub/core_skills/skill_002_semianalysis_distillation.md`
- `skill_hub/core_skills/skill_003_equity_research_playbook.md`
- `skill_hub/core_skills/skill_004_serenity_bottleneck_mapping.md`
- `skill_hub/core_skills/skill_005_research_event_distillation.md`

This extracts reusable thinking patterns before selecting an industry framework.

The key ordering rule is:

```text
how to think
-> how to map
-> what to inspect
-> how to validate
-> how to communicate
```

Before routing, read `skill_hub/registry.md` to confirm the available module inventory and default data source.

## Hard Route Contract

Every complete system run must create both:

- `route.md`
- `route.json`

Use:

- `skill_hub/contracts/route_contract.md`
- `skill_hub/contracts/report_run_contract.md`
- `skill_hub/contracts/route.schema.json`

The route must be created before the report.

Mandatory route rules:

- select exactly one `primary_core_skill`
- select zero to two `auxiliary_core_skills`
- select the reference files needed to interpret route fields, source labels, ticker roles, or report standards
- select thinking skills before industry frameworks
- explain how thinking skills dominate the report
- treat industry frameworks as supporting checklists
- decide whether research event audit is required before early signals enter the report
- select analysis methods before selecting the final investment decision
- select exactly one report template
- list excluded files and why they were excluded
- preserve all known `待验证` and `待补充` claims

If a run has no route artifact, it is not a complete system run.

## Thinking Dominance Rule

Thinking skills and research methodologies must dominate the final reasoning path.

- The selected thinking skills should shape the thesis, report structure, evidence interpretation, and PM implication.
- Industry frameworks are subordinate. They define the industry map, value chain, metrics, and risk checklist, but they must not become the main argument.
- The router must select thinking skills before industry frameworks and explain how those skills will change the analysis.
- If a report reads like an industry-framework template rather than a thinking-led argument, the route is incomplete.
- Every route must require mapping: value-chain mapping, company exposure mapping, direct / indirect beneficiary mapping, possible loser mapping, business mechanism mapping, and financial validation mapping where applicable.

Router output should make the thinking path more prominent than the industry framework selection.

## Primary / Auxiliary Skill Rule

The router must not select all core skills as equal contributors.

Use this structure:

```text
primary_core_skill: one skill that controls the report logic
auxiliary_core_skills: zero to two skills that fill gaps
excluded_core_skills: skills that were considered but not used
```

Examples:

- AI infrastructure scarce-layer scan: Skill 004 primary, Skill 002 and Skill 003 auxiliary.
- HBM technical bottleneck: Skill 002 primary, Skill 004 auxiliary, Skill 003 auxiliary only if PM-facing company work is needed.
- Single-name earnings memo: Skill 003 primary, Skill 007 / Skill 008 thinking skills, relevant framework auxiliary.
- Early-signal / public-claim audit: Skill 005 primary, Skill 003 or Skill 004 auxiliary depending on whether the next step is PM memo or scarce-layer map.
- Public-signal-heavy final report: Skill 003 or Skill 004 primary, Skill 005 auxiliary to audit events before report use.
- High-quality case distillation: Skill 001 primary, no final report unless routed onward.

## Input

Expected classified input from Step 1:

- topic
- research question
- industry classification
- information type
- related companies
- related products / technologies
- source list
- verified facts
- unverified claims
- data gaps
- requested output type

Every input packet should preserve:

- source credibility
- verification status
- source URL or identifier when available
- whether the item is an early signal, validated evidence, or unverified claim

## Routing Logic

### 1. Identify Whether Core Skill Distillation Is Needed

Use `skill_hub/core_skills/skill_001_baimaonv_distillation.md` when the input is:

- an X thread with a strong reasoning pattern
- a research note
- a long-form article
- a chart / case summary
- a prior research case that should improve the Skill Hub

Use `skill_hub/core_skills/skill_002_semianalysis_distillation.md` as the preferred core skill when the topic involves:

- AI infrastructure
- semiconductors
- GPU clusters
- HBM
- networking
- ASICs
- foundry
- advanced packaging
- datacenter capex
- optical interconnect

Use `skill_hub/core_skills/skill_003_equity_research_playbook.md` as the preferred core skill when the input involves:

- earnings, guidance, KPI changes, or post-print stock reaction
- single-name investment research
- competitive moat, business quality, pricing power, market share, or management quality
- growth stock / platform thesis construction
- thematic investment research and listed-equity universe construction
- supply-chain pass-through and beneficiary mapping
- broker report, 10-K, annual report, fund commentary, or strategy report interpretation after the data layer has extracted the evidence
- corporate network, customer relationship, board link, M&A signal, or insider / executive network analysis
- PM-facing investment memo where classified evidence must become an actionable equity research path

Use Skill 003 together with Skill 002 when a technical infrastructure signal must be translated into a single-name or basket-level equity thesis.

Use `skill_hub/core_skills/skill_004_serenity_bottleneck_mapping.md` as the preferred core skill when the input involves:

- finding the real supply-chain bottleneck or scarce layer
- ranking value-chain layers before ranking companies
- AI infrastructure, datacenter, semiconductor, memory, CPO, optical interconnect, robotics, power, cooling, energy infrastructure, space, or manufacturing supply-chain signals
- "who benefits from X"
- "which direction is worth researching first"
- market narrative vs actual economic role
- hidden upstream constraints
- company comparison by proximity to constraint
- local `system_index` records that need a scarce-layer map

Use Skill 004 together with Skill 003 when a scarce-layer map must become a PM-facing single-name thesis, basket, or investment memo.

Use `skill_hub/core_skills/skill_005_research_event_distillation.md` as the preferred core skill when the input involves:

- auditing X, a16z, GeoScope, specialist blog, newsletter, or other public early-signal sources
- deciding whether a source item is lead, evidence, context, validation task, or noise
- converting public claims into timestamped research events
- classifying ticker role, claim type, evidence type, evidence strength, discovery stage, and price-in question
- distinguishing early discovery, continuation confirmation, late validation, after-fact commentary, and context-only items
- clustering duplicate thesis events before they influence sample size or conviction
- creating validated event patterns or event failure modes after evaluation

Use Skill 005 as an auxiliary skill whenever the selected report relies materially on early-signal sources. In that case, also select:

- `skill_hub/contracts/research_event_contract.md`
- `skill_hub/analysis_methods/event_audit.md`
- `skill_hub/thinking_skills/skill_009_research_event_reasoning.md`

Use Skill 005 together with Skill 003 when public events must become a PM-facing single-name or basket thesis.

Use Skill 005 together with Skill 004 when public events must be sorted into scarce-layer or value-chain constraints.

When Skill 005 and Skill 004 are both selected, also select:

- `skill_hub/thinking_skills/skill_010_cross_industry_bottleneck_event_mapping.md`
- `skill_hub/research_methodologies/research_event_distillation.md`

Do not use these core skills to generate a report. Use them to decide which thinking skills, research methodologies, industry frameworks, and validation methods should be used later.

### 2. Select Thinking Skills Or Research Methodologies

Select thinking skills and research methodologies before selecting the industry framework.

The thinking selection is the primary decision. It should determine the report's argument structure and mapping logic.

Use:

- `skill_hub/thinking_skills/thinking_skill_router.md` for small reusable reasoning units.
- `skill_hub/research_methodologies/methodology_evaluator.md` when comparing larger reasoning styles.
- `skill_hub/research_methodologies/serenity.md` when the packet starts from early signals and needs signal-to-thesis reasoning.
- `skill_hub/research_methodologies/research_event_distillation.md` when public claims need to be converted into event-level signal logic before they can enter a report.

Select reference files before analysis when the route needs field interpretation:

| Need | Reference file |
| --- | --- |
| Need to understand full Skill Hub calling order | `skill_hub/references/calling_sequence.md` |
| Need to audit early signals or public claims | `skill_hub/references/event_schema.md` |
| Need AI-infrastructure bottleneck reasoning | `skill_hub/references/ai_infrastructure_bottleneck_method.md` |
| Need cross-industry constrained-layer reasoning | `skill_hub/references/cross_industry_bottleneck_framework.md` |
| Need event analysis output shape | `skill_hub/references/event_analysis_output_shape.md` |
| Need source reliability / evidence strength discipline | `skill_hub/references/source_evidence_taxonomy.md` |
| Need ticker-role or beneficiary discipline | `skill_hub/references/ticker_role_taxonomy.md` |
| Need PM-facing output quality standard | `skill_hub/references/report_output_standard.md` |
| Need memory update / skill sedimentation rules | `skill_hub/references/skillhub_memory_model.md` |

Examples:

- hidden upstream bottleneck: `skill_001_find_blind_spot.md` + `skill_003_reverse_value_chain_mapping.md` + `skill_004_constraint_discovery.md`
- broad narrative that needs sharpening: `skill_005_narrative_reframing.md` + `skill_002_industry_causal_chain.md`
- "is it priced in?" question: `skill_007_consensus_detection.md` + `skill_008_financial_validation_bridge.md`
- public-claim event audit: `skill_009_research_event_reasoning.md` + `skill_007_consensus_detection.md` + `skill_008_financial_validation_bridge.md`
- public signal to bottleneck beneficiary: `skill_009_research_event_reasoning.md` + `skill_010_cross_industry_bottleneck_event_mapping.md` + `skill_003_reverse_value_chain_mapping.md` + `skill_004_constraint_discovery.md`
- single-name equity thesis: `skill_002_industry_causal_chain.md` + `skill_007_consensus_detection.md` + `skill_008_financial_validation_bridge.md`
- theme-to-beneficiary mapping: `skill_003_reverse_value_chain_mapping.md` + `skill_006_alpha_migration.md` + `skill_008_financial_validation_bridge.md`
- scarce-layer theme scan: `skill_001_find_blind_spot.md` + `skill_002_industry_causal_chain.md` + `skill_003_reverse_value_chain_mapping.md` + `skill_004_constraint_discovery.md` + `skill_010_cross_industry_bottleneck_event_mapping.md` + `skill_006_alpha_migration.md` + `skill_008_financial_validation_bridge.md`

### 3. Identify Industry

Select one or more industry frameworks.

Industry frameworks are supporting tools. Use them to check industry structure, value chain, business models, KPIs, and risks after the reasoning path is chosen.

| Classified industry | File to read |
| --- | --- |
| AI | `skill_hub/industry_frameworks/ai.md` |
| Semiconductor | `skill_hub/industry_frameworks/semiconductor.md` |
| Space economy | `skill_hub/industry_frameworks/space.md` |
| Software / SaaS | `skill_hub/industry_frameworks/software_saas.md` |
| Energy | `skill_hub/industry_frameworks/energy.md` |
| Consumer electronics | `skill_hub/industry_frameworks/consumer_electronics.md` |
| Healthcare | `skill_hub/industry_frameworks/healthcare.md` |
| Real estate | `skill_hub/industry_frameworks/real_estate.md` |
| Financials / fintech | `skill_hub/industry_frameworks/financials.md` |

Select multiple frameworks when the classified data crosses industries.

Examples:

- AI infrastructure with GPUs, HBM, networking, optical modules: `ai.md` + `semiconductor.md`
- AI data center power bottleneck: `ai.md` + `energy.md`
- AI device upgrade cycle: `ai.md` + `consumer_electronics.md` + `semiconductor.md`
- Fintech software platform: `financials.md` + `software_saas.md`

### 4. Identify Analysis Needs

Select the analysis method files required by the research question.

| Analysis need | File to read |
| --- | --- |
| Need financial proof | `skill_hub/analysis_methods/financial_validation.md` |
| Need company mapping | `skill_hub/analysis_methods/company_mapping.md` |
| Need early-signal event audit | `skill_hub/analysis_methods/event_audit.md` |
| Need market expectation gap | `skill_hub/analysis_methods/consensus_gap.md` |
| Need valuation view | `skill_hub/analysis_methods/valuation.md` |
| Need investment judgment | `skill_hub/analysis_methods/investment_decision.md` |
| Need next validation loop | `skill_hub/analysis_methods/validation_loop.md` |

Default method set for PM-facing work:

- `financial_validation.md`
- `company_mapping.md`
- `consensus_gap.md`
- `investment_decision.md`
- `validation_loop.md`

Add `valuation.md` whenever the question asks whether something is priced in, undervalued, overvalued, mispriced, crowded, or actionable.

Add `event_audit.md` whenever X, a16z, GeoScope, specialist newsletters, blogs, or other public early-signal sources materially support the report.

### 5. Select Output Type

Select exactly one report template.

| Requested output | File to read |
| --- | --- |
| Short PM update | `skill_hub/report_templates/pm_brief.md` |
| Full industry report | `skill_hub/report_templates/industry_report.md` |
| Investment memo | `skill_hub/report_templates/investment_memo.md` |
| Complete Research OS report run | `skill_hub/report_templates/full_system_report.md` |

If the user does not specify the output type:

- use `pm_brief.md` for quick research loop tests or PM updates
- use `industry_report.md` for broad sector or theme research
- use `investment_memo.md` for a specific thesis, company, long, short, or portfolio action
- use `full_system_report.md` when the user asks for a complete system run, route, evaluation, or report suitable for comparing Skill Hub output quality

Every selected PM-facing template must preserve two output requirements:

- The report starts with a PM-grade core conclusion: marginal change, PM action state, core thesis, research priority, and verification points.
- Full reports and investment memos include `买方投资逻辑（Signal-to-Alpha）`, using Signal -> Mechanism -> Beneficiary Mapping -> Earnings Impact -> Market Expectation -> Evidence Gap -> Catalyst -> Invalidation -> PM Action.

## Routing Examples

### AI infrastructure

Input cues:

- AI infrastructure
- GPUs, HBM, networking, optical modules
- listed-company exposure
- PM update requested

Files to read:

- `skill_hub/core_skills/skill_004_serenity_bottleneck_mapping.md`
- `skill_hub/core_skills/skill_005_research_event_distillation.md`
- `skill_hub/core_skills/skill_002_semianalysis_distillation.md`
- `skill_hub/research_methodologies/serenity.md`
- `skill_hub/research_methodologies/research_event_distillation.md`
- `skill_hub/references/ai_infrastructure_bottleneck_method.md`
- `skill_hub/references/cross_industry_bottleneck_framework.md`
- `skill_hub/references/event_analysis_output_shape.md`
- `skill_hub/thinking_skills/skill_001_find_blind_spot.md`
- `skill_hub/thinking_skills/skill_002_industry_causal_chain.md`
- `skill_hub/thinking_skills/skill_003_reverse_value_chain_mapping.md`
- `skill_hub/thinking_skills/skill_004_constraint_discovery.md`
- `skill_hub/thinking_skills/skill_009_research_event_reasoning.md`
- `skill_hub/thinking_skills/skill_010_cross_industry_bottleneck_event_mapping.md`
- `skill_hub/thinking_skills/skill_007_consensus_detection.md`
- `skill_hub/thinking_skills/skill_008_financial_validation_bridge.md`
- `skill_hub/industry_frameworks/ai.md`
- `skill_hub/industry_frameworks/semiconductor.md`
- `skill_hub/analysis_methods/company_mapping.md`
- `skill_hub/analysis_methods/event_audit.md`
- `skill_hub/analysis_methods/financial_validation.md`
- `skill_hub/analysis_methods/valuation.md`
- `skill_hub/analysis_methods/investment_decision.md`
- `skill_hub/report_templates/pm_brief.md`

### HBM supply chain

Input cues:

- HBM
- memory supply chain
- capacity, ASP, customer allocation
- full industry view requested

Files to read:

- `skill_hub/core_skills/skill_004_serenity_bottleneck_mapping.md`
- `skill_hub/core_skills/skill_002_semianalysis_distillation.md`
- `skill_hub/core_skills/skill_005_research_event_distillation.md`
- `skill_hub/research_methodologies/serenity.md`
- `skill_hub/research_methodologies/research_event_distillation.md`
- `skill_hub/references/ai_infrastructure_bottleneck_method.md`
- `skill_hub/references/cross_industry_bottleneck_framework.md`
- `skill_hub/references/event_analysis_output_shape.md`
- `skill_hub/thinking_skills/skill_009_research_event_reasoning.md`
- `skill_hub/thinking_skills/skill_010_cross_industry_bottleneck_event_mapping.md`
- `skill_hub/thinking_skills/skill_003_reverse_value_chain_mapping.md`
- `skill_hub/thinking_skills/skill_004_constraint_discovery.md`
- `skill_hub/thinking_skills/skill_006_alpha_migration.md`
- `skill_hub/thinking_skills/skill_008_financial_validation_bridge.md`
- `skill_hub/industry_frameworks/semiconductor.md`
- `skill_hub/analysis_methods/company_mapping.md`
- `skill_hub/analysis_methods/event_audit.md`
- `skill_hub/analysis_methods/financial_validation.md`
- `skill_hub/analysis_methods/investment_decision.md`
- `skill_hub/report_templates/industry_report.md`

### SaaS earnings

Input cues:

- SaaS earnings
- ARR, NRR, guidance, billings, RPO
- company thesis or investment memo requested

Files to read:

- `skill_hub/core_skills/skill_003_equity_research_playbook.md`
- `skill_hub/core_skills/skill_005_research_event_distillation.md`
- `skill_hub/research_methodologies/methodology_evaluator.md`
- `skill_hub/thinking_skills/skill_007_consensus_detection.md`
- `skill_hub/thinking_skills/skill_008_financial_validation_bridge.md`
- `skill_hub/industry_frameworks/software_saas.md`
- `skill_hub/analysis_methods/financial_validation.md`
- `skill_hub/analysis_methods/event_audit.md`
- `skill_hub/analysis_methods/consensus_gap.md`
- `skill_hub/analysis_methods/valuation.md`
- `skill_hub/report_templates/investment_memo.md`

### Theme-to-beneficiary equity mapping

Input cues:

- "who benefits from X"
- secular trend
- supply-chain pass-through
- thematic basket
- listed-company beneficiaries
- PM brief or industry report requested

Files to read:

- `skill_hub/core_skills/skill_004_serenity_bottleneck_mapping.md`
- `skill_hub/core_skills/skill_003_equity_research_playbook.md`
- `skill_hub/core_skills/skill_005_research_event_distillation.md`
- `skill_hub/research_methodologies/serenity.md`
- `skill_hub/research_methodologies/research_event_distillation.md`
- `skill_hub/references/cross_industry_bottleneck_framework.md`
- `skill_hub/references/event_analysis_output_shape.md`
- `skill_hub/thinking_skills/skill_002_industry_causal_chain.md`
- `skill_hub/thinking_skills/skill_003_reverse_value_chain_mapping.md`
- `skill_hub/thinking_skills/skill_009_research_event_reasoning.md`
- `skill_hub/thinking_skills/skill_010_cross_industry_bottleneck_event_mapping.md`
- `skill_hub/thinking_skills/skill_006_alpha_migration.md`
- `skill_hub/thinking_skills/skill_007_consensus_detection.md`
- `skill_hub/thinking_skills/skill_008_financial_validation_bridge.md`
- relevant `skill_hub/industry_frameworks/*.md`
- `skill_hub/analysis_methods/company_mapping.md`
- `skill_hub/analysis_methods/event_audit.md`
- `skill_hub/analysis_methods/financial_validation.md`
- `skill_hub/analysis_methods/consensus_gap.md`
- `skill_hub/analysis_methods/investment_decision.md`
- `skill_hub/report_templates/pm_brief.md` or `skill_hub/report_templates/industry_report.md`

### Scarce-layer theme scan from local data

Input cues:

- local `system_index` records
- raw data cluster
- AI infrastructure, CPO, memory, datacenter power, robotics, space, energy, or semiconductor theme
- "先排产业链层级"
- "找卡点"
- "市场没看清什么"
- "哪些公司最靠近真实约束"

Files to read:

- `skill_hub/core_skills/skill_004_serenity_bottleneck_mapping.md`
- `skill_hub/core_skills/skill_005_research_event_distillation.md`
- `skill_hub/research_methodologies/serenity.md`
- `skill_hub/research_methodologies/research_event_distillation.md`
- `skill_hub/references/ai_infrastructure_bottleneck_method.md`
- `skill_hub/references/cross_industry_bottleneck_framework.md`
- `skill_hub/references/event_analysis_output_shape.md`
- `skill_hub/thinking_skills/skill_001_find_blind_spot.md`
- `skill_hub/thinking_skills/skill_002_industry_causal_chain.md`
- `skill_hub/thinking_skills/skill_003_reverse_value_chain_mapping.md`
- `skill_hub/thinking_skills/skill_004_constraint_discovery.md`
- `skill_hub/thinking_skills/skill_009_research_event_reasoning.md`
- `skill_hub/thinking_skills/skill_010_cross_industry_bottleneck_event_mapping.md`
- `skill_hub/thinking_skills/skill_006_alpha_migration.md`
- `skill_hub/thinking_skills/skill_007_consensus_detection.md`
- `skill_hub/thinking_skills/skill_008_financial_validation_bridge.md`
- relevant `skill_hub/industry_frameworks/*.md`
- `skill_hub/analysis_methods/company_mapping.md`
- `skill_hub/analysis_methods/event_audit.md`
- `skill_hub/analysis_methods/financial_validation.md`
- `skill_hub/analysis_methods/consensus_gap.md`
- `skill_hub/analysis_methods/investment_decision.md`
- `skill_hub/report_templates/pm_brief.md`

### Broker report / filing evidence interpretation

Input cues:

- already-extracted broker note packet
- already-extracted sell-side report packet
- already-extracted 10-K / annual report packet
- already-extracted fund commentary packet
- compare reports
- interpret assumptions, tables, estimates, valuation, or disagreement

Files to read:

- `skill_hub/core_skills/skill_003_equity_research_playbook.md`
- `skill_hub/thinking_skills/skill_007_consensus_detection.md`
- `skill_hub/thinking_skills/skill_008_financial_validation_bridge.md`
- relevant `skill_hub/industry_frameworks/*.md`
- `skill_hub/analysis_methods/financial_validation.md`
- `skill_hub/analysis_methods/consensus_gap.md`
- `skill_hub/analysis_methods/valuation.md`
- `skill_hub/analysis_methods/validation_loop.md`
- `skill_hub/report_templates/investment_memo.md`

### Early-signal event audit

Input cues:

- X / a16z / GeoScope / newsletter / specialist blog source packet
- public claims with unclear proof level
- "哪些信号有用"
- "哪些进入报告，哪些只是噪音"
- "是否已经 price in"
- "把观点变成可审计事件"
- repeated source clusters or duplicate thesis risk

Files to read:

- `skill_hub/core_skills/skill_005_research_event_distillation.md`
- `skill_hub/contracts/research_event_contract.md`
- `skill_hub/references/event_schema.md`
- `skill_hub/references/ticker_role_taxonomy.md`
- `skill_hub/references/source_evidence_taxonomy.md`
- `skill_hub/references/event_analysis_output_shape.md`
- `skill_hub/analysis_methods/event_audit.md`
- `skill_hub/thinking_skills/skill_009_research_event_reasoning.md`
- `skill_hub/thinking_skills/skill_007_consensus_detection.md`
- `skill_hub/thinking_skills/skill_008_financial_validation_bridge.md`
- `skill_hub/research_methodologies/research_event_distillation.md`
- `skill_hub/analysis_methods/company_mapping.md`
- `skill_hub/analysis_methods/consensus_gap.md`
- `skill_hub/analysis_methods/validation_loop.md`

If the event audit is only an intermediate layer, route onward to Skill 003 for PM-facing equity research or Skill 004 for scarce-layer mapping.

## Router Output Format

```markdown
# Skill Hub Route

- Topic:
- Research question:
- Input packet:
- Record count:
- Primary core skill:
- Auxiliary core skills:
- Excluded core skills:
- Selected reference files:
- Selected thinking skill files:
- Selected research methodology files:
- Dominant thinking path:
- Event audit required:
- Event audit reason:
- Required mapping:
- Classified industry:
- Selected industry framework files:
- How the framework supports the thinking path:
- Selected analysis method files:
- Selected report template:
- Why these files:
- Files intentionally excluded:
- Data gaps to preserve:
- Claims requiring verification:
- Expected output files:
- Memory update candidate:
```

Also output `route.json` using `skill_hub/contracts/route.schema.json`.

## Guardrails

- The router should not generate analysis itself.
- The router should not produce report sections, investment judgments, conclusions, or recommendations.
- The router only decides which files should be read and combined.
- Select the fewest files that can answer the research question.
- Select exactly one primary core skill and at most two auxiliary core skills.
- Select multiple industry frameworks only when the business mechanism crosses industries.
- Do not treat unverified social signals as facts.
- Preserve `待验证` and `待补充` from the classified input.
