# Skill 003: Equity Research Playbook 蒸馏

This core skill distills the HHFinAi / Claude Equity Research Skills repository into the Research OS as a reusable buy-side equity research playbook.

Source methodology:

- Repository: `HHFinAi/claude-equity-research-skills`
- Source URL: `https://github.com/HHFinAi/claude-equity-research-skills`
- License noted by source repository: MIT

This file adapts the methodology into the local Skill Hub. It should not copy source wording, imitate a Claude skill format, or directly import external instructions. It should translate the external playbook into this system's own thinking, mapping, validation, and routing logic.

Important boundary:

Skill 003 is thinking-mode only. It does not collect data, browse websites, fetch filings, parse PDFs, call APIs, or create raw datasets. It only operates on classified packets, extracted evidence, and local `system_index` records that already exist in the Research OS.

## Position In The System

```text
Classified data packet / research case
-> Skill 001 / Skill 002 / Skill 003 core skill selection
-> Thinking Skills / Research Methodologies
-> Industry Framework Selection
-> Analysis Methods
-> Report Templates
-> Buy-side Report
```

## Skill Contract

- use_when: use as primary when the task is a PM-facing equity memo, single-company thesis, earnings/guidance interpretation, thematic beneficiary map, or investment decision from already-classified evidence.
- do_not_use_when: do not use as primary when the first-order problem is still finding the real scarce layer or technical bottleneck; in those cases use Skill 004 or Skill 002 first.
- input_required: local packet with company links, source list, evidence status, financial claims, operating metrics, and known gaps.
- output_contract: produce evidence inventory, business mechanism, company exposure map, financial implication, expectation gap, thesis/anti-thesis, and validation plan; do not collect data.
- default_auxiliary_skills: Skill 004 for scarce-layer routing, Skill 002 for technical infrastructure proof, Skill 001 for case distillation when a source teaches a new thinking pattern.
- compatible_frameworks: all industry frameworks, selected according to the classified packet.
- shared_references: use `references/cross_industry_bottleneck_framework.md` for theme-to-beneficiary mapping, `references/ai_infrastructure_bottleneck_method.md` for AI infrastructure equity work, and `references/event_analysis_output_shape.md` when public claims materially support the memo.
- required_analysis_methods: company mapping, financial validation, consensus gap, valuation, investment decision, validation loop.
- failure_modes: becomes a generic ticker list, overstates investment action without verified evidence, or treats theme exposure as earnings exposure.

## 1. Objective

Use this skill when the task requires institutional-style equity research discipline rather than only signal discovery or technical supply-chain analysis.

The objective is to convert already-collected and classified research material into a structured equity research path:

```text
question
-> evidence inventory
-> business mechanism
-> competitive position
-> financial implication
-> expectation gap
-> thesis / anti-thesis
-> validation plan
-> report routing
```

This skill should make the system better at reasoning through:

- earnings and guidance implications
- broker-note, filing, annual-report, and company-presentation evidence that has already been extracted into the data layer
- evaluating competitive moats
- building single-name theses
- mapping thematic beneficiaries
- checking supply-chain pass-through
- identifying corporate-network signals
- turning a broad theme into an investable listed-equity universe

## 2. When To Use

Use Skill 003 when the input contains one or more of:

- earnings release, earnings call, guidance, KPI update, margin bridge, or revenue growth discussion
- single-company research question
- company-specific investment thesis
- competitive positioning, moat, market share, pricing power, or business quality question
- already-extracted broker report, sell-side note, 10-K, annual report, fund commentary, or strategy report packet
- thematic investment question such as "who benefits from X"
- value-chain beneficiary mapping
- supply-chain pass-through question
- management quality, capital allocation, buybacks, M&A, or insider / board network question
- PM-facing memo request where the output must become an actionable research view

Prefer Skill 003 over Skill 001 when the input is not primarily a reasoning-case distillation exercise, but a live equity research task.

Prefer Skill 002 over Skill 003 when the first-order problem is technical architecture, manufacturing constraints, semiconductor process, HBM, GPU cluster design, optical interconnect, AI infrastructure, or datacenter physical bottlenecks.

Use Skill 003 together with Skill 002 when the question is both technical and investable, for example:

- HBM supply-demand and Micron earnings
- CPO value chain and listed-company beneficiaries
- AI capex and cloud / semiconductor margin pools
- datacenter power constraints and public-equity exposure

## 3. Distilled Source Playbooks

The source repository contains seven research workflows. In this Research OS, treat them as sub-playbooks under Skill 003.

### 3.1 Earnings Compare / Diagnose / Decide

