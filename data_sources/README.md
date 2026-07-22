# Data Sources

`data_sources/` defines the policy for collecting and routing data. The actual data is stored under `data/`.

The data layer is not a flat source list. It is a staged data system:

`Raw Intake -> AI Classification -> Storage -> Research Packet`

Research packets should not be created directly from raw data. They should be created from classified, processed, and validated data.

## Data Folder Structure

```text
data/
├── raw/
│   ├── x/
│   ├── company_filings/
│   ├── earnings_calls/
│   ├── broker_reports/
│   ├── news/
│   └── databases/
├── signals/
│   ├── x_signals/
│   ├── hn_signals/
│   ├── product_hunt_signals/
│   └── expert_opinions/
├── processed/
│   ├── ai/
│   ├── semiconductor/
│   ├── macro/
│   ├── commodity/
│   ├── consumer/
│   └── healthcare/
├── validated/
│   ├── company_financials/
│   ├── industry_metrics/
│   ├── market_data/
│   └── confirmed_signals/
└── metadata/
    ├── source_log.md
    ├── classification_log.md
    └── validation_log.md
```

## 1. Raw Intake

All original data enters `data/raw/` first.

Use these folders:

- `data/raw/x/`: original X API results, X post exports, account timelines, search results.
- `data/raw/company_filings/`: SEC filings, HKEX filings, exchange filings, IPO prospectuses, annual reports, quarterly reports.
- `data/raw/earnings_calls/`: earnings call transcripts, management Q&A, prepared remarks.
- `data/raw/broker_reports/`: broker reports, consulting reports, market research reports.
- `data/raw/news/`: reputable media, company news, press releases, industry news.
- `data/raw/databases/`: Wind, Choice, iFinD, Bloomberg, Refinitiv, FactSet, CapIQ, or other database exports.

Raw data must preserve the original source. Do not rewrite, summarize, or infer conclusions inside `data/raw/`.

## 2. AI Classification

Before an item enters a research packet, classify it by:

- source type
- industry/category
- related company
- information type
- signal vs evidence
- confidence level
- suitable analysis framework

Required classification fields:

| Field | Description |
| --- | --- |
| source_id | Stable identifier for the item |
| source_path | Path to the raw file or source note |
| source_type | X / filing / earnings call / broker report / news / database / expert opinion |
| industry_category | AI / semiconductor / macro / commodity / consumer / healthcare / other |
| related_company | Company, ticker, private company, product, or value-chain role |
| information_type | Product launch / customer adoption / pricing / demand / supply / capex / order / financial metric / management comment / technical bottleneck / market view |
| signal_vs_evidence | Early signal / verified evidence / opinion / unverified claim / market data |
| confidence_level | High / Medium / Low |
| suitable_analysis_framework | x-to-buy-side-report / sector deep dive / company memo / macro monitor / other |
| target_storage | signals / processed / validated / metadata |
| verification_status | 已验证 / 部分验证 / 早期信号，待验证 / 观点，非事实 / 数据暂缺 / 待补充 |

Log every classification decision in `data/metadata/classification_log.md`.

## 3. Storage

After classification, store or index each item into the correct folder.

### signals/

Use `data/signals/` for early signals that may matter but are not yet proof.

- `data/signals/x_signals/`: X early signals.
- `data/signals/hn_signals/`: Hacker News early signals.
- `data/signals/product_hunt_signals/`: Product Hunt launch/adoption signals.
- `data/signals/expert_opinions/`: expert, operator, investor, or consultant opinions.

### processed/

Use `data/processed/` for cleaned, categorized, and research-ready data.

- `data/processed/ai/`
- `data/processed/semiconductor/`
- `data/processed/macro/`
- `data/processed/commodity/`
- `data/processed/consumer/`
- `data/processed/healthcare/`

Processed data should be cleaner than raw data but must still preserve source references and verification status.

### validated/

Use `data/validated/` for evidence that has been verified against official or high-credibility sources.

- `data/validated/company_financials/`: revenue, margin, capex, EPS, guidance, backlog, orders.
- `data/validated/industry_metrics/`: verified industry data and regulator/association metrics.
- `data/validated/market_data/`: prices, valuation, estimates, ownership, revisions, market expectations.
- `data/validated/confirmed_signals/`: early signals that were later confirmed by primary or high-credibility sources.

### metadata/

Use `data/metadata/` for audit logs:

- `data/metadata/source_log.md`: all collected sources.
- `data/metadata/classification_log.md`: AI classification decisions.
- `data/metadata/validation_log.md`: validation attempts and outcomes.

## 4. Research Packet

Research packets are created only after data has been classified.

Inputs to a research packet should come from:

- classified early signals in `data/signals/`
- cleaned category data in `data/processed/`
- verified evidence in `data/validated/`
- audit trail in `data/metadata/`

Do not create a research packet directly from:

- raw X exports
- raw filings
- raw earnings call transcripts
- raw broker reports
- unclassified news
- unverified database exports

## Source Priority

1. User-designated analysis accounts.
   - Always check these first for early signal discovery.
   - Current must-check accounts: `@aleabitoreddit` / Serenity and `@AIInvestHK` / AI Tadpole / AI 小蝌蚪.
   - Treat them as early-signal sources only; their claims still require verification.
2. Topic-relevant accounts from the user's X following list.
   - Do not scan the whole following list blindly.
   - Filter the following list by topic before collecting timelines.
3. Institutional, operator, engineer, and investor priority accounts.
   - Examples: `@sequoia`, `@a16z`, founders/operators, engineers, and investors repeatedly discussing the topic.
4. X search when analysis accounts, following-list accounts, and priority accounts are insufficient.
5. Hacker News and Product Hunt as supplementary early-signal sources.
6. Company filings, annual reports, quarterly reports, IPO prospectuses, investor presentations, and earnings calls.
7. Government, regulator, and industry association data.
8. Financial databases such as Wind, Choice, iFinD, Bloomberg, Refinitiv, if available.
9. Broker reports, consulting reports, and reputable financial media.

## Credibility Ratings

- Official filings, annual reports, quarterly reports: 5/5
- Company announcements, investor presentations, earnings calls: 5/5
- Government, regulator, industry association data: 5/5
- Wind, Choice, iFinD, Bloomberg, Refinitiv: 4/5
- Broker research, consulting reports: 4/5
- Reputable financial media: 3/5
- X, Hacker News, Product Hunt, WeChat articles: 2/5
- Personal estimates or unverified claims: 1/5

## Guardrails

- Never fabricate posts, URLs, accounts, financial numbers, rankings, market size, or company claims.
- Never treat X, Hacker News, or Product Hunt as final proof.
- Do not skip classification.
- Do not bypass validation when official data is required.
- Keep source traceability from raw intake to research packet.
