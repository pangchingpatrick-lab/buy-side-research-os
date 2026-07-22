# Skill 005: Research Event Distillation

This core skill distills the `ws-1191000505/research-event-distiller` methodology into the Research OS as a thinking and audit mode.

Source methodology:

- Repository: `ws-1191000505/research-event-distiller`
- Source URL: `https://github.com/ws-1191000505/research-event-distiller`

This file adapts only the thinking pattern. It does not use the source repository's scraping scripts, market-data enrichment scripts, CSV format, or data collection workflow.

## Thinking-Mode Companions

Skill 005 is the core entry point for event distillation, but it should not carry all reasoning alone.

When Skill 005 is selected, route to these thinking and methodology files as needed:

- `skill_hub/thinking_skills/skill_009_research_event_reasoning.md`: event-level reasoning, ticker role, evidence stack, discovery stage, price-in question, and report-use decision.
- `skill_hub/thinking_skills/skill_010_cross_industry_bottleneck_event_mapping.md`: demand shock, constrained layer, scarce capability, beneficiary mapping, falsifiable event, and benchmark / price-path audit.
- `skill_hub/research_methodologies/research_event_distillation.md`: full methodology for public-claim-to-research-event-to-report-use workflow.

## Boundary

Skill 005 does not collect data, search X, fetch prices, call APIs, or create raw datasets.

It operates only on:

- local `system_index` records
- context packets from `scripts/build_data_context.rb`
- source excerpts already provided by the user
- extracted report evidence already present in the Research OS

Default local data source:

```text
/Users/pangpatrick/Desktop/research_data/system_index/index.jsonl
/Users/pangpatrick/Desktop/research_data/system_index/documents/*.json
/Users/pangpatrick/Desktop/research_data/system_index/category_index/*.jsonl
```

## Position In The System

```text
Local data layer / source packet
-> Skill 005 Research Event Distillation
-> Event audit contract
-> Thinking Skills / Research Methodologies
-> Industry Framework Selection
-> Analysis Methods
-> Report Templates
-> Buy-side Report
```

## Skill Contract

- use_when: use as primary when the task is to audit early signals, convert public views into research events, decide whether a signal is useful, separate evidence from noise, or identify validated and failed signal patterns.
- auxiliary_use_when: use as auxiliary whenever a report relies heavily on X, a16z, GeoScope, specialist blogs, newsletters, or other early-signal sources.
- do_not_use_when: do not use as primary for a pure filing/transcript interpretation, a pure valuation memo, or a single-name earnings memo that already has verified primary evidence and does not depend on public early signals.
- input_required: local packet with source dates, source identifiers, author/publisher, text or summary, tickers, detected topics, source type, verification status, and known data gaps.
- output_contract: produce event ledger, ticker-role classification, claim/evidence tags, discovery-stage classification, duplicate thesis clusters, price-in / market-reaction questions, report-use decisions, and validation tasks.
- default_auxiliary_skills: Skill 003 for PM-facing equity conversion, Skill 004 for scarce-layer mapping, Skill 002 for technical infrastructure validation.
- compatible_frameworks: all industry frameworks; most common pairings are AI, semiconductor, software_saas, consumer_electronics, energy, space, and financials depending on the event topic.
- required_contracts: `skill_hub/contracts/research_event_contract.md`.
- required_analysis_methods: `analysis_methods/event_audit.md`, `company_mapping.md`, `consensus_gap.md`, `financial_validation.md`, `validation_loop.md`.
- failure_modes: treating viral posts as proof, confusing context tickers with beneficiaries, double-counting a thread, ignoring whether the market already reacted, or writing a thesis before assigning report use.

## 1. Objective

Convert raw public claims into auditable research events.

The goal is not to summarize an author. The goal is to answer:

```text
What exactly was claimed?
When was it claimed?
Which ticker or industry node does it affect?
What role does the ticker play?
What kind of evidence supports it?
Was it early, confirming, late, or after-the-fact?
Can the report use it, or should it become a validation task?
```

## 2. When To Make Skill 005 Primary

Make Skill 005 the primary core skill when the user's main question is:

- "这些信号哪些有用?"
- "这批 X / a16z / GeoScope 内容怎么进报告?"
- "哪些消息是 lead，哪些是证据，哪些是噪音?"
- "这个观点是不是已经 price in?"
- "从公开观点里沉淀什么研究规则?"
- "把一批 raw/readable 数据变成可审计 research events"
- "审计某个作者、某类信号、某个主题的历史有效性"