Use when the question starts from earnings, guidance, KPI changes, management commentary, or post-print stock reaction.

Reasoning path:

```text
reported numbers
-> consensus / prior guide / peer comparison
-> quality of beat or miss
-> forward indicator
-> management language shift
-> stock expectation gap
-> research or investment implication
```

Required interpretation from the provided packet:

- revenue growth, segment growth, gross margin, operating margin, EPS, FCF, capex
- guidance raise / cut / reaffirmation
- backlog, RPO, ARR, NRR, book-to-bill, inventory, ASP, utilization, order rate where relevant
- management tone shift and explanation quality
- post-print price move and valuation context if available

Do not simply label a beat as good. Ask whether the beat came from durable demand, mix, pricing, cost timing, one-off items, or lowered expectations.

### 3.2 Competitive Advantage / Moat Assessment

Use when assessing business quality, durability, or why one company wins.

Reasoning path:

```text
market structure
-> source of advantage
-> customer lock-in / cost advantage / network / scale / brand / process edge
-> evidence that the advantage shows up in numbers
-> moat decay risk
```

Required tests:

- market share stability
- return profile and margin durability
- switching costs or customer dependency
- supplier and buyer power
- pricing power
- cost position
- innovation and product-cycle position
- regulatory or geopolitical resilience

Do not call something a moat because management says so. Require observable evidence.

### 3.3 Growth Stock / Platform Thesis

Use when the question concerns a high-growth company, platform, adoption curve, market narrative, or long-duration thesis.

Reasoning path:

```text
market adoption stage
-> category structure
-> platform or product position
-> reinvestment runway
-> management capital allocation
-> market narrative
-> what must become true
```

Required checks:

- whether the market is early, crossing the chasm, scaling, mature, or crowded
- whether the company is a platform, point product, infrastructure layer, marketplace, or distribution owner
- whether scale creates stronger economics or only higher spend
- whether capital allocation increases per-share value
- whether valuation already assumes the optimistic path

### 3.4 Supply-Chain Pass-Through / Beneficiary Mapping

Use when the question asks who benefits from a trend.

Reasoning path:

```text
trend or demand shock
-> constrained layer
-> scarce capability
-> value chain layer
-> candidate company
-> target role
-> product-level exposure
-> pass-through evidence
-> value captor / volume taker / optionality / cost bearer
-> price-in / consensus question
```

Required tests:

- distinguish real value capture from volume transit
- identify cost bearers, not only beneficiaries
- separate captive capacity from merchant opportunity
- validate with earnings calls, backlog, pricing, guide raises, mix shift, capex plans, or customer commentary
- map direct and indirect beneficiaries
- distinguish focal beneficiary, supplier, customer, peer, context, and risk object
- ask whether the event is early discovery, continuation confirmation, late validation, or after-fact commentary

Do not accept "exposed to the theme" as enough. Exposure must connect to revenue, margin, pricing power, or valuation.

When the theme starts from public claims, use:

- `skill_hub/core_skills/skill_005_research_event_distillation.md`
- `skill_hub/thinking_skills/skill_009_research_event_reasoning.md`
- `skill_hub/references/cross_industry_bottleneck_framework.md`

This prevents a public claim from becoming an equity conclusion before role, evidence, and price-in checks.

### 3.5 Thematic Investment Research

Use when building a broader theme, sector basket, or universe.

Reasoning path:

```text
theme statement
-> durability / relevance / investability / verifiability
-> value chain
-> universe construction
-> company deep dives
-> valuation architecture
-> risks and thesis killers
-> monitoring plan
```

Required outputs:

- theme definition and mechanism
- key drivers and falsifiers
- investable universe
- exposure classification
- company selection logic
- risk map
- monitoring metrics

Do not let a theme stay at slogan level. Convert it into mechanisms and measurable company exposures.

### 3.6 Investment Report Thinking / Evidence Interpretation

Use when already-extracted broker notes, filings, annual reports, fund letters, or strategy reports are involved.

Do not use this sub-playbook to open, scrape, parse, or collect documents. The data layer or a separate document-reading tool must extract the content first. Skill 003 only decides how to reason about the extracted evidence.

Reasoning path:

```text
document packet type
-> claims and estimates
-> tables / charts / exhibits
-> assumptions
-> valuation method
-> disagreement across sources
-> usable evidence / gaps
```

Required interpretation:

- thesis headline
- key estimates and revisions
- price target / valuation method when present
- forecast assumptions
- important charts / tables / exhibit claims
- what the report proves vs what it only asserts
- disagreement between reports if multiple sources exist

