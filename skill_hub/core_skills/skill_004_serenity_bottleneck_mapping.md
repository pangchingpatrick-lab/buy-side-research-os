# Skill 004: Serenity 产业链卡点蒸馏

This core skill distills the `muxuuu/serenity-skill` methodology into the Research OS as a local-data-layer thinking mode.

Source methodology:

- Repository: `muxuuu/serenity-skill`
- Source URL: `https://github.com/muxuuu/serenity-skill`
- License noted by source repository: MIT

This file adapts the methodology into the local Skill Hub. It should not copy source wording, imitate the original skill format, or import its data-collection workflow. It keeps only the thinking pattern: start from a market narrative, map the real system, find the scarce layer, grade evidence, rank research priorities, and define what would prove the idea wrong.

Important boundary:

Skill 004 is thinking-mode only. It does not collect data, browse websites, fetch filings, parse PDFs, call APIs, create candidate universes from the internet, or create raw datasets. It only operates on classified packets, extracted evidence, and local `system_index` records that already exist in the Research OS.

Default local data source:

```text
/Users/pangpatrick/Desktop/research_data/system_index/index.jsonl
/Users/pangpatrick/Desktop/research_data/system_index/documents/*.json
/Users/pangpatrick/Desktop/research_data/system_index/category_index/*.jsonl
```

## Position In The System

```text
Local data layer / system_index packet
-> Skill 004 Serenity 产业链卡点蒸馏
-> Thinking Skills / Research Methodologies
-> Industry Framework Selection
-> Analysis Methods
-> Report Templates
-> Buy-side Report
```

## Skill Contract

- use_when: use as primary when the packet asks where the scarce layer is, who benefits from a theme, which value-chain layer matters first, or why a market narrative may be misframed.
- do_not_use_when: do not use as primary when the task is only to interpret one company's earnings, write a valuation memo, or distill a single excellent case for reusable lessons.
- input_required: local packet with theme signals, company/ticker mentions, value-chain clues, source credibility, known data gaps, and unverified claims.
- output_contract: produce system-change statement, layer ranking, company proximity map, market-missing interpretation, evidence grades, failure conditions, and downstream routing; do not stop before analysis methods if a final report is requested.
- default_auxiliary_skills: Skill 002 for technical validation, Skill 003 for PM-facing company and financial conversion.
- compatible_frameworks: AI, semiconductor, energy, space, consumer_electronics, software_saas, financials when the scarce-layer mechanism crosses industries.
- shared_references: `references/cross_industry_bottleneck_framework.md` is the global backbone of this skill; `references/ai_infrastructure_bottleneck_method.md` is the AI / semiconductor specialization; `references/event_analysis_output_shape.md` is used when public events support the map.
- required_analysis_methods: company mapping, financial validation, consensus gap, investment decision, validation loop; add valuation when actionability or priced-in debate matters.
- failure_modes: creates an elegant layer map without financial validation, overstates weak X signals, or ignores valuation and timing risk.

## 1. Objective

Use this skill to turn a theme, signal cluster, or company list into a scarce-layer research map.

The objective is not to produce a generic industry summary. The objective is to answer:

```text
市场叙事是什么
-> 真实系统变化是什么
-> 哪些层级会先变紧
-> 哪些公司最靠近稀缺层
-> 哪些证据是真的
-> 市场可能没看清什么
-> 什么情况说明判断错了
```

## 2. When To Use

Use Skill 004 when the input contains one or more of:

- AI infrastructure, datacenter, semiconductor, memory, CPO, optical interconnect, robotics, power, cooling, energy infrastructure, space, or manufacturing supply-chain signals
- "who benefits from X"
- "哪个方向最值得研究"
- "产业链卡点"
- "瓶颈"
- "供应链受益者"
- "市场没看清的地方"
- "从 raw data 里找优先研究方向"
- broad theme scan where the correct answer should rank layers before companies
- company comparison where the question is which company sits closer to the real constraint

Prefer Skill 004 over Skill 003 when the first-order question is not "how to write a single-name equity memo" but "where is the scarce layer and who is closest to it."

Use Skill 004 together with Skill 002 when the scarce layer depends on technical architecture, manufacturing limits, HBM, CPO, advanced packaging, GPU clusters, power, or datacenter constraints.

Use Skill 004 together with Skill 003 when the scarce-layer conclusion must become a PM-facing equity thesis or investment memo.

