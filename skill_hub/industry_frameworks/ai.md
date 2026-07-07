# AI Industry Framework

This is a buy-side AI industry framework. It is designed to generate investment insight, not to explain AI at a beginner level.

Use it after external data has already been collected, classified, and source-tagged.

## Boundary of this framework

- This industry framework defines the industry map, value chain, business models, core metrics, and key risks.
- It should not determine the final reasoning path.
- The final reasoning path should be selected from `skill_hub/research_methodologies/`.
- Industry framework answers "what to look at".
- Research methodology answers "how to think".

## 1. Industry Essence

AI value comes from embedding model capability into real workflows and converting intelligence into productivity, revenue, cost reduction, or automation.

The investable question is not "is AI powerful?" The investable question is:

- Where does model capability become paid usage?
- Where does paid usage become durable revenue?
- Where does revenue flow into gross margin, operating leverage, backlog, EPS, or valuation?
- Which value-chain layer captures economics instead of passing value to another layer?

Core insight chain:

```text
Model capability
-> workflow adoption
-> usage / seats / contracts / capacity
-> revenue
-> margin after compute cost
-> earnings revision or valuation rerating
```

## 2. Main Sub-Sectors

### Foundation Models

Companies building general-purpose or frontier models.

Buy-side focus:

- model performance
- inference cost
- API usage
- enterprise adoption
- distribution access
- commoditization risk

### AI Infrastructure

Systems enabling training, inference, deployment, orchestration, observability, data pipelines, and model serving.

Buy-side focus:

- GPU utilization
- inference throughput
- workload growth
- developer adoption
- cloud / data center spend
- customer concentration

### AI Applications

AI embedded into specific user or enterprise workflows.

Buy-side focus:

- paid conversion
- retention
- ARPU uplift
- seat expansion or seat compression
- workflow ownership

### AI Agents

Systems that execute multi-step tasks, use tools, and replace or augment human workflows.

Buy-side focus:

- task completion rate
- reliability
- customer ROI
- automation rate
- liability and control risk

### Enterprise AI

AI deployed inside enterprise processes such as customer support, sales, software development, analytics, operations, security, and finance.

Buy-side focus:

- ACV
- renewal rate
- procurement cycle
- security / compliance approval
- measurable productivity gain

### AI Hardware / Compute

Accelerators, GPUs, ASICs, HBM, servers, storage, and systems.

Buy-side focus:

- shipment volume
- ASP
- backlog
- supply constraints
- capex durability

### Data Center / Power / Networking

Physical infrastructure required for AI workloads.

Buy-side focus:

- capacity
- utilization
- power availability
- networking bandwidth
- optical interconnect
- cooling

### AI Security

Security, governance, access control, monitoring, model risk, data protection, and compliance for AI use.

Buy-side focus:

- enterprise adoption blocker
- budget priority
- attach rate to AI deployments
- regulatory pressure

## 3. Core Business Models

| Model | Formula | Buy-side interpretation |
| --- | --- | --- |
| API usage | usage volume x unit price | Tests whether experimentation becomes recurring workload. |
| Subscription | customers x ARPU x retention | Tests whether AI becomes a recurring product, feature, or workflow. |
| Enterprise contracts | customers x ACV x renewal rate | Tests enterprise budget priority and sales durability. |
| Infrastructure | capacity x utilization x price | Tests whether AI demand monetizes through compute, cloud, data center, or networking capacity. |
| Hardware | shipment volume x ASP | Tests whether AI capex becomes semiconductor and systems revenue. |

Key margin equation:

```text
Gross profit = AI revenue - inference cost - cloud / hardware cost - data cost - support cost
```

The best AI businesses show both usage growth and improving unit economics. Weak AI businesses show usage growth with margin pressure.

## 4. Key Metrics

### Usage And Adoption

- API calls / tokens
- active users
- paid users / paid seats
- enterprise customers
- workflow penetration
- task completion rate
- model performance

### Financial Metrics

- ARR / ACV
- ARPU
- retention / churn
- net revenue retention
- gross margin
- operating margin
- CAC payback
- revenue growth vs compute cost growth

### Infrastructure Metrics

