# Skill 002: SemiAnalysis 蒸馏

This core skill distills SemiAnalysis / Dylan Patel style research methodology into reusable buy-side reasoning patterns.

It should extract how high-quality technical infrastructure research thinks. It should not copy wording, summarize only conclusions, or treat stock recommendations as truth.

## Data Boundary

Skill 002 is thinking-mode only. It does not collect data, browse websites, fetch filings, parse PDFs, call APIs, or create raw datasets.

Use only:

- local records from `/Users/pangpatrick/Desktop/research_data/system_index/`
- classified packets built from `system_index`
- technical research cases explicitly provided by the user

If evidence is missing, mark it as `待补充` or `待验证` and send the need back to the data layer. Do not invent or fetch missing evidence inside this skill.

## Primary Golden Sample

Use the uploaded report "Scaling the Memory Wall: The Rise and Roadmap of HBM" as a primary golden sample for methodology distillation.

Rules for this golden sample:

- Do not summarize the article.
- Do not copy its wording.
- Do not copy its investment conclusions.
- Do not treat any stock recommendation as truth.
- Extract the reusable reasoning methodology: how the research moves from workload behavior to hardware requirements, process constraints, supply-chain economics, and financial validation.
- Use the sample only when it is available locally or explicitly provided by the user.

## Position In The System

```text
External Data / Research Case
-> Skill 001 白毛女蒸馏 or Skill 002 SemiAnalysis 蒸馏
-> Thinking Skills / Research Methodologies
-> Industry Framework Selection
-> Analysis Methods
-> Report Templates
-> Buy-side Report
```

## Skill Contract

- use_when: use as primary when the core question depends on technical architecture, AI infrastructure, HBM, GPU clusters, advanced packaging, optical interconnect, foundry, equipment, or datacenter physical constraints.
- do_not_use_when: do not use as primary when the packet is mainly a general market update, single-name earnings memo without technical bottlenecks, or pure macro/policy question.
- input_required: local packet or technical case with products, architecture, supply-chain nodes, affected companies, source credibility, and explicit `待验证` claims.
- output_contract: produce workload-to-hardware translation, subsystem decomposition, physical constraint map, supplier differentiation, and financial validation metrics; do not produce the final PM report alone.
- default_auxiliary_skills: Skill 004 for scarce-layer ranking, Skill 003 for equity memo conversion.
- compatible_frameworks: semiconductor, AI, energy, software_saas, consumer_electronics when the technical mechanism crosses industries.
- shared_references: `references/ai_infrastructure_bottleneck_method.md` is mandatory when AI infrastructure, HBM, GPU clusters, CPO, networking, power, cooling, packaging, or test bottlenecks matter; use `references/cross_industry_bottleneck_framework.md` when transferring the bottleneck logic outside semiconductors.
- required_analysis_methods: company mapping, financial validation, consensus gap, valuation, validation loop.
- failure_modes: over-technical explanation without PM implication, missing valuation/expectation context, or treating specialist commentary as verified fact.

## 1. Objective

Distill technical architecture, supply-chain, cost-curve, and value-chain economics reasoning into reusable buy-side research patterns.

Use this skill when a research case involves:

- technical architecture
- compute infrastructure
- semiconductor supply chain
- cost curve
- capex cycle
- bottleneck analysis
- margin pool
- hyperscaler demand
- datacenter economics
- AI infrastructure winners and losers
- memory systems and HBM
- networking and optical interconnect
- advanced packaging, bonding, inspection, and testing

## 2. What To Extract

Before extracting technical details, read `skill_hub/references/ai_infrastructure_bottleneck_method.md` when the packet involves AI infrastructure.

The technical reasoning should follow:

```text
workload / architecture transition
-> stressed layer
-> physical or technical bottleneck
-> scarce capability
-> supplier / equipment / material exposure
-> financial validation metric
```

Do not start from a ticker or from generic AI demand.

### 2.1 Workload-To-Hardware Translation

Start from AI workload behavior, not from TAM or vendor claims.