## 3. Core Thinking Pattern

Skill 004 now uses the shared bottleneck framework as its backbone:

```text
demand shock
-> constrained layer
-> scarce capability
-> underpriced beneficiary
-> falsifiable event
-> forward / benchmark audit
```

Read:

- `skill_hub/references/cross_industry_bottleneck_framework.md` for the general method.
- `skill_hub/references/ai_infrastructure_bottleneck_method.md` for AI infrastructure, HBM, CPO, datacenter, semiconductor, power, cooling, and packaging cases.

This does not replace Skill 004. It strengthens Skill 004's layer-ranking discipline and makes the same logic reusable across industries.

### 3.1 Translate Narrative Into System Change

Do not start from tickers. Start from the system.

Reasoning path:

```text
market narrative
-> actual demand or architecture change
-> stressed system variable
-> required technical / economic change
-> constrained layer
```

Ask:

- What changed in the real system?
- Is the pressure from bandwidth, power, latency, heat, capacity, yield, qualification, purity, regulation, grid connection, or capital intensity?
- Which old design, supplier base, or process step becomes insufficient?
- Is the change cyclical, structural, policy-driven, or event-driven?

### 3.2 Rank Layers Before Companies

The first output should be a layer ranking, not a ticker ranking.

Use these layers as a checklist:

- end demand / capex source
- system integrator / OEM
- module / subsystem
- chip / device / critical component
- process / assembly / packaging / testing
- equipment / metrology
- material / consumable / specialty input
- physical infrastructure

For each layer, classify:

- controls the scarce layer
- supplies the scarce layer
- benefits from demand but has limited control
- has story exposure but weak proof
- is likely a cost bearer

### 3.3 Identify Scarce Layers

A layer deserves priority when multiple scarcity signals stack:

- low supplier count
- long qualification cycle
- difficult expansion
- specialized equipment or know-how
- material purity or yield constraint
- customer certification barrier
- long lead time
- capacity reservation, prepayment, long-term contract, or visible urgency
- public market still labels the company by an old category

Use this logic:

```text
system pressure
-> scarce layer
-> evidence of tightness
-> company proximity
-> financial validation path
```

For public events, add:

```text
source timestamp
-> discovery stage
-> evidence stack
-> price-in / benchmark question
-> report-use decision
```

### 3.4 Map Companies By Proximity To Constraint

Company ranking should follow layer ranking.

For each company, identify:

- exact value-chain position
- what it constrains or enables
- whether it controls the scarce layer or only benefits from downstream demand
- product-level exposure
- pricing power or margin pass-through
- customer validation
- evidence strength
- main reason the view could be wrong

Do not rank a company highly only because it is popular, large, or thematically related.

### 3.5 Grade Evidence From Local Packets

Skill 004 should not fetch new evidence. It should grade the evidence already present in the local data layer.

Evidence labels:

- `Strong`: filings, official announcements, earnings transcripts, investor presentations, regulatory / project documents, technical standards, patents, contracts, orders, capacity reservations, or other primary evidence already present in the packet.
- `Medium`: credible media, trade publications, specialist analysis, company website / product pages, or cross-company public evidence already present in the packet.
- `Weak`: X posts, social threads, forum discussion, screenshots, price action, or channel checks without primary confirmation.
- `Needs checking`: important claim with insufficient local evidence; send back to the data layer as a validation request.

Rules:

- X posts are leads, not proof.
- A scarce-layer claim should not be treated as high confidence if the local packet contains only weak evidence.
- Missing proof should become a validation task, not a fabricated conclusion.

### 3.6 Explain What The Market May Be Missing

The goal is not "theme is hot." The goal is:

```text
market label
-> actual economic role
-> hidden constraint
-> underestimated beneficiary / overestimated beneficiary
-> evidence needed for repricing
```

Ask:

- Is the market focusing on the obvious downstream winner while missing upstream scarcity?
- Is the company priced as an old business but exposed to a new constraint?
- Is the bottleneck real enough to affect revenue, margin, orders, capex, inventory, EPS, or valuation?
- What evidence would make investors update the label?

### 3.7 Define Failure Conditions

Every scarce-layer thesis needs an explicit way to be wrong.

Common failure conditions:

