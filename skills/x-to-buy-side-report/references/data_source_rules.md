# Data Source Rules

Use this file before collecting, classifying, filtering, or routing data.

## Goal

Collect decision-useful signals and validation evidence, then route them through the runtime data layer:

`Raw Intake -> AI Classification -> system_index -> Context Packet -> Skill Hub Router`

Do not collect random posts. Do not create reports directly from raw data.

The current canonical runtime data layer is:

```text
/Users/pangpatrick/Desktop/research_data
```

Machine workflows should read:

```text
/Users/pangpatrick/Desktop/research_data/system_index
```

## Required Data Workflow

### 1. Raw Intake

All original data enters the external runtime `raw_data/` archive first.

Route raw items by source type:

- `raw_data/YYYY-MM-DD/`: daily raw archive, source logs, and raw collection artifacts.
- `system_index/documents/`: canonical structured records.
- `system_index/index.jsonl`: global machine index.
- `system_index/category_index/*.jsonl`: category indexes.
- `readable/`: human-readable PDFs only.

Do not rewrite raw data. Preserve original source context and identifiers.

### 2. AI Classification

Before an item can be used in a research packet, classify it by:

- source type
- industry/category
- related company
- information type
- signal vs evidence
- confidence level
- suitable industry framework

Classification fields:

| Field | Required value |
| --- | --- |
| source_id | Stable identifier |
| source_path | Raw source path or URL |
| source_type | X / HN / Product Hunt / filing / earnings call / broker report / news / database / expert opinion |
| industry_category | AI / semiconductor / macro / commodity / consumer / healthcare / other |
| related_company | Company, ticker, private company, product, or value-chain role |
| information_type | Product launch / adoption / pricing / demand / supply / capex / order / financial metric / management comment / technical bottleneck / market view |
| signal_vs_evidence | Early signal / verified evidence / opinion / unverified claim / market data |
| confidence_level | High / Medium / Low |
| suitable_analysis_framework | x-to-buy-side-report / sector deep dive / company memo / macro monitor / other |
| target_storage | signals / processed / validated / metadata |
| verification_status | 已验证 / 部分验证 / 早期信号，待验证 / 观点，非事实 / 数据暂缺 / 待补充 |

Store classification metadata in the canonical JSON records under `system_index/documents/*.json`.

### 3. Storage

After classification, store or index the item into `system_index` and `readable`.

Use `system_index/` for machine-readable records:

- `system_index/index.jsonl`
- `system_index/category_index/[category].jsonl`
- `system_index/documents/[document].json`

Use `readable/` for human-readable PDFs only.

Do not use the repository's legacy `data/` directory as the active storage layer unless the user explicitly requests a legacy migration.

### 4. Research Packet

Context packets must be built from:

- `system_index/index.jsonl`
- `system_index/category_index/[category].jsonl`
- `system_index/documents/*.json`

Context packets must not be built directly from:

- raw X exports
- raw filings
- raw earnings calls
- raw broker reports
- raw news
- unclassified database exports

Default command:

```bash
ruby scripts/build_data_context.rb [category|all] [limit]
```

## Source Router

Before searching, define:

- which analysis accounts should be checked first
- which topic-relevant accounts from the user's following list should be checked next
- which keywords should be searched
- which companies, products, or technologies are linked to the topic
- what would count as a high-quality signal
- which official or financial sources could validate the signal later
- where each source type will be stored after classification

## Data Collection Priority

1. User-designated analysis accounts.
   These are the first accounts to check before scanning the broader following list.
   - `@aleabitoreddit` / Serenity
   - `@AIInvestHK` / AI Tadpole / AI 小蝌蚪
   - Similar high-signal AI / semiconductor / tech investment analysis accounts explicitly named by the user
   - Treat these accounts as early-signal sources only, not proof.
   - Score their posts for specificity, investment implication, and verifiability before using them in the core thesis.

2. Topic-relevant accounts from the user's X following list.
   - Identify relevant accounts before collecting.
   - Do not scan the whole following list blindly.
   - Use the user's following list to expand from the analysis-account layer into official company accounts, founders, operators, engineers, and investors relevant to the topic.

3. AI infrastructure institutional and operator accounts.
   - `@sequoia`
   - `@a16z`
   - founders/operators at AI infrastructure companies
   - engineers working on GPU, inference, data center, networking, cloud, or chips
   - investors who repeatedly discuss AI infrastructure

4. Primary-signal posts.
   Prioritize posts containing:
   - first-hand operating insight
   - product launch information
   - customer adoption signal
   - pricing, demand, or supply commentary
   - capex or order-related signal
   - technical bottleneck
   - funding, hiring, or partnership signal
   - links to primary sources

5. Repeated credible signals.
   A signal becomes important only if it appears across multiple credible sources or is supported by a primary source.

6. X search.
   Use broad X search only when user-designated analysis accounts, topic-relevant following-list accounts, and priority accounts are insufficient.

7. Supplementary early-signal sources.
   Use Hacker News and Product Hunt only as supplementary early-signal sources.

8. Validation sources.
   Use company filings, annual reports, quarterly reports, earnings calls, investor presentations, IPO prospectuses, broker reports, consulting reports, reputable media, and financial databases to validate signals.

## Avoid Low-Quality Signals

Exclude:

- generic hype
- memes
- viral but unsupported claims
- price-only commentary
- vague AI optimism
- engagement bait
- vague commentary
- promotional filler
- duplicate posts
- posts with no company, product, technology, or industry implication

## Signal Scoring

Score every collected signal from 1 to 5:

- relevance to topic
- source credibility
- specificity
- investment implication
- verifiability

Total score = 25 maximum.

Only use signals with total score >= 18/25 in the main report.

Signals below 18/25 should go to `待观察 / 附录`, not the core thesis.

## Required Core Signal Output

For every core signal, include:

- source account
- why this account matters
- original claim
- signal type
- related company/product/technology
- score
- verification status
- why it matters for buy-side research
- storage path after classification

## Verification Status

Use only:

- `已验证`
- `部分验证`
- `早期信号，待验证`
- `观点，非事实`
- `数据暂缺`
- `待补充`

## Guardrails

- Do not fabricate posts, URLs, accounts, data, rankings, metrics, or company claims.
- Do not treat X, HN, or Product Hunt as proof.
- Do not skip AI classification.
- Do not build packets directly from raw data.
- Preserve traceability from raw source to packet.
