# Thinking Skill Router

This router explains how to combine thinking skills for a research task.

The router does not generate a report. It selects reusable reasoning actions after the research packet is classified and before the final industry framework is selected.

Thinking comes first:

```text
classified packet
-> thinking skill route
-> candidate industry framework
-> analysis methods
-> report template
```

## Input

Expected input:

- research topic
- research question
- classified industry
- relevant industry framework
- signal type
- related companies
- verified facts
- unverified claims
- data gaps
- requested output type

## Routing Logic

Select the smallest set of thinking skills that can answer the research question.

| Need | Thinking skill |
| --- | --- |
| Find what the market is missing | `skill_001_find_blind_spot.md` |
| Connect signal to business mechanism | `skill_002_industry_causal_chain.md` |
| Find indirect or upstream beneficiaries | `skill_003_reverse_value_chain_mapping.md` |
| Identify bottlenecks or scarce resources | `skill_004_constraint_discovery.md` |
| Turn vague narrative into testable thesis | `skill_005_narrative_reframing.md` |
| Track where profit pools are moving | `skill_006_alpha_migration.md` |
| Identify consensus and priced-in assumptions | `skill_007_consensus_detection.md` |
| Convert thesis into financial validation questions | `skill_008_financial_validation_bridge.md` |
| Turn public claims into auditable event reasoning | `skill_009_research_event_reasoning.md` |
| Map an event into constrained-layer / beneficiary logic | `skill_010_cross_industry_bottleneck_event_mapping.md` |

## Common Skill Combinations

### Early-signal opportunity

Use when a topic begins with X, HN, Product Hunt, founder commentary, or expert signals.

- `skill_002_industry_causal_chain.md`
- `skill_005_narrative_reframing.md`
- `skill_009_research_event_reasoning.md`
- `skill_007_consensus_detection.md`
- `skill_008_financial_validation_bridge.md`

### Upstream bottleneck or supply-chain opportunity

Use when value may sit upstream from the obvious beneficiary.

- `skill_001_find_blind_spot.md`
- `skill_003_reverse_value_chain_mapping.md`
- `skill_004_constraint_discovery.md`
- `skill_006_alpha_migration.md`
- `skill_010_cross_industry_bottleneck_event_mapping.md`
- `skill_008_financial_validation_bridge.md`

### Consensus-gap PM brief

Use when the PM needs to know whether the market is wrong or whether the idea is already priced in.

- `skill_001_find_blind_spot.md`
- `skill_007_consensus_detection.md`
- `skill_009_research_event_reasoning.md`
- `skill_002_industry_causal_chain.md`
- `skill_008_financial_validation_bridge.md`

### AI infrastructure upstream opportunity

Use:

- `skill_001_find_blind_spot.md`
- `skill_002_industry_causal_chain.md`
- `skill_003_reverse_value_chain_mapping.md`
- `skill_004_constraint_discovery.md`
- `skill_005_narrative_reframing.md`
- `skill_009_research_event_reasoning.md`
- `skill_010_cross_industry_bottleneck_event_mapping.md`
- `skill_007_consensus_detection.md`
- `skill_008_financial_validation_bridge.md`

Why:

- `find_blind_spot` checks what the market may miss beyond obvious GPU exposure.
- `industry_causal_chain` links AI demand to operating and financial metrics.
- `reverse_value_chain_mapping` finds upstream beneficiaries.
- `constraint_discovery` identifies bottlenecks such as memory, networking, optical, power, or data center capacity.
- `narrative_reframing` converts broad AI demand into testable mechanisms.
- `research_event_reasoning` prevents public claims from entering the thesis before role, evidence, stage, and price-in checks.
- `cross_industry_bottleneck_event_mapping` turns the signal into demand shock, constrained layer, scarce capability, and beneficiary logic.
- `consensus_detection` asks what is already priced in.
- `financial_validation_bridge` converts the reasoning path into source-checkable validation questions.

## Router Output Format

```markdown
# Thinking Skill Route

- Topic:
- Research question:
- Selected thinking skills:
- Candidate industry framework:
- Why these skills:
- Skills intentionally excluded:
- Expected reasoning path:
- Required validation questions:
- Claims still marked 待验证:
- Data still marked 待补充:
```

## Guardrails

- Do not select every thinking skill by default.
- Do not use thinking skills to fabricate evidence.
- Do not use thinking skills as final validation.
- Preserve source credibility and verification status from the research packet.
- Route final validation to `skill_hub/analysis_methods/`.
- Route final communication to `skill_hub/report_templates/`.