Extract how the researcher determines whether the workload is:

- compute-bound
- memory-capacity-bound
- memory-bandwidth-bound
- network-bound
- power-bound

Reusable reasoning rule:

```text
workload behavior
-> bottleneck type
-> hardware requirement
-> supplier exposure
-> financial validation metric
```

Questions to ask:

- Does the workload need more compute, more memory capacity, more memory bandwidth, more networking, or more power efficiency?
- Does the bottleneck change across training, inference, recommender systems, mixture-of-experts, long-context models, or datacenter-scale deployment?
- Which hardware subsystem becomes more valuable when the workload changes?
- Is the event `early_discovery`, `continuation_confirmation`, `late_validation`, `after_fact_commentary`, or `context_only`?
- Is the signal supported by customer, supply-chain, earnings/order, capacity, pricing, or primary-source evidence?

### 2.2 System Architecture Decomposition

Decompose the technical system into physical and functional layers before mapping companies.

For HBM, decompose into:

- DRAM core die
- base die
- PHY
- TSV
- bumping
- bonding
- interposer
- package substrate
- power delivery
- thermal management
- inspection

Reusable reasoning rule:

```text
system requirement
-> subsystem architecture
-> physical implementation
-> manufacturing step
-> supplier / equipment / material exposure
```

Questions to ask:

- Which layer controls bandwidth, capacity, power, area, thermals, or yield?
- Which layer is standardized, and which layer allows supplier differentiation?
- Which layer has the highest qualification barrier or execution risk?

### 2.3 Physical Constraint Identification

Identify the real first-order physical constraint instead of assuming the headline technology is the bottleneck.

Potential constraints include:

- TSV capacity
- shoreline
- routing density
- PDN
- thermals
- warpage
- bonding accuracy
- throughput
- yield

Reusable reasoning rule:

```text
technical roadmap
-> physical constraint
-> process or equipment bottleneck
-> capacity / yield / cost impact
-> financial consequence
```

Questions to ask:

- Which physical limit prevents the architecture from scaling?
- Is the bottleneck area, power, thermals, signal integrity, mechanical stress, process throughput, or yield?
- Does the constraint create pricing power, capex demand, or execution risk?
- Can the constraint be expressed as a falsifiable event with source, timestamp, expected mechanism, time horizon, and invalidation condition?

### 2.4 Manufacturing Process Mapping

Map each technical requirement into specific process steps, equipment, materials, and suppliers.

Distinguish:

- front-end
- back-end
- packaging
- bonding
- inspection
- testing

Reusable reasoning rule:

```text
technical requirement
-> process step
-> equipment / material / supplier dependency
-> capacity and throughput
-> revenue and margin pool
```

Questions to ask:

- Which process step is newly required or becoming more difficult?
- Which equipment, material, or supplier becomes more critical?
- Is the bottleneck in wafer processing, die stacking, bonding, packaging, inspection, or final test?

### 2.5 Yield And Unit Economics

Do not judge a technology only by absolute yield.

Evaluate economic attractiveness with:

```text
selling price premium
- yield loss
- process cost
- packaging cost
= economic attractiveness
```

Reusable reasoning rule:

```text
technical improvement
-> ASP premium
-> yield loss and process cost
-> gross margin impact
-> supplier adoption and customer willingness to pay
```

Questions to ask:

- Does the selling price premium compensate for lower yield and higher process complexity?
- Does the technology improve system-level TCO enough to justify higher component cost?
- Does yield improve fast enough for volume production economics?

### 2.6 Supplier Differentiation

Compare suppliers through engineering variables, not generic labels.

Examples of differentiation variables:

- TSV architecture
- power delivery
- bonding method
- thermal solution
- process productivity
- qualification status
- execution capability

Reusable reasoning rule:

```text
supplier label
-> engineering variable
-> customer qualification
-> production readiness
-> financial impact
```

Questions to ask:

