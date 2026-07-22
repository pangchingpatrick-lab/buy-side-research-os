# Skill 009: Research Event Reasoning

This thinking skill turns public claims into reasoning units that can be used, rejected, or sent to validation before they influence a report.

It is the thinking-mode companion to:

- `skill_hub/core_skills/skill_005_research_event_distillation.md`
- `skill_hub/contracts/research_event_contract.md`
- `skill_hub/analysis_methods/event_audit.md`

It adapts the reasoning pattern from event-level research skills: eventize the claim, classify ticker role, evaluate evidence stack, judge discovery stage, ask whether the market already reacted, and preserve failure modes.

## Core Question

```text
What did this source actually claim, who is economically exposed, what evidence supports it, was it early enough to matter, and how should a report use it?
```

## Use When

Use this thinking skill when the packet includes:

- X posts, a16z, GeoScope, specialist newsletters, blogs, public research posts, or field-check style commentary
- multiple posts around one thesis
- public claims that mention tickers, customers, suppliers, products, capex, pricing, earnings, guidance, or market reaction
- questions about whether a signal is lead, evidence, context, validation task, or noise
- questions about whether a public view is early, late, already priced in, or only after-the-fact commentary

## Thinking Chain

### 1. Eventize Before Concluding

Never move directly from prose into a report conclusion.

Convert the source into an event:

```text
source item
-> timestamp
-> claim
-> ticker / industry node
-> target role
-> claim type
-> evidence type
-> evidence strength
-> discovery stage
-> price-in question
-> report use
```

One source can contain multiple events. A thread can still be one thesis cluster if the posts repeat one claim.

### 2. Separate Narrative, Signal, And Risk Logic

For every event, separate:

- narrative logic: why the story could be economically true
- signal logic: whether the event appeared early enough and with enough evidence to matter
- risk logic: where the source could be late, duplicated, unsupported, too broad, or already priced in

Do not treat a good narrative as a good signal until timing and evidence are checked.

### 3. Apply Ticker Role Discipline

Classify each ticker:

- focal beneficiary
- supplier
- customer
- peer
- comparison
- supply-chain context
- risk object
- context only
- unknown

Only focal beneficiaries, suppliers, and risk objects can directly support company-level conclusions. Customers, peers, comparisons, and context tickers can support demand or industry evidence, but should not become investable beneficiaries by default.

### 4. Build The Evidence Stack

Grade the event by evidence stack, not by how confident the source sounds.

Evidence hierarchy:

```text
primary evidence
> credible specialist / cross-source evidence
> single public signal
> rumor, chart-only reasoning, unsupported opinion, or price action
```

The strongest early-signal events usually combine multiple evidence types, for example customer signal, supply-chain constraint, earnings/order evidence, field check, pricing, backlog, capacity, or management commentary.

### 5. Classify Discovery Stage

Every event should be labeled:

- `early_discovery`: appears before broad recognition or meaningful price reaction
- `continuation_confirmation`: confirms a thesis already forming, but still adds useful evidence
- `late_validation`: likely true, but mostly known or priced
- `after_fact_commentary`: explains what already happened
- `context_only`: useful background but not a signal
- `unknown`: timing evidence is missing

Continuation confirmation can still be useful. Do not force a binary early/late judgment.

### 6. Ask The Price-In Question

For public equities, ask:

- Did the source appear before or after the move?
- Did the stock already rerate before the event?
- Is the claim already in consensus narrative or estimates?
- Does the local packet include price or market-reaction evidence?
- Which benchmark or peer basket should be used?

If market data is missing, write:

```text
market_reaction_status: price_data_missing
price_in_assessment: data_insufficient
```

Do not infer market reaction from memory.

### 7. Cluster Before Counting

Avoid false sample size.

Cluster events when they come from:

- the same source item or thread
- the same author repeating one thesis
- reposted generic news
- many posts with the same ticker and same claim but no new evidence
- one source split into multiple local records

The unit is a thesis event, not a post count.

### 8. Decide Report Use

Assign one report-use label:

- `use_as_lead`
- `use_as_supporting_evidence`
- `use_as_context`
- `send_to_validation`
- `exclude`

The report can use lead, supporting evidence, and context. Validation items become tasks. Excluded items should not influence the thesis.

## Output Format

```markdown
## Research Event Reasoning

| Event | Claim | Ticker / Node | Role | Evidence Stack | Discovery Stage | Price-In Status | Report Use | Reason |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |

## Thesis Clusters
| Cluster | Core Claim | Events | Duplicate Risk | What Is New | Validation Needed |
| --- | --- | --- | --- | --- | --- |

## Reasoning Notes
- Narrative logic:
- Signal logic:
- Risk logic:
- Price-in question:
- Benchmark or peer basket:
```

## Guardrails

- Do not call weak public evidence proof.
- Do not let a context ticker become the main beneficiary.
- Do not count duplicate posts as independent confirmation.
- Do not call a thesis early without timing support.
- Do not treat missing price data as negative evidence.
- Do not write a final report from this skill alone; route to methodology, framework, analysis method, and template.
