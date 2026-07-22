# Industry Framework Repository

`frameworks/` is the industry-specific framework repository for the Research OS.

The second part of the system is not a generic skill library. It is a set of reusable buy-side industry frameworks that convert a research packet into industry-aware reasoning.

Required flow:

`Research Packet -> Framework Router -> Industry Framework -> Insight Report -> Validation Questions`

## Purpose

Each framework captures how an industry actually creates revenue, profit, and market value. The goal is not to summarize an industry. The goal is to force each research packet through the correct buy-side questions:

- What is the industry essence?
- What growth driver is changing?
- Through what business model does the change monetize?
- Which operating metrics prove or disprove the thesis?
- Which listed companies are exposed?
- How does the signal flow into revenue, margin, orders, cash flow, valuation, or risk?
- What does consensus believe, and where could it be wrong?

## Available Industry Frameworks

| Framework | Use for |
| --- | --- |
| `ai_industry.md` | AI models, AI infrastructure, inference, agents, AI applications, data center AI demand |
| `semiconductor.md` | Chips, foundry, memory, advanced packaging, equipment, optical modules, semiconductor supply chain |
| `space_economy.md` | Launch, satellite internet, Earth observation, defense space, space infrastructure |
| `software_saas.md` | SaaS, enterprise software, developer tools, cloud software, usage-based software |
| `energy.md` | Power generation, renewables, grid, storage, oil and gas, energy infrastructure |
| `consumer_electronics.md` | Smartphones, PCs, wearables, AR/VR, devices, component cycles |
| `healthcare.md` | Pharma, biotech, medtech, services, hospitals, diagnostics, healthcare platforms |
| `real_estate.md` | Property development, rental assets, REITs, property services, real estate platforms |
| `financials_fintech.md` | Banks, brokers, payments, lending, insurance, fintech, exchanges, wealth platforms |

## How To Use

1. Start from `packets/[topic]_research_packet.md`.
2. Use `framework_router.md` to classify the topic and select one or more industry frameworks.
3. Read the selected framework files.
4. Apply the framework sections to the packet evidence.
5. Preserve all `待验证` and `待补充` items in the final report.
6. Generate validation questions for the next loop.

## Guardrails

- Route by industry exposure first, not by generic analysis type.
- Select multiple frameworks when a packet crosses industries, such as AI infrastructure requiring both `ai_industry.md` and `semiconductor.md`.
- Do not fabricate company mapping, financial impact, market size, pricing, volume, margins, or operating metrics.
- Treat X, Hacker News, and Product Hunt as early signals only.
- Use filings, earnings calls, investor presentations, regulator data, financial databases, and reputable research to validate.
- Reports are communication outputs; investment conviction comes from traceable framework reasoning.
