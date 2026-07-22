# Framework Router

Use this file before applying any industry framework.

The router classifies a research packet by industry exposure and selects one or more industry-specific frameworks.

## Input

Start from:

`packets/[topic]_research_packet.md`

The packet should already contain classified, processed, or validated data from the data layer. Do not route directly from raw data.

## Routing Logic

Classify the packet by:

- research topic
- research question
- related industry
- related companies
- products / technologies / assets involved
- value-chain location
- revenue or profit formula implied by the signal
- primary evidence type
- key uncertainty
- expected PM decision

## Industry Routing Rules

| Research topic / industry cue | Route to |
| --- | --- |
| AI, AI infrastructure, AI models, inference, training, agents, model serving, AI applications, AI data centers | `ai_industry.md` |
| Semiconductor, chips, GPU, ASIC, foundry, memory, HBM, advanced packaging, optical modules, networking silicon, semiconductor equipment | `semiconductor.md` |
| Space economy, launch, satellite internet, Earth observation, defense space, ground stations, orbital infrastructure | `space_economy.md` |
| Software, SaaS, enterprise software, developer tools, cloud software, cybersecurity software, usage-based software | `software_saas.md` |
| Energy, power generation, renewables, grid, storage, oil, gas, electricity price, energy infrastructure | `energy.md` |
| Consumer electronics, smartphones, PCs, wearables, AR/VR, devices, components, product cycles | `consumer_electronics.md` |
| Healthcare, pharma, biotech, medtech, diagnostics, hospitals, healthcare services, healthcare platforms | `healthcare.md` |
| Real estate, property development, rental assets, REITs, property services, housing, commercial property | `real_estate.md` |
| Financials, fintech, banks, brokers, payments, lending, insurance, exchanges, wealth management | `financials_fintech.md` |

## Multi-Framework Routing

The router can select multiple industry frameworks when the packet crosses value chains.

Examples:

- AI infrastructure with GPU, HBM, networking, optical modules: `ai_industry.md` + `semiconductor.md`
- AI data center power bottleneck: `ai_industry.md` + `energy.md`
- AI software monetization: `ai_industry.md` + `software_saas.md`
- Consumer device AI upgrade cycle: `consumer_electronics.md` + `ai_industry.md` + `semiconductor.md`
- Space-based communications with listed satellite operators and chip suppliers: `space_economy.md` + `semiconductor.md`
- Fintech software platform with subscription and transaction economics: `financials_fintech.md` + `software_saas.md`

## Router Output Format

```markdown
# Framework Route: [Topic]

Packet: packets/[topic]_research_packet.md
Date: YYYY-MM-DD

## Packet Classification

- Primary industry:
- Secondary industries:
- Related companies:
- Products / technologies / assets:
- Value-chain location:
- Implied revenue / profit formula:
- Evidence quality:
- Key uncertainty:

## Selected Industry Frameworks

| Priority | Framework | Why selected | Main question it should answer |
| --- | --- | --- | --- |
| Primary | | | |
| Secondary | | | |

## Excluded Frameworks

| Framework | Why excluded |
| --- | --- |
| | |

## Handoff Instructions

- Frameworks to read:
- Packet sections to use:
- Metrics to verify:
- Data gaps to preserve:
- Final report sections affected:
```

## Router Guardrails

- Route by industry-specific economics, not by generic topic labels.
- Select the fewest frameworks that can explain the investment mechanism.
- Select multiple frameworks when the revenue/profit pathway crosses industries.
- If the topic is AI, semiconductor, space economy, software, energy, consumer electronics, healthcare, real estate, or financials, route to the corresponding industry framework.
- Mark missing data as `待补充`.
- Mark unverified claims as `待验证`.
- Do not create investment conclusions in the router.