- inference cost
- cost per token
- GPU utilization
- compute hours
- data center capacity
- power availability
- networking bandwidth
- capex intensity
- order backlog

### Risk Metrics

- customer concentration
- model performance gap
- hallucination / error rate
- security incident rate
- compliance approval
- pricing pressure

## 5. Value Chain

AI value chain:

```text
Models
-> Compute
-> Semiconductors
-> Cloud
-> Data centers
-> Power / cooling
-> Networking
-> Applications
-> Enterprise users
```

Economic capture questions:

- Models: Does performance create pricing power, or does model quality commoditize?
- Compute: Does utilization stay high enough to justify capex?
- Semiconductors: Is revenue driven by shipment volume, ASP, mix, or backlog?
- Cloud: Does AI increase cloud consumption and attach enterprise services?
- Data centers: Is capacity constrained by power, cooling, or networking?
- Applications: Does AI own the workflow or remain a feature inside another platform?
- Enterprise users: Is ROI measurable and renewal-supporting?

## 6. Listed Company Mapping

Use this mapping as a starting point. Do not make ticker-level claims without evidence from the classified data packet.

| Company | Role | Potential AI exposure | Evidence to check |
| --- | --- | --- | --- |
| NVIDIA | AI hardware / compute / networking | GPU, systems, networking, software ecosystem | Data center revenue, backlog, gross margin, customer capex |
| AMD | AI hardware / compute | GPU and accelerator competition | AI accelerator revenue, customer wins, margin |
| Broadcom | Custom silicon / networking | AI ASIC, networking, hyperscaler exposure | AI revenue, backlog, customer concentration |
| Marvell | Networking / custom silicon / optical interconnect | AI data center networking and custom silicon | Data center revenue, design wins, optics/silicon photonics |
| Arista | Data center networking | AI cluster networking | Cloud titan demand, orders, backlog, margin |
| Microsoft | Cloud / enterprise AI / applications | Azure AI, Copilot, enterprise distribution | AI cloud consumption, Copilot adoption, capex, margin |
| Amazon | Cloud / AI infrastructure | AWS AI services and infrastructure | AWS growth, capex, AI customer adoption |
| Google | Models / cloud / advertising / enterprise AI | Gemini, TPU, Google Cloud, AI ads | Cloud growth, AI monetization, capex, search impact |
| Meta | Model deployment / ads / capex | AI recommendation, Llama, infrastructure | Ad ROI, capex, inference cost, engagement |
| Oracle | Cloud infrastructure / enterprise AI | OCI AI infrastructure, database workloads | Cloud backlog, capex, customer wins |
| CoreWeave | AI infrastructure / compute cloud | GPU cloud capacity | Public status, revenue, utilization, customer concentration, capex |
| Palantir | Enterprise AI applications | AIP and workflow deployment | Customer count, ACV, revenue growth, margin |
| ServiceNow | Enterprise AI software | AI workflow automation | AI attach rate, ARPU, retention, workflow adoption |
| Snowflake | Data platform / AI data layer | Data cloud and AI workloads | Consumption growth, AI product adoption, retention |
| Datadog | Observability / AI infrastructure monitoring | AI workload monitoring and cloud observability | Usage growth, cloud customer demand, retention |

Company mapping must classify exposure as:

- Direct beneficiary
- Indirect beneficiary
- Platform beneficiary
- Infrastructure beneficiary
- Application beneficiary
- Possible loser
- Watchlist / insufficient evidence

## 7. Financial Impact Pathway

AI signals must be translated into financial mechanisms.

### Revenue

Signal examples:

- product launch
- enterprise rollout
- API usage growth
- customer adoption
- cloud workload growth
- hardware order

Revenue pathways:

- API usage -> usage volume x unit price
- subscription -> customers x ARPU x retention
- enterprise contract -> customers x ACV x renewal rate
- infrastructure -> capacity x utilization x price
- hardware -> shipment volume x ASP

### Margin

Margin improves when:

- inference cost declines faster than price
- utilization rises
- premium mix increases
- software attach rate improves
- support cost per customer falls

Margin is pressured when:

- compute cost scales faster than revenue
- pricing declines
- enterprise customization is heavy
- hardware supply is expensive
- customer concentration gives buyers pricing power