- Which supplier has an engineering advantage that customers can verify?
- Is the advantage in design, process, yield, cost, packaging, thermal, power, or qualification?
- Is technical leadership already in volume production, or still in concept / demonstration stage?
- Is the company the focal beneficiary, supplier of the scarce capability, customer demand validator, peer, or context ticker?

### 2.7 Roadmap And Commercialization Readiness

Distinguish technical concept from commercial readiness.

Classify each technology stage:

- concept
- lab demonstration
- standards adoption
- customer qualification
- pilot production
- volume production

Reusable reasoning rule:

```text
roadmap claim
-> readiness stage
-> customer qualification
-> production ramp
-> revenue timing
```

Questions to ask:

- Is the roadmap backed by standards, customer qualification, or volume production?
- What evidence shows the transition from demo to production?
- What timing risk remains before revenue recognition?

### 2.8 System-Level Trade-Off Analysis

Evaluate trade-offs across the whole system.

Trade-offs include:

- memory
- compute
- networking
- package area
- power
- cost
- TCO

Reusable reasoning rule:

```text
higher specification
-> system-level trade-off
-> TCO impact
-> customer adoption
-> supplier economics
```

Questions to ask:

- Does higher bandwidth, capacity, or performance improve system economics, or does it increase power, cost, package complexity, or yield loss too much?
- Which spec matters for the workload, and which spec is only marketing?
- Does the system optimize for absolute performance, performance per watt, performance per dollar, or time-to-train / time-to-serve?

### 2.9 Value-Pool Migration

Identify when architectural changes shift value along the chain.

Value can migrate toward:

- logic design
- IP vendors
- foundries
- equipment
- packaging
- memory vendors
- networking suppliers

Reusable reasoning rule:

```text
architecture change
-> new bottleneck or required capability
-> value-pool migration
-> winners and losers
-> consensus gap
```

Questions to ask:

- Which layer captures incremental economics after the architecture changes?
- Which layer loses margin or bargaining power?
- Is the market still focused on the old value pool?

### 2.10 Financial Translation

Translate technical and supply-chain signals into measurable financial indicators.

Required financial bridges:

- wafer starts
- TSV capacity
- equipment demand
- ASP
- yield
- revenue
- gross margin
- capex
- supplier share
- qualification timing

Reusable reasoning rule:

```text
technical thesis
-> operating metric
-> financial line item
-> estimate revision
-> valuation relevance
```

Questions to ask:

- Which company line item should move if the technical thesis is true?
- What should happen to revenue mix, ASP, gross margin, capex, backlog, inventory, or guidance?
- What public source can validate the claim: filings, earnings call, investor presentation, supply-chain data, equipment order data, or customer qualification evidence?

## 3. What Not To Extract

Do not extract:

- copied wording
- conclusions without reasoning
- stock recommendations as truth
- one article as a universal rule
- technical detail without investment mechanism
- generic industry summary
- unsupported supply-chain claims
- fabricated market share, pricing, capex, shipment, or revenue numbers

Technical detail is only useful when it explains business mechanism, financial impact, consensus gap, or invalidation.

## 4. Input

Allowed input types:

- SemiAnalysis-style technical article
- AI infrastructure research case
- semiconductor supply-chain note
- hyperscaler capex commentary
- datacenter architecture breakdown
- memory / HBM technical roadmap
- packaging and bonding process note
- earnings call or investor presentation with technical detail
- chart / case summary
- financial validation evidence

Input should preserve:

- source name
- source URL or identifier if available
- date
- author / account
- source type
- verification status
- known data gaps
- whether claims are verified facts, early signals, or opinions

## 5. Output

For each case, produce:

- thinking skills demonstrated
- reusable reasoning rules
- example pattern
- common mistakes
- which thinking skill files should be updated or created

Use this output format:

