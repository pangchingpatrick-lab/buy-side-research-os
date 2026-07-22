# Research Event Distillation Methodology

This methodology defines how the Research OS turns public views into reusable research logic.

It does not collect data, scrape X, fetch prices, or run external APIs. It operates only on local Research OS packets, `system_index` records, and evidence already provided by the user or data layer.

## Source Of The Method

This methodology adapts the useful thinking pattern from event-level public-research skill systems:

```text
public claim
-> timestamped research event
-> ticker role
-> evidence stack
-> discovery stage
-> price-in / benchmark check
-> report-use decision
-> validated pattern or failure mode after evaluation
```

It does not import the source repository's data collection workflow or market-data scripts.

## When To Use

Use this methodology when:

- X, a16z, GeoScope, specialist blogs, newsletters, or public research posts materially affect the report
- a packet contains many public claims and the system must decide what is lead, proof, context, or noise
- the user asks whether public signals have real research value
- a report needs to know whether a thesis is early, already priced in, or only after-the-fact commentary
- the Skill Hub should learn reusable signal patterns or failure modes after evaluation

## Required Read Order

1. `skill_hub/core_skills/skill_005_research_event_distillation.md`
2. `skill_hub/contracts/research_event_contract.md`
3. `skill_hub/references/event_schema.md`
4. `skill_hub/references/source_evidence_taxonomy.md`
5. `skill_hub/references/ticker_role_taxonomy.md`
6. `skill_hub/thinking_skills/skill_009_research_event_reasoning.md`
7. `skill_hub/thinking_skills/skill_010_cross_industry_bottleneck_event_mapping.md` when the event is about constrained layers or beneficiaries
8. `skill_hub/analysis_methods/event_audit.md`
9. `skill_hub/memory/event_validated_patterns.md` and `skill_hub/memory/event_failure_modes.md` only after evaluation

## Method Workflow

### 1. Normalize Source Items Into Events

Each material source item should become one or more research events.

Minimum logic:

```text
source item
-> claim
-> source/date traceability
-> ticker or industry node
-> target role
-> claim type
-> evidence type
-> evidence strength
-> discovery stage
-> market reaction / price-in status
-> report use
```

### 2. Separate The Three Logics

Before using the event, separate:

- narrative logic: why the claim could be economically true
- signal logic: whether the event timing and evidence quality make it useful
- risk logic: why the claim could be late, crowded, duplicated, unsupported, or wrongly mapped

### 3. Evaluate Evidence Stack

Use evidence stack rather than tone.

Strong events usually combine several independent evidence types:

- primary source
- specialist research
- customer signal
- supply-chain signal
- earnings, guidance, orders, backlog, capex, pricing, inventory, margin, or management commentary
- independent market reaction or field check

Weak events can create leads, but they cannot become high-confidence proof by themselves.

### 4. Classify Role And Discovery Stage

The system must decide:

- whether the ticker is a focal beneficiary, supplier, customer, peer, context, or risk object
- whether the event is early discovery, continuation confirmation, late validation, after-fact commentary, context only, or unknown

This avoids two common mistakes:

- treating every mentioned company as the investable beneficiary
- calling a late explanation an early signal

### 5. Ask Whether The Thesis Is Already Priced In

Public equity reports must ask:

- what consensus likely believed before the event
- whether the stock already moved before the event
- whether the source was early or only explained a move
- which benchmark or peer basket is relevant
- whether local market reaction data is missing

If missing, mark the issue as `data_insufficient` and route it to validation.

### 6. Convert Into Report Use

Each event becomes one of:

- `use_as_lead`
- `use_as_supporting_evidence`
- `use_as_context`
- `send_to_validation`
- `exclude`

Only the first three can enter the report. Validation and excluded items should not drive conclusions.

### 7. Sediment Learning Only After Evaluation

Do not turn one interesting post into a permanent rule.

After a report or event audit is evaluated, the system can propose updates to:

- `skill_hub/memory/event_validated_patterns.md`
- `skill_hub/memory/event_failure_modes.md`
- `skill_hub/memory/playbook_updates.md`

Learn patterns such as:

- which evidence stacks worked
- which role classifications prevented mistakes
- which signals were late
- which public-source patterns were misleading
- which benchmark or price-in checks changed the conclusion

## Output Standard

```markdown
# Research Event Distillation

## Event Ledger
| Event | Source | Claim | Ticker / Node | Role | Evidence Stack | Discovery Stage | Price-In | Report Use |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |

## Thesis Clusters
| Cluster | Core Claim | Sources | Duplicate Risk | New Evidence | Validation Needed |
| --- | --- | --- | --- | --- | --- |

## What Can Enter The Report
-

## What Must Stay In Validation
-

## Excluded Or Downgraded Items
-

## Candidate Memory Lessons
-
```

## Guardrails

- Do not collect new data.
- Do not browse from this methodology.
- Do not copy public posts into memory.
- Do not treat a public claim as proof without stronger evidence.
- Do not treat missing price data as negative proof.
- Do not let broad industry labels replace company or constrained-layer mapping.
