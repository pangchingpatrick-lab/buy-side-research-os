# Skill 003: Reverse Value Chain Mapping

## 1. Skill purpose

Start from the visible winner, bottleneck, or end demand and trace backward through the value chain to find less obvious beneficiaries, constraints, and losers.

## 2. When to use

Use when:

- the obvious beneficiary is already crowded
- the research question asks "who benefits?"
- a bottleneck may sit upstream or downstream
- a demand signal affects suppliers, components, infrastructure, or distribution
- the market narrative focuses on a product but not the supply chain

## 3. Input required

- end product or end demand signal
- value chain from the relevant industry framework
- related companies and suppliers
- known bottlenecks
- pricing, capacity, or order evidence
- data gaps

## 4. Reasoning steps

1. Name the visible demand or product.
2. Identify the direct beneficiary.
3. Map the required upstream inputs, components, services, infrastructure, or distribution links.
4. For each node, ask whether it has scarcity, pricing power, operating leverage, or customer concentration risk.
5. Identify listed companies at each node.
6. Rank exposure by directness, financial sensitivity, and evidence quality.
7. Identify possible losers or margin absorbers.
8. Define what data would confirm each exposure.

## 5. Output expected

- reverse value-chain map
- direct beneficiaries
- indirect beneficiaries
- bottleneck nodes
- possible losers
- company exposure ranking
- validation questions by value-chain node

## 6. Example use case

AI model adoption increases compute demand. Reverse mapping traces from AI applications to cloud, data centers, GPUs, HBM, networking, optical modules, power equipment, and semiconductor equipment to find where economics may migrate.

## MSSCorps case refinement

This case is used only to strengthen the reusable thinking pattern. It is not a stock opinion or recommendation.

### What this case teaches

CPO adoption requires not only optical engines, lasers, substrates, and packaging, but also inspection, failure analysis, and non-destructive IR leakage detection.

### Reusable reasoning rule

When mapping a supply chain, include enabling layers that protect yield, qualification, and reliability, not only obvious component suppliers.

### Example pattern

```text
end technology adoption
-> obvious component stack
-> enabling inspection / testing / qualification layer
-> yield and reliability control
-> supplier exposure and validation evidence
```

### Common mistake to avoid

Do not stop the value-chain map at visible components. In complex manufacturing ramps, the inspection and qualification layer can determine whether the component stack can scale reliably.

## 7. Common mistakes

- treating the most visible company as the only beneficiary
- listing suppliers without financial sensitivity
- ignoring capacity and qualification barriers
- ignoring customer concentration
- failing to identify who pays for the bottleneck