```markdown
# SemiAnalysis-Style Case Distillation

## Case
- Name:
- Source:
- Date:
- Verification status:

## Workload-To-Hardware Translation
- Workload behavior:
- Bottleneck type:
- Hardware requirement:
- Supplier exposure:
- Validation metric:

## System Architecture Decomposition
- System being analyzed:
- Subsystems:
- Key dependency:
- Reusable reasoning rule:

## Physical Constraint Identification
- Claimed roadmap:
- First-order constraint:
- Process / equipment bottleneck:
- Evidence required:

## Manufacturing Process Mapping
- Technical requirement:
- Process step:
- Equipment / material / supplier dependency:
- Front-end / back-end / packaging / bonding / inspection / testing classification:

## Yield And Unit Economics
- Selling price premium:
- Yield loss:
- Process cost:
- Packaging cost:
- Economic attractiveness:

## Supplier Differentiation
- Companies compared:
- Engineering variables:
- Qualification status:
- Execution capability:
- Data still 待验证:

## Roadmap And Commercialization Readiness
- Stage: concept / lab demonstration / standards adoption / customer qualification / pilot production / volume production
- Evidence supporting stage:
- Timing risk:

## System-Level Trade-Off
- Trade-off:
- System TCO impact:
- Customer adoption implication:
- Supplier economics:

## Value-Pool Migration
- Architecture change:
- Old value pool:
- New value pool:
- Winners / losers:

## Financial Translation
- Technical signal:
- Operating metric:
- Financial line item:
- Valuation / EPS relevance:

## Variant View
- Consensus view:
- Variant view:
- Why consensus may be wrong:
- Catalyst for recognition:

## Invalidation
- Evidence that would prove the thesis wrong:
- Source to check:
- Review timing:

## Existing Skill Files To Update
- Thinking skill:
- What this case teaches:
- Reusable reasoning rule:
- Example pattern:
- Common mistake:
```

## 6. Relationship With Skill 001

Skill 001 白毛女蒸馏 focuses on:

- hidden upstream assets
- blind spots
- alpha migration
- market label vs actual economic role
- overlooked chokepoints

Skill 002 SemiAnalysis 蒸馏 focuses on:

- technical architecture
- supply-demand balance
- cost curve
- capex transmission
- margin pool
- datacenter economics
- AI infrastructure winners and losers
- workload-to-hardware translation
- manufacturing process mapping
- yield and unit economics
- system-level trade-off analysis

Use both when a case contains both hidden-asset reframing and deep technical infrastructure economics.

## 7. Preferred Topics

Use Skill 002 as the preferred core skill when the topic involves:

- AI infrastructure
- semiconductors
- GPU clusters
- HBM
- networking
- ASICs
- foundry
- advanced packaging
- datacenter capex
- optical interconnect
- CPO
- high-speed SerDes
- Ethernet switching
- datacenter power and cooling
- memory bandwidth
- packaging yield
- TSV / hybrid bonding / inspection

## 8. Common Mistakes

- Do not start from TAM without understanding workload demand.
- Do not treat all HBM capacity as equivalent.
- Do not equate technical leadership with volume production.
- Do not ignore yield and manufacturing throughput.
- Do not evaluate components independently from system-level trade-offs.
- Do not assume the highest specification provides the best TCO.
- Do not confuse vendor claims with verified performance.
- Do not turn technical detail into generic industry summary.
- Do not overfit to one article.
- Do not treat a stock recommendation as truth.

## 9. Operating Rules

- Distill technical reasoning into reusable buy-side patterns.
- Preserve uncertainty and mark unsupported claims as `待验证`.
- Start from workload behavior before market size or TAM.
- Decompose architecture before mapping suppliers.
- Identify the first-order physical constraint before naming winners.
- Map technical requirements into process steps, equipment, materials, and suppliers.
- Evaluate yield and unit economics, not technical elegance alone.
- Compare suppliers through engineering variables and qualification status.
- Distinguish concept, demo, qualification, pilot production, and volume production.
- Evaluate components through system-level trade-offs and TCO.
- Track value-pool migration across the full value chain.
- Always connect architecture to business mechanism.
- Always connect supply-chain signal to financial validation.
- Always define what would invalidate the thesis.
