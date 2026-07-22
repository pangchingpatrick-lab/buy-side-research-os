# Skill 001: 白毛女蒸馏

This core skill distills high-quality research cases into reusable thinking skills before industry framework selection.

It should extract how a strong research case thinks. It should not copy the case, summarize the stock opinion, or treat any recommendation as truth.

## Data Boundary

Skill 001 is thinking-mode only. It does not collect data, browse websites, fetch filings, parse PDFs, call APIs, or create raw datasets.

Use only:

- local records from `/Users/pangpatrick/Desktop/research_data/system_index/`
- classified packets built from `system_index`
- research cases explicitly provided by the user

If evidence is missing, mark it as `待补充` or `待验证` and send the need back to the data layer. Do not invent or fetch missing evidence inside this skill.

## Position In The System

```text
External Data / Research Case
-> Skill 001 白毛女蒸馏
-> Thinking Skills / Research Methodologies
-> Industry Framework Selection
-> Analysis Methods
-> Report Template
-> Buy-side Report
```

## Skill Contract

- use_when: use as primary when the input is a high-quality research case that should teach the system a reusable thinking pattern; use as auxiliary when a report needs case-level meta-learning after the main research route is complete.
- do_not_use_when: do not use as the primary skill for normal daily data packets, company memos, or broad industry reports that need direct company mapping and financial validation first.
- input_required: local case, thread, note, chart, or packet with source, date, author, verification status, reasoning path, and known evidence gaps.
- output_contract: produce case distillation, reusable reasoning rules, common mistakes, routing hints, and evidence gaps; do not produce the final report.
- default_auxiliary_skills: Skill 004 for scarce-layer cases, Skill 002 for technical infrastructure cases, Skill 003 for PM-facing equity conversion.
- compatible_frameworks: any framework, selected only after the thinking pattern is distilled.
- shared_references: `references/ai_infrastructure_bottleneck_method.md`, `references/cross_industry_bottleneck_framework.md`, `references/event_analysis_output_shape.md` when the case contains public signals, bottlenecks, or reusable event patterns.
- required_analysis_methods: financial validation, consensus gap, validation loop when the distilled pattern implies an investable claim.
- failure_modes: becomes too abstract, copies source opinion, treats a case conclusion as truth, or delays concrete mapping when the user needs a report.

## 1. Objective

Extract reusable buy-side reasoning patterns from strong research cases.

The output should help the system decide:

- which thinking style should be used
- which existing thinking skills should be updated
- which research methodology may fit
- which industry framework may be relevant
- which validation methods should be combined later

## 2. What To Extract

Extract reasoning patterns that can be reused across future research tasks:

- market blind spot
- industry causal chain
- reverse value chain mapping
- chokepoint / constraint discovery
- narrative reframing
- alpha migration
- consensus detection
- financial validation bridge
- public-claim-to-research-event reasoning
- demand shock -> constrained layer -> scarce capability -> beneficiary mapping
- evidence-stack and discovery-stage discipline

For each extracted pattern, ask:

- What did the case notice that was non-obvious?
- What reasoning action made the case useful?
- Which value-chain, customer, financial, or consensus mechanism did it reveal?
- Which existing thinking skill should absorb this pattern?
- Did the case identify a real demand shock or only repeat a theme?
- Did it map the constrained layer before ranking companies?
- Did it distinguish focal beneficiary from customer, peer, context, or obvious proxy?

## 2.1 Shared Bottleneck Frameworks To Absorb

When a strong case involves AI infrastructure, semiconductors, datacenter, energy, space, robotics, industrial supply chains, or any theme-to-beneficiary logic, read:

- `skill_hub/references/ai_infrastructure_bottleneck_method.md`
- `skill_hub/references/cross_industry_bottleneck_framework.md`

Then ask whether the case teaches one of these reusable reasoning actions:

```text
demand shock
-> constrained layer
-> scarce capability
-> beneficiary chain
-> falsifiable event
-> price-in / benchmark question
```

