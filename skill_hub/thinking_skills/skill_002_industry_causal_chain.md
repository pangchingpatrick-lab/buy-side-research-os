# Skill 002: Industry Causal Chain

## 1. Skill purpose

Build a causal chain from signal to industry mechanism to company financial impact.

This skill prevents reports from stopping at shallow statements like "demand is growing" or "technology is improving."

## 2. When to use

Use when:

- the research packet contains a signal but not a full thesis
- the report needs to explain why the signal matters financially
- multiple industries or value-chain nodes are connected
- the investment implication depends on mechanism, timing, or bottleneck

## 3. Input required

- signal summary
- industry classification
- related industry framework
- affected value-chain node
- related companies
- operating metrics
- verified and unverified evidence

## 4. Reasoning steps

1. Define the signal in one sentence.
2. Identify the industry mechanism affected by the signal.
3. Identify the operating metric that should move.
4. Connect the operating metric to financial statement impact.
5. Identify who captures economics and who absorbs cost.
6. Define timing: immediate, next quarter, next year, or long term.
7. Identify market expectation and possible gap.
8. Define validation data for each link in the chain.

## 5. Output expected

```text
signal
-> mechanism
-> operating metric
-> financial line item
-> company exposure
-> expectation gap
-> validation question
```

## 6. Example use case

A data center power constraint signal maps to grid equipment orders, power infrastructure capex, data center utilization limits, and possible delays in AI compute deployment. The causal chain clarifies which companies benefit and which companies face bottlenecks.

## MRVL case refinement

This case is used only to strengthen the reusable thinking pattern. It is not a stock opinion or recommendation.

### What this case teaches

AI datacenter demand does not only transmit to GPUs. It can also transmit to custom silicon, high-speed interconnect, PAM4 DSP, Ethernet switching, optical modules, CPO, SerDes, Die-to-Die, and CXL switching.

### Reusable reasoning rule

When analyzing AI infrastructure, map the full system-level dependency chain, not only the obvious chip layer.

### Example pattern

```text
AI workload growth
-> datacenter architecture requirement
-> compute, custom silicon, interconnect, switching, optics, memory, and power dependencies
-> supplier exposure by subsystem
-> revenue, margin, design win, backlog, and guidance validation
```

### Common mistake to avoid

Do not stop the causal chain at "GPU demand." For AI infrastructure, the relevant unit of analysis is often the full cluster or datacenter architecture.

## 7. Common mistakes

- skipping from signal directly to stock conclusion
- failing to define the operating metric
- mixing cause and effect
- assuming all value-chain participants benefit equally
- ignoring timing and validation data