Do not summarize a report as if all claims are facts. Separate source opinion from verified evidence.

### 3.7 Corporate Network / Relationship Signal

Use when supplier-customer links, board relationships, executive networks, customer momentum, M&A signals, or insider relationship maps matter.

Reasoning path:

```text
relationship
-> strength of link
-> evidence source
-> possible business implication
-> alpha hypothesis
-> compliance / noise check
```

Required tests:

- whether the relationship is current and economically material
- whether it signals demand, strategic partnership, acquisition risk, or governance issue
- whether the link is already known by the market
- whether evidence is public and compliant

Do not overfit weak network links into a thesis.

## 4. Required Output From This Core Skill

Skill 003 should not directly write the final investment report. It should produce a route-ready research plan.

Use this output format:

```markdown
# Equity Research Playbook Route

## Task Type
- Primary task:
- Secondary task:
- Why Skill 003 is needed:

## Evidence Inventory
- Source packets used:
- Verified facts:
- Source opinions:
- Claims marked 待验证:
- Missing data marked 待补充:

## Selected Thinking Modes
- Earnings analysis:
- Competitive analysis:
- Growth / platform thesis:
- Supply-chain pass-through:
- Thematic research:
- Report evidence interpretation:
- Corporate network:

## Dominant Thinking Path
- Main reasoning action:
- Value-chain mapping required:
- Company exposure mapping required:
- Consensus / priced-in check required:
- Financial validation bridge required:
- Bottleneck framework used:
- Event reasoning required:

## Downstream Routing
- Thinking skills to read:
- Research methodologies to read:
- Industry frameworks to read:
- Analysis methods to read:
- Report template to use:

## Validation Plan
- Numbers to verify:
- Existing evidence packets to re-check:
- Missing evidence to request from the data layer:
- Earnings-call questions:
- Company / peer comparison needed:
- Thesis killers:
```

## 5. Routing Defaults

When Skill 003 is selected, usually combine it with:

- `skill_hub/thinking_skills/skill_002_industry_causal_chain.md`
- `skill_hub/thinking_skills/skill_007_consensus_detection.md`
- `skill_hub/thinking_skills/skill_008_financial_validation_bridge.md`
- `skill_hub/analysis_methods/financial_validation.md`
- `skill_hub/analysis_methods/company_mapping.md`
- `skill_hub/analysis_methods/consensus_gap.md`
- `skill_hub/analysis_methods/investment_decision.md`

Add `skill_hub/thinking_skills/skill_003_reverse_value_chain_mapping.md` and `skill_hub/thinking_skills/skill_006_alpha_migration.md` when the question involves indirect beneficiaries or profit-pool migration.

Add `skill_hub/thinking_skills/skill_004_constraint_discovery.md` when the question involves capacity, supply shortage, bottleneck, capex, backlog, pricing, or physical / operational constraints.

Add `skill_hub/analysis_methods/valuation.md` when the question asks whether an idea is mispriced, actionable, over-owned, crowded, too expensive, or still has upside.

## 6. Evidence Standards

The following standards are non-negotiable:

- preserve source URLs and document identifiers from the data packet
- separate verified fact, source opinion, and inference
- mark unsupported claims as `待验证`
- mark missing data as `待补充`
- do not collect, scrape, browse, fetch, or parse new source material
- do not fabricate financials, consensus numbers, valuation multiples, market sizes, rankings, or company exposures
- do not treat broker price targets, X posts, or management claims as truth
- do not convert a theme into a recommendation without financial validation
- do not use this skill to bypass industry frameworks; use it to decide which frameworks matter

## 7. Relationship With Existing Core Skills

Skill 001 extracts reusable reasoning patterns from strong cases.

Skill 002 extracts technical infrastructure and semiconductor-style reasoning.

Skill 003 applies institutional equity research discipline to turn classified evidence into an investable research path.

In practice:

```text
Skill 001 = learn how a strong case thinks
Skill 002 = understand technical / infrastructure economic mechanism
Skill 003 = convert evidence into equity research workflow
```

## Operating Rules

- Thinking still comes before industry framework selection.
- Skill 003 is not a data collector. It only structures thought after data has entered the local data layer.
- Use Skill 003 to structure the equity research workflow, not to force a conclusion.
- Every company thesis must include both thesis and anti-thesis.
- Every theme must include beneficiaries, cost bearers, and thesis killers.
- Every earnings view must explain whether expectations changed.
- Every source report must be treated as evidence with bias, not ground truth.
- Final report generation must still use the selected `report_templates/` file.
