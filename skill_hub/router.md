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
-> Skill 001 白毛女蒸馏 or Skill 002 SemiAnalysis 蒸馏
-> Thinking Skills / Research Methodologies
-> Industry Frameworks
-> Analysis Methods
-> Report Templates
-> Buy-side Report
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

This extracts reusable thinking patterns before selecting an industry framework.

The key ordering rule is:

```text
how to think
-> what to inspect
-> how to validate
-> how to communicate
```

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

Do not use these core skills to generate a report. Use them to decide which thinking skills, research methodologies, industry frameworks, and validation methods should be used later.

### 2. Select Thinking Skills Or Research Methodologies

Select thinking skills and research methodologies before selecting the industry framework.

Use:

- `skill_hub/thinking_skills/thinking_skill_router.md` for small reusable reasoning units.
- `skill_hub/research_methodologies/methodology_evaluator.md` when comparing larger reasoning styles.
- `skill_hub/research_methodologies/serenity.md` when the packet starts from early signals and needs signal-to-thesis reasoning.

Examples:

- hidden upstream bottleneck: `skill_001_find_blind_spot.md` + `skill_003_reverse_value_chain_mapping.md` + `skill_004_constraint_discovery.md`
- broad narrative that needs sharpening: `skill_005_narrative_reframing.md` + `skill_002_industry_causal_chain.md`
- "is it priced in?" question: `skill_007_consensus_detection.md` + `skill_008_financial_validation_bridge.md`

### 3. Identify Industry

Select one or more industry frameworks.

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

### 5. Select Output Type

Select exactly one report template.

| Requested output | File to read |
| --- | --- |
| Short PM update | `skill_hub/report_templates/pm_brief.md` |
| Full industry report | `skill_hub/report_templates/industry_report.md` |
| Investment memo | `skill_hub/report_templates/investment_memo.md` |

If the user does not specify the output type:

- use `pm_brief.md` for quick research loop tests or PM updates
- use `industry_report.md` for broad sector or theme research
- use `investment_memo.md` for a specific thesis, company, long, short, or portfolio action

## Routing Examples

### AI infrastructure

Input cues:

- AI infrastructure
- GPUs, HBM, networking, optical modules
- listed-company exposure
- PM update requested

Files to read:

- `skill_hub/core_skills/skill_002_semianalysis_distillation.md`
- `skill_hub/thinking_skills/skill_001_find_blind_spot.md`
- `skill_hub/thinking_skills/skill_002_industry_causal_chain.md`
- `skill_hub/thinking_skills/skill_003_reverse_value_chain_mapping.md`
- `skill_hub/thinking_skills/skill_004_constraint_discovery.md`
- `skill_hub/thinking_skills/skill_007_consensus_detection.md`
- `skill_hub/thinking_skills/skill_008_financial_validation_bridge.md`
- `skill_hub/industry_frameworks/ai.md`
- `skill_hub/industry_frameworks/semiconductor.md`
- `skill_hub/analysis_methods/company_mapping.md`
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

- `skill_hub/core_skills/skill_002_semianalysis_distillation.md`
- `skill_hub/thinking_skills/skill_003_reverse_value_chain_mapping.md`
- `skill_hub/thinking_skills/skill_004_constraint_discovery.md`
- `skill_hub/thinking_skills/skill_006_alpha_migration.md`
- `skill_hub/thinking_skills/skill_008_financial_validation_bridge.md`
- `skill_hub/industry_frameworks/semiconductor.md`
- `skill_hub/analysis_methods/company_mapping.md`
- `skill_hub/analysis_methods/financial_validation.md`
- `skill_hub/analysis_methods/investment_decision.md`
- `skill_hub/report_templates/industry_report.md`

### SaaS earnings

Input cues:

- SaaS earnings
- ARR, NRR, guidance, billings, RPO
- company thesis or investment memo requested

Files to read:

- `skill_hub/research_methodologies/methodology_evaluator.md`
- `skill_hub/thinking_skills/skill_007_consensus_detection.md`
- `skill_hub/thinking_skills/skill_008_financial_validation_bridge.md`
- `skill_hub/industry_frameworks/software_saas.md`
- `skill_hub/analysis_methods/financial_validation.md`
- `skill_hub/analysis_methods/consensus_gap.md`
- `skill_hub/analysis_methods/valuation.md`
- `skill_hub/report_templates/investment_memo.md`

## Router Output Format

```markdown
# Skill Hub Route

- Topic:
- Research question:
- Core skill needed:
- Selected core skill files:
- Selected thinking skill files:
- Selected research methodology files:
- Classified industry:
- Selected industry framework files:
- Selected analysis method files:
- Selected report template:
- Why these files:
- Files intentionally excluded:
- Data gaps to preserve:
- Claims requiring verification:
```

## Guardrails

- The router should not generate analysis itself.
- The router should not produce report sections, investment judgments, conclusions, or recommendations.
- The router only decides which files should be read and combined.
- Select the fewest files that can answer the research question.
- Select multiple industry frameworks only when the business mechanism crosses industries.
- Do not treat unverified social signals as facts.
- Preserve `待验证` and `待补充` from the classified input.
