# Skill 004: Constraint Discovery

## 1. Skill purpose

Find the constraint that limits growth, controls pricing power, or determines which company captures economics.

## 2. When to use

Use when:

- demand appears strong but supply may be limited
- a value chain has a bottleneck
- pricing power depends on scarcity
- capex, capacity, qualification, regulation, or technical limits may determine winners
- the market may underestimate the limiting factor

## 3. Input required

- demand signal
- supply or capacity data
- value-chain map
- company exposure
- lead times, utilization, inventory, or order data if available
- regulatory or technical constraints

## 4. Reasoning steps

1. Define the growth claim.
2. Identify what must be true for growth to happen.
3. List possible constraints: capacity, components, power, labor, regulation, capital, customer qualification, yield, distribution, or demand.
4. Rank constraints by severity and evidence quality.
5. Identify who owns the constraint.
6. Determine whether the constraint creates pricing power, delay risk, capex risk, or substitution risk.
7. Map financial impact to beneficiaries and losers.
8. Define data needed to confirm the constraint.

## 5. Output expected

- primary constraint
- secondary constraints
- owner of the constraint
- financial effect of the constraint
- beneficiary and loser mapping
- validation checklist
- invalidation trigger

## 6. Example use case

AI infrastructure growth may be constrained not by GPU demand but by HBM supply, networking bandwidth, optical module availability, power interconnection, or data center construction timelines.

## MRVL case refinement

This case is used only to strengthen the reusable thinking pattern. It is not a stock opinion or recommendation.

### What this case teaches

The bottleneck is not only a physical material bottleneck. It can also be a system-integration bottleneck: custom ASIC, interconnect IP, SerDes, CPO, and hyperscaler co-design capability can be difficult to replicate.

### Reusable reasoning rule

Bottlenecks can be physical, technical, customer-qualified, or ecosystem-embedded.

### Example pattern

```text
AI infrastructure demand
-> system architecture requirement
-> integration bottleneck
-> supplier qualification and co-design barrier
-> pricing power, design win durability, or execution risk
```

### Common mistake to avoid

Do not define constraints only as material shortages or capacity limits. In complex systems, integration capability, IP, qualification, and customer trust can be the real constraint.

## MSSCorps case refinement

This case is used only to strengthen the reusable thinking pattern. It is not a stock opinion or recommendation.

### What this case teaches

A bottleneck can come from inspection capability, patent protection, litigation barriers, customer qualification, and lack of substitutes.

### Reusable reasoning rule

Chokepoints are not only physical materials or capacity; they can also be monopoly inspection tools, IP protection, process know-how, and yield-critical services.

### Example pattern

```text
technology ramp
-> yield-critical process step
-> scarce inspection / qualification capability
-> patent, substitute, or customer qualification barrier
-> pricing power or adoption risk
```

### Common mistake to avoid

Do not assume monopoly status only from narrative. Verify customer relationships, patent position, substitute availability, revenue contribution, and litigation risk.

## 7. Common mistakes

- assuming demand automatically converts to revenue
- identifying a constraint without company ownership
- ignoring substitution or workaround risk
- confusing temporary bottlenecks with structural scarcity
- failing to check whether the constraint is already priced in