- alternate suppliers qualify faster than expected
- customer urgency does not convert into orders
- capacity expands faster than demand
- pricing power fails to appear in margins
- inventory or receivables rise faster than revenue
- customer concentration risk overwhelms the opportunity
- policy, export control, approval, or financing risk blocks conversion
- valuation already prices in the scarce-layer story

## 4. Required Output From This Core Skill

Skill 004 should not directly write the final report. It should produce a route-ready scarce-layer map.

Use this output format:

```markdown
# Serenity Scarce-Layer Route

## Scope
- Theme / signal cluster:
- Market:
- Time window:
- Local data source:

## System Change
- Market narrative:
- Actual system change:
- Stressed variable:
- Why now:

## Layer Ranking
| Rank | Layer | Why It May Be Scarce | Evidence Strength | Missing Proof |
| --- | --- | --- | --- | --- |

## Company Proximity Map
| Company | Ticker | Chain Position | What It Constrains | Evidence Strength | Main Risk |
| --- | --- | --- | --- | --- | --- |

## Market May Be Missing
- Current market label:
- Alternative interpretation:
- What would cause repricing:

## Downstream Routing
- Core skills to combine:
- Thinking skills to read:
- Research methodologies to read:
- Industry frameworks to read:
- Analysis methods to read:
- Report template to use:

## Validation Requests Back To Data Layer
- Claims marked 待验证:
- Missing primary evidence:
- Earnings-call / filing checks:
- Customer / capacity / order checks:
- Financial metrics to verify:

## Failure Conditions
- What would make the scarce-layer ranking wrong:
- What would make top company candidates weaker:
```

## 5. Routing Defaults

When Skill 004 is selected, usually combine it with:

- `skill_hub/research_methodologies/serenity.md`
- `skill_hub/research_methodologies/research_event_distillation.md` when public claims materially support the scarce-layer map
- `skill_hub/references/cross_industry_bottleneck_framework.md`
- `skill_hub/references/ai_infrastructure_bottleneck_method.md` for AI infrastructure cases
- `skill_hub/thinking_skills/skill_001_find_blind_spot.md`
- `skill_hub/thinking_skills/skill_002_industry_causal_chain.md`
- `skill_hub/thinking_skills/skill_003_reverse_value_chain_mapping.md`
- `skill_hub/thinking_skills/skill_004_constraint_discovery.md`
- `skill_hub/thinking_skills/skill_009_research_event_reasoning.md` when early signals or public claims matter
- `skill_hub/thinking_skills/skill_010_cross_industry_bottleneck_event_mapping.md`
- `skill_hub/thinking_skills/skill_006_alpha_migration.md`
- `skill_hub/thinking_skills/skill_007_consensus_detection.md`
- `skill_hub/thinking_skills/skill_008_financial_validation_bridge.md`
- `skill_hub/analysis_methods/company_mapping.md`
- `skill_hub/analysis_methods/financial_validation.md`
- `skill_hub/analysis_methods/consensus_gap.md`
- `skill_hub/analysis_methods/investment_decision.md`

Select industry frameworks after the scarce-layer reasoning path is chosen.

Common framework combinations:

- AI infrastructure / datacenter: `ai.md` + `semiconductor.md` + `energy.md` when power or cooling matters
- HBM / memory / advanced packaging: `semiconductor.md`
- CPO / optical interconnect: `ai.md` + `semiconductor.md`
- robotics: `ai.md` + `semiconductor.md` + relevant industrial / consumer framework if available
- space supply chain: `space.md` + `semiconductor.md` when electronics or satellite components matter

## 6. Relationship With Other Core Skills

Skill 001 extracts reusable reasoning patterns from strong cases.

Skill 002 explains technical infrastructure and supply-chain economics.

Skill 003 turns classified evidence into a full equity research workflow.

Skill 004 ranks scarce layers and maps companies by proximity to real constraints.

In practice:

```text
Skill 001 = learn from strong cases
Skill 002 = understand technical mechanism
Skill 003 = structure equity research workflow
Skill 004 = find scarce layer / bottleneck / market blind spot
```

## Operating Rules

- Skill 004 is not a data collector. It only reasons over the local data layer.
- Rank layers before companies.
- Separate scarce-layer priority from company priority.
- Treat social posts as leads unless local packets contain stronger evidence.
- Always state evidence strength.
- Always state what proof is missing.
- Always include what would make the judgment wrong.
- Do not give direct trade instructions. Rank by research priority and leave trading decisions to the user.
