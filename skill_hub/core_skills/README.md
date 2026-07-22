# Core Skills

`skill_hub/core_skills/` stores top-level skills that shape the research process before industry framework selection.

Core skills are used when the input is a research case, X thread, long-form note, chart summary, or technical case that should improve the Skill Hub. They distill reusable reasoning patterns before the system decides which industry framework to inspect.

## Position In The System

```text
External Data / Research Case
-> Skill 001 白毛女蒸馏, Skill 002 SemiAnalysis 蒸馏, Skill 003 Equity Research Playbook 蒸馏, Skill 004 Serenity 产业链卡点蒸馏, or Skill 005 Research Event Distillation
-> Thinking Skills / Research Methodologies
-> Industry Framework Selection
-> Analysis Methods
-> Report Templates
-> Buy-side Report
```

## Available Core Skills

## Core Skill Contract

Every core skill must follow:

- `skill_hub/contracts/core_skill_contract.md`

Every full system run must select:

- exactly one primary core skill
- zero to two auxiliary core skills

Do not use all core skills equally. A report should be driven by one dominant thinking mode and supported by targeted auxiliary skills.

### Skill 001: 白毛女蒸馏

File:

- `skill_hub/core_skills/skill_001_baimaonv_distillation.md`

Use when the case is mainly about:

- hidden upstream assets
- blind spots
- alpha migration
- value-chain reframing
- overlooked chokepoints
- market label vs actual economic role

### Skill 002: SemiAnalysis 蒸馏

File:

- `skill_hub/core_skills/skill_002_semianalysis_distillation.md`

Use when the case is mainly about:

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
- technical architecture
- supply-demand balance
- cost curve
- margin pool analysis

### Skill 003: Equity Research Playbook 蒸馏

File:

- `skill_hub/core_skills/skill_003_equity_research_playbook.md`

Use when the case or packet is mainly about:

- earnings, guidance, KPI changes, or management commentary
- single-name equity research
- competitive moat, market share, pricing power, or business quality
- growth stock / platform thesis construction
- thematic investment research and universe construction
- supply-chain pass-through and beneficiary mapping
- broker report, 10-K, annual report, fund commentary, or strategy report interpretation after extraction by the data layer
- corporate network, customer relationship, board link, or M&A signal analysis
- PM-facing investment memo where evidence must become an actionable research path

Skill 003 should usually be combined with thinking skills and analysis methods. It structures the equity research workflow; it does not collect data, fetch documents, replace source verification, replace industry frameworks, or replace report templates.

### Skill 004: Serenity 产业链卡点蒸馏

File:

- `skill_hub/core_skills/skill_004_serenity_bottleneck_mapping.md`

Use when the case or packet is mainly about:

- finding the real supply-chain bottleneck or scarce layer
- ranking value-chain layers before ranking companies
- AI infrastructure, datacenter, semiconductor, memory, CPO, robotics, power, cooling, energy infrastructure, space, or manufacturing supply-chain signals
- "who benefits from X"
- "which direction is worth researching first"
- market narrative vs actual economic role
- hidden upstream constraints
- company comparison by proximity to constraint
- converting local `system_index` records into a scarce-layer map

Skill 004 should usually be combined with `research_methodologies/serenity.md`, thinking skills, and analysis methods. It does not collect data or build raw datasets; it reasons over the local data layer.

### Skill 005: Research Event Distillation

File:

- `skill_hub/core_skills/skill_005_research_event_distillation.md`

Use when the case or packet is mainly about:

- converting X, a16z, GeoScope, specialist blog, or public research claims into auditable research events
- deciding whether a signal is lead, evidence, context, validation task, or noise
- separating claim, evidence type, ticker role, discovery stage, and price-in status
- judging whether a public view is early discovery, continuation confirmation, late validation, or after-fact commentary
- clustering duplicate thesis events before they influence a report
- converting source clusters into validated patterns and failure modes after evaluation

Skill 005 can be primary when the main task is signal audit or event distillation. For final single-name or industry reports, it is usually an auxiliary skill that audits early-signal evidence before Skill 003 or Skill 004 turns it into a PM-facing thesis.

When Skill 005 is selected, pair it with:

- `skill_hub/thinking_skills/skill_009_research_event_reasoning.md` for event-level reasoning, ticker role, evidence stack, discovery stage, price-in status, and report-use logic.
- `skill_hub/thinking_skills/skill_010_cross_industry_bottleneck_event_mapping.md` when the event points to a demand shock, constrained layer, scarce capability, or beneficiary chain.
- `skill_hub/research_methodologies/research_event_distillation.md` when public claims materially drive the analysis route.

## Relationship With Other Modules

- Core Skills decide how to distill a case before routing.
- Skill 001 teaches how a strong case thinks.
- Skill 002 teaches how technical infrastructure and supply-chain economics work.
- Skill 003 teaches how classified evidence becomes an institutional equity research path.
- Skill 004 teaches how to rank scarce layers and map companies by proximity to real constraints.
- Skill 005 teaches how to turn public claims into auditable research events before they become report evidence.
- Thinking Skills / Research Methodologies define how to reason.
- Industry Frameworks define what to inspect.
- Analysis Methods define how to validate.
- Report Templates define how to communicate.

## Guardrails

- Core skills do not collect data. They only use local `system_index` records, classified packets, or cases explicitly provided by the user.
- Do not copy wording from any source.
- Do not summarize only the conclusion.
- Do not treat stock recommendations as truth.
- Do not generate a report from a core skill.
- Preserve source traceability and verification status.
- Mark unsupported claims as `待验证`.
- Mark missing data as `待补充`.