If yes, map the lesson into the existing thinking skills rather than leaving it inside Skill 005.

Suggested mapping:

- blind spot -> `thinking_skills/skill_001_find_blind_spot.md`
- causal mechanism -> `thinking_skills/skill_002_industry_causal_chain.md`
- value-chain beneficiary -> `thinking_skills/skill_003_reverse_value_chain_mapping.md`
- constrained layer -> `thinking_skills/skill_004_constraint_discovery.md`
- broad narrative to event -> `thinking_skills/skill_005_narrative_reframing.md`
- alpha migration -> `thinking_skills/skill_006_alpha_migration.md`
- price-in / consensus -> `thinking_skills/skill_007_consensus_detection.md`
- event reasoning -> `thinking_skills/skill_009_research_event_reasoning.md`
- bottleneck event map -> `thinking_skills/skill_010_cross_industry_bottleneck_event_mapping.md`

## 3. What Not To Extract

Do not extract:

- copied opinions
- copied wording
- stock recommendation as truth
- only the conclusion
- unsupported valuation claims
- fabricated source claims, numbers, URLs, rankings, or market sizes
- private or restricted content without permission

The purpose is not to remember what the researcher thinks. The purpose is to preserve a repeatable thinking action.

## 4. Input

Allowed input types:

- X thread already saved into the local data layer
- research note already saved into the local data layer
- long-form article already saved into the local data layer
- chart / case summary already saved into the local data layer
- financial validation evidence already saved into the local data layer
- research case explicitly provided by the user

Input should preserve:

- source name
- source URL or identifier if available
- date
- author / account
- verification status
- known data gaps
- whether claims are verified facts, early signals, or opinions

## 5. Output

For each case, produce:

- thinking skills demonstrated
- reusable reasoning rules
- example pattern
- common mistakes
- which existing skill files should be updated

Use this output format:

```markdown
# Case Distillation

## Case
- Name:
- Source:
- Date:
- Verification status:

## Thinking Skills Demonstrated
- Skill:
- What this case teaches:
- Reusable reasoning rule:
- Example pattern:
- Common mistake:
- Existing skill file to update:

## What Not To Carry Forward
- Stock opinion:
- Unsupported claims:
- Case-specific details that should not become rules:

## Next Routing Hint
- Possible industry framework:
- Possible analysis methods:
- Evidence still 待验证:
- Data still 待补充:
```

## 6. Role Before Framework Selection

This skill helps AI decide:

- which reasoning style should be used
- which industry framework is relevant
- which analysis methods should be combined

The order matters:

```text
case first
-> distill thinking pattern
-> then choose the industry framework
```

Do not force a case into an industry framework too early. The case may reveal that the real issue is not the surface industry label, but a hidden bottleneck, customer architecture role, upstream supplier, or financial validation gap.

When the case comes from public posts or specialist commentary, do not learn from the conclusion alone. Convert the case into event-level logic first:

```text
source claim
-> research event
-> ticker role
-> evidence stack
-> discovery stage
-> report use
-> reusable thinking rule
```

Use `skill_hub/references/event_analysis_output_shape.md` when writing the distilled case output.

## 7. Relationship With Existing Modules

- Industry Frameworks answer: what to look at.
- Skill 001 白毛女蒸馏 answers: how to think.
- Thinking Skills / Research Methodologies answer: how to reason.
- Analysis Methods answer: how to validate.
- Report Templates answer: how to communicate.

## Operating Rules

- Distill the thinking action before making a report outline.
- Preserve uncertainty and mark unsupported claims as `待验证`.
- If a case only contains a conclusion but no reasoning path, do not turn it into a reusable rule.
- If the case demonstrates a new thinking action, update the most relevant existing thinking skill file instead of creating a duplicate skill.
- If the case demonstrates multiple thinking actions, map each action to a separate thinking skill.
- Keep the distilled rule short, testable, and reusable.
