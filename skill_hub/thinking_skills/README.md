# Thinking Skills

`skill_hub/thinking_skills/` stores reusable reasoning units distilled from high-quality research cases.

Thinking Skills should not summarize any person's opinions, copy content, or turn a researcher into an authority source. They should capture repeatable thinking actions that can be applied across topics, industries, and data packets.

## Role In The Skill Hub

The Skill Hub separates five layers:

- Thinking Skills answer: "How should we think?"
- Research Methodologies answer: "Which larger reasoning style should we use?"
- Industry Frameworks answer: "What should we look at in this industry?"
- Analysis Methods answer: "How do we validate?"
- Report Templates answer: "How do we communicate?"

Thinking Skills are smaller than full research methodologies. A report can combine several thinking skills to build a reasoning path.

## Workflow Position

```text
Classified research packet
-> thinking skill router: which reasoning actions to combine
-> thinking skills: how to reason through the signal
-> industry framework: what matters in this industry
-> analysis methods: how to validate the reasoning
-> report template: how to communicate the output
```

## Case Example 001: AXTI

This is the first methodology sample for the Thinking Skills library.

Purpose:

- Use the AXTI case to extract reusable thinking actions.
- Do not summarize the stock opinion.
- Do not treat the case as a recommendation.
- Do not add unverified financial numbers, market-size claims, URLs, or company claims.
- Use the case only to show how a researcher can move from signal to mechanism to validation.

Reusable pattern:

```text
visible market narrative
-> less obvious upstream exposure
-> value-chain mechanism
-> constraint or bottleneck
-> listed-company mapping
-> financial validation questions
-> PM-facing decision state
```

### Mapping To Thinking Skills

#### 1. Find Blind Spot

The case demonstrates how to look beyond the obvious downstream narrative and ask what upstream company, material, substrate, component, capacity, qualification, or supply-chain node the market may be underweighting.

Reusable action:

- State the obvious market narrative.
- Identify what part of the value chain is less discussed.
- Ask whether that less-discussed node has scarcity, pricing power, or operating leverage.
- Mark the claim `待验证` until supported by primary sources or repeated credible evidence.

#### 2. Industry Causal Chain

The case demonstrates the need to connect a high-level industry theme to a specific business mechanism.

Reusable action:

```text
industry demand signal
-> required technology / component / material
-> supplier qualification or capacity
-> orders, revenue, margin, capex, or inventory
-> EPS / valuation implication
```

This avoids shallow reasoning such as "AI demand is growing" or "optical demand is strong" without explaining which node benefits and why.

#### 3. Reverse Value Chain Mapping

The case demonstrates starting from the visible end-market and tracing backward through the supply chain.

Reusable action:

- Start from the end demand or visible beneficiary.
- Map downstream product, module, component, material, and substrate layers.
- Identify which layers have listed-company exposure.
- Rank exposure by directness, financial sensitivity, and evidence quality.

#### 4. Constraint Discovery

The case demonstrates searching for the limiting factor rather than assuming demand converts directly into revenue.

Reusable action:

- Ask what could constrain the theme: material availability, qualified capacity, yield, customer qualification, capex, regulation, or inventory.
- Identify who owns the constraint.
- Determine whether the constraint creates pricing power, delay risk, margin pressure, or capex needs.
- Define what evidence would confirm or invalidate the constraint.

#### 5. Narrative Reframing

The case demonstrates turning a broad market story into a testable investment question.

Reusable action:

```text
old narrative: broad downstream demand story
reframed narrative: specific upstream mechanism that can be tested through orders, qualification, capacity, margins, and customer commentary
```

The reframed narrative must remain a hypothesis until verified.

#### 6. Alpha Migration

The case demonstrates asking whether alpha has moved from the obvious winner to a less obvious part of the value chain.

Reusable action:

- Identify the first-order beneficiary that consensus already understands.
- Ask whether that opportunity is crowded, priced in, or fully modeled.
- Look for second-order beneficiaries where financial impact may not yet be in estimates.
- Require validation before calling it investable alpha.

#### 7. Consensus Detection

The case demonstrates separating "interesting company exposure" from "market is actually wrong."

Reusable action:

- Infer what consensus likely focuses on.
- Identify whether the relevant upstream exposure is known, partially known, or ignored.
- Ask whether the market may be wrong on timing, magnitude, durability, beneficiary mapping, or margin impact.
- Define what catalyst would force consensus to update.

#### 8. Financial Validation Bridge

The case demonstrates converting the reasoning path into concrete validation questions.

Reusable action:

- Which filings, earnings calls, investor presentations, or company disclosures should be checked?
- Which line items should move if the thesis is true?
- What should happen to revenue, gross margin, backlog, inventory, capex, customer concentration, or guidance?
- What evidence would prove the upstream exposure is too small, too delayed, already priced in, or wrong?

### How To Use This Case

When a future research packet resembles the AXTI pattern, combine:

- `skill_001_find_blind_spot.md`
- `skill_002_industry_causal_chain.md`
- `skill_003_reverse_value_chain_mapping.md`
- `skill_004_constraint_discovery.md`
- `skill_005_narrative_reframing.md`
- `skill_006_alpha_migration.md`
- `skill_007_consensus_detection.md`
- `skill_008_financial_validation_bridge.md`

Use this combination when the goal is to discover whether an upstream or overlooked value-chain node may matter more than the market narrative suggests.

## Available Thinking Skills

- `skill_001_find_blind_spot.md`: identify what the market may be missing.
- `skill_002_industry_causal_chain.md`: connect signal to industry mechanism and financial impact.
- `skill_003_reverse_value_chain_mapping.md`: start from a bottleneck or beneficiary and trace value-chain exposure backward.
- `skill_004_constraint_discovery.md`: find the scarce resource, bottleneck, or limiting factor.
- `skill_005_narrative_reframing.md`: reframe a shallow narrative into an investable mechanism.
- `skill_006_alpha_migration.md`: track where profit pools or alpha move along the value chain.
- `skill_007_consensus_detection.md`: infer market consensus and where it may be stale or wrong.
- `skill_008_financial_validation_bridge.md`: bridge early signals into financial validation questions.
- `thinking_skill_router.md`: select and combine thinking skills for a research task.

## Guardrails

- Do not fabricate facts, source claims, market sizes, financial metrics, or company exposure.
- Do not treat early signals as verified evidence.
- Preserve `待验证` and `待补充` from the classified research packet.
- Use thinking skills to structure reasoning, not to replace evidence.
- A thinking skill can suggest what to check next, but validation belongs to `skill_hub/analysis_methods/`.