### Capex

AI signals affect capex through:

- data center expansion
- GPU / accelerator purchases
- power and cooling requirements
- cloud infrastructure buildout
- networking and optical interconnect demand

Buy-side question:

- Is capex creating future revenue, or is it overbuild ahead of uncertain demand?

### Order Backlog

Order backlog matters for:

- semiconductors
- networking
- data center infrastructure
- cloud capacity
- enterprise contracts

Backlog is more valuable when tied to committed customers and pricing. It is weaker when dependent on speculative capacity expansion.

### Valuation

AI can drive valuation through:

- higher revenue growth
- higher gross margin
- longer growth duration
- higher terminal margin
- lower perceived disruption risk
- strategic scarcity premium

Valuation risk appears when:

- consensus already prices the AI upside
- capex grows faster than monetization
- margin assumptions ignore compute cost
- growth depends on unverified adoption

### EPS Expectations

AI affects EPS through:

- revenue acceleration
- margin expansion or compression
- depreciation from capex
- R&D and sales investment
- share-based compensation
- mix shift toward higher or lower margin segments

## 8. Buy-Side Questions

Use these questions to convert AI signals into investment insight:

- Is this real adoption or hype?
- Is usage converting into revenue?
- Is gross margin improving or being pressured by compute cost?
- Which part of the value chain captures economics?
- Is the market already pricing this in?
- What is the variant view?
- What operating metric would prove the thesis?
- What financial metric would disprove it?
- Does the company own distribution, workflow, data, compute, or customer budget?
- Is the signal incremental, or already expected by consensus?
- Is the AI product a standalone business, a feature, or a defensive upgrade?

## 9. Risks And Invalidation

Key risks:

- weak retention
- commoditization
- high compute cost
- open-source competition
- customer concentration
- capex overbuild
- regulation
- pricing pressure
- model performance plateau
- enterprise security / compliance blockers
- data availability or data rights constraints
- power / networking / supply-chain bottlenecks

Invalidation triggers:

- usage growth does not convert into paid revenue
- gross margin falls as AI usage rises
- customers churn after pilots
- enterprise adoption remains proof-of-concept only
- pricing declines faster than cost
- capex rises without backlog or revenue visibility
- open-source alternatives compress price
- regulators restrict deployment or data use
- consensus estimates stop rising despite stronger narrative

## 10. Investment Judgment Framework

Classify AI opportunities into one of five states.

### Long Candidate

Use when:

- adoption is verified by financial or primary sources
- revenue pathway is clear
- gross margin is stable or improving
- company exposure is direct
- consensus underestimates duration, magnitude, or beneficiary
- catalyst is visible

Required evidence:

- paid usage, contract, backlog, or revenue validation
- unit economics or margin evidence
- valuation / expectation gap

### Watchlist

Use when:

- signal quality is high but financial validation is incomplete
- company mapping is plausible but not yet quantified
- timing, valuation, or consensus gap is unclear

Required next step:

- define validation questions and monitor operating metrics.

### Too Early / Need More Evidence

Use when:

- evidence is mostly X, media, demo, launch, or anecdote
- adoption is not yet paid
- revenue or margin pathway is unclear
- company exposure is indirect or unverified

Required next step:

- wait for usage, customer, contract, or financial proof.

### Avoid

Use when:

- AI narrative is generic
- monetization is unclear
- compute cost destroys margin
- customer ROI is weak
- valuation already reflects aggressive adoption

Required next step:

- do not spend more PM attention unless new evidence changes the setup.

### Short Candidate

Use when:

- market prices durable AI upside
- evidence shows weak retention, margin pressure, overbuild, commoditization, or pricing pressure
- downside catalyst is identifiable

Required evidence:

- financial deterioration or guidance mismatch
- adoption disappointment
- capex / revenue mismatch
- consensus estimates vulnerable to cuts

## Required Output From This Framework

When this framework is used, the final report should include:

- AI sub-sector classification
- revenue/profit formula
- key operating metrics to watch
- value-chain economic capture
- listed company mapping
- financial impact pathway
- consensus vs variant view
- risks and invalidation triggers
- investment judgment state