In this mode, Skill 005 controls the logic. It may then route to Skill 003, Skill 004, or Skill 002.

## 3. When To Use Skill 005 As Auxiliary

Use Skill 005 as an auxiliary skill when the final report is mainly:

- single-name investment memo: Skill 003 primary, Skill 005 audits early signals.
- AI infrastructure scarce-layer report: Skill 004 primary, Skill 005 audits source events and discovery stage.
- technical semiconductor thesis: Skill 002 primary, Skill 005 audits public claims before they enter the thesis.

## 4. Core Thinking Pattern

### 4.1 Eventize The Source

Do not move directly from "source says X" to a report conclusion.

First turn it into one or more event rows:

```text
source item
-> timestamp
-> claim
-> ticker / industry node
-> target role
-> claim type
-> evidence type
-> evidence strength
-> report use
```

One long post can contain several events. One thread can still represent one thesis cluster.

### 4.2 Separate Claim, Evidence, And Role

For each event, separate:

- `claim`: what the source is asserting
- `evidence`: why the source thinks it is true
- `target_role`: whether the ticker is beneficiary, customer, supplier, peer, risk object, or context

This prevents the most common report error: a company appears in a source, so the report treats it as the investable beneficiary.

### 4.3 Evidence Is Not Equal

Use this hierarchy:

```text
primary evidence
> specialist / cross-source evidence
> single social signal
> rumor / price action / unsupported claim
```

X and newsletters can be excellent leads. They are not final proof unless supported by stronger evidence.

### 4.4 Classify Discovery Stage

Every investable event must be classified as:

- `early_discovery`
- `continuation_confirmation`
- `late_validation`
- `after_fact_commentary`
- `context_only`
- `unknown`

The report should value early discovery and high-quality continuation differently. Late validation can still be useful, but it should not be called alpha discovery.

### 4.5 Ask The Price-In Question

For public equities, the event must ask whether the market already reflected the claim.

If market reaction data is not in the local packet, do not infer. Mark:

```text
market_reaction_status: price_data_missing
price_in_assessment: data_insufficient
```

Then send it to validation.

### 4.6 Cluster Duplicate Thesis Events

Do not count each post in a thread as independent evidence.

Cluster by:

- same source and same thread
- same thesis repeated across posts
- same ticker and same claim
- same industry bottleneck with no new evidence

The unit of evidence is the thesis event, not the number of lines.

### 4.7 Apply Event-Level Reasoning

Use `skill_hub/thinking_skills/skill_009_research_event_reasoning.md` when the question is whether a public signal is useful, early, already priced, duplicated, unsupported, or only context.

This thinking skill should explicitly separate:

- narrative logic
- signal logic
- risk logic

Do not treat a good story as a good signal until role, evidence, discovery stage, and price-in are checked.

### 4.8 Apply Bottleneck Event Mapping When Relevant

Use `skill_hub/thinking_skills/skill_010_cross_industry_bottleneck_event_mapping.md` when the event points to a demand shock, constrained layer, scarce capability, or underpriced beneficiary.

The required chain is:

```text
demand shock
-> constrained layer
-> scarce capability
-> underpriced beneficiary
-> falsifiable event
-> benchmark / price-path audit
```

### 4.9 Decide Report Use Before Writing

Every event must become one of:

- `use_as_lead`
- `use_as_supporting_evidence`
- `use_as_context`
- `send_to_validation`
- `exclude`

The report may only use the first three categories, and must mark confidence. `send_to_validation` becomes validation tasks.

## 5. Required Output From This Core Skill

Skill 005 should not directly write the final report. It should produce a route-ready event audit.

Use this format:

```markdown
# Research Event Audit

## Scope
- Topic:
- Time window:
- Source packet:
- Local data source:

## Event Ledger
| Event | Source | Ticker / Node | Target Role | Claim Type | Evidence Type | Strength | Discovery Stage | Report Use |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |

## Thesis Clusters
| Cluster | Core Claim | Sources | Duplicate Risk | Market-Reaction Question | Validation Needed |
| --- | --- | --- | --- | --- | --- |

## Report-Usable Signals
-

## Validation Tasks
-

## Excluded Noise
-

## Downstream Routing
- Primary / auxiliary core skill recommendation:
- Thinking skills:
- Analysis methods:
- Report template:
```

## 6. Memory Update Rule

After a report is evaluated, event lessons can be proposed for:

- `skill_hub/memory/event_validated_patterns.md`
- `skill_hub/memory/event_failure_modes.md`

Do not update memory directly from one unevaluated source item.
