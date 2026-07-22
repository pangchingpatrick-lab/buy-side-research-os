# Event Audit Method

Use this method when prepared Research OS data includes early signals, public research claims, social posts, specialist articles, newsletters, or source clusters that need to be separated into usable evidence, leads, context, and noise.

This method is the operational companion to:

- `skill_hub/core_skills/skill_005_research_event_distillation.md`
- `skill_hub/contracts/research_event_contract.md`

## Objective

Before a signal enters a report, decide:

```text
Is this a useful research event?
What exactly does it claim?
Who is the real affected company or industry node?
What evidence supports it?
Is it early or already reflected?
How should the report use it?
What still needs verification?
```

## Workflow

### 1. Build An Event Ledger

Convert each source item into one or more event rows.

Minimum fields:

- source
- date
- claim
- ticker or industry node
- target role
- claim type
- evidence type
- evidence strength
- discovery stage
- report use

Use `research_event_contract.md` for the full schema.

### 2. Apply Ticker Role Discipline

Classify each ticker mention:

- focal beneficiary
- supplier
- customer
- peer
- comparison
- supply-chain context
- risk object
- context only
- unknown

Only focal beneficiaries, suppliers, and risk objects can directly drive company-level conclusions. Other roles can support context or validation.

### 3. Classify Claim And Evidence Type

Claim type examples:

- demand
- supply
- capacity
- pricing
- margin
- earnings
- guidance
- customer
- product
- competitive
- regulatory
- technical
- valuation
- market reaction
- risk

Evidence type examples:

- filing
- transcript
- company IR
- broker note
- specialist research
- news
- database
- social post
- customer signal
- supply-chain signal
- price action
- rumor

### 4. Grade Evidence Strength

- `strong`: primary or directly verifiable evidence.
- `medium`: credible specialist or cross-source evidence.
- `weak`: social post, rumor, unsupported opinion, screenshot, or price action.

Weak evidence can create a lead. It cannot be the only support for a high-confidence conclusion.

### 5. Classify Discovery Stage

Use:

- `early_discovery`: before broad recognition or obvious price reaction.
- `continuation_confirmation`: supports a thesis already forming.
- `late_validation`: confirms what the market likely knows.
- `after_fact_commentary`: explains an event after the fact.
- `context_only`: background only.
- `unknown`: not enough timing data.

### 6. Ask The Price-In Question

For public equities, every event should ask:

- Did the claim appear before the move?
- Did the stock already move before the claim?
- Is the claim already in consensus?
- Is there local market-reaction data?

If price or consensus data is missing, write `data_insufficient`. Do not guess.

### 7. Cluster Duplicate Thesis Events

Group repeated posts or claims under a `thesis_cluster_id`.

Avoid false sample size from:

- one thread split into many posts
- the same author repeating one thesis
- many accounts reposting the same news
- duplicate raw/readable records

### 8. Decide Report Use

Assign one:

- `use_as_lead`
- `use_as_supporting_evidence`
- `use_as_context`
- `send_to_validation`
- `exclude`

Only include in the report if the row is lead, supporting evidence, or context. Validation rows should become tasks.

## Required Output

```markdown
## Research Event Audit

| Event | Source | Ticker / Node | Role | Claim Type | Evidence | Strength | Discovery Stage | Price-In Status | Report Use |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |

## Thesis Clusters
| Cluster | Core Claim | Sources | Duplicate Risk | Needed Verification |
| --- | --- | --- | --- | --- |

## What Can Enter The Report
-

## What Must Stay As Validation
-

## What Should Be Excluded
-
```

## Guardrails

- Do not call an X post proof unless supported by stronger local evidence.
- Do not treat a customer ticker as the beneficiary.
- Do not inflate evidence by counting duplicates.
- Do not call a signal early without timing support.
- Do not infer price-in if local price or consensus evidence is missing.
- Do not let event audit replace the final industry or company analysis.
