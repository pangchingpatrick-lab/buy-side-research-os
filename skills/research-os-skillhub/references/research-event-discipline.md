# Research Event Discipline

Use this reference when public or early-signal sources materially influence the report.

Canonical files:

- `skill_hub/core_skills/skill_005_research_event_distillation.md`
- `skill_hub/contracts/research_event_contract.md`
- `skill_hub/analysis_methods/event_audit.md`
- `skill_hub/references/event_schema.md`
- `skill_hub/thinking_skills/skill_009_research_event_reasoning.md`
- `skill_hub/thinking_skills/skill_010_cross_industry_bottleneck_event_mapping.md` when the event implies a constrained layer or beneficiary map
- `skill_hub/research_methodologies/research_event_distillation.md`
- `skill_hub/references/ai_infrastructure_bottleneck_method.md` when AI infrastructure is involved
- `skill_hub/references/cross_industry_bottleneck_framework.md` when the signal implies demand shock and constrained-layer mapping
- `skill_hub/references/event_analysis_output_shape.md` when producing event analysis or memory candidates

## Core Idea

Do not move directly from public source to thesis.

Convert source items into research events:

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
-> price-in status
-> report use
```

Then reason through:

```text
research event
-> narrative logic
-> signal logic
-> risk logic
-> evidence stack
-> discovery stage
-> price-in / benchmark question
-> report-use decision
```

## Required Classification

Each material signal needs:

- claim type
- evidence type
- evidence strength
- ticker role
- research signal type
- discovery stage
- market reaction or price-in status
- report use

## Report Use Labels

- `use_as_lead`
- `use_as_supporting_evidence`
- `use_as_context`
- `send_to_validation`
- `exclude`

## Hard Rules

- X is a lead, not proof.
- a16z, GeoScope, newsletters, and public specialist posts are early-signal sources unless supported by stronger local evidence.
- Do not treat a context ticker as focal beneficiary.
- Do not count one thread as many independent sources.
- Do not claim early discovery without timing evidence.
- Do not infer price-in if price or consensus data is missing.
- Do not let a strong narrative bypass event-level reasoning.
- Do not turn one interesting public claim into Skill Hub memory before evaluation.

## How Skill 005 Feeds Skill 001-4

Skill 005 should produce clean event-level reasoning that upstream core skills can use:

- Skill 001 absorbs reusable reasoning patterns into the thinking library.
- Skill 002 uses AI-infrastructure bottleneck logic for technical architecture and supplier exposure.
- Skill 003 uses event role, evidence stack, and price-in logic for equity memo quality.
- Skill 004 uses demand shock, constrained layer, and scarce capability mapping for scarce-layer ranking.
