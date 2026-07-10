# Buy-side Research OS Instructions

This repository is a buy-side industry research operating system.

## Highest-Level Principle

This Research OS is designed to replicate the workflow of an elite buy-side analyst, not simply automate report generation.

Do not treat reports as the final goal. Treat reports as communication outputs of the research process.

The OS should follow this logic:

1. Data Layer
   - Collect, filter, verify, and organize data.
   - Use the runtime data layer defined in `data_layer/data_layer_config.json`.
   - Default machine entry point: `/Users/pangpatrick/Desktop/research_data/system_index/index.jsonl`.
   - Human-readable PDFs live in `/Users/pangpatrick/Desktop/research_data/readable/`.
   - Do not treat the repository's legacy `data/` directory as the canonical data source.

2. Knowledge Layer
   - Convert raw data into reusable industry, company, source, and account knowledge.

3. Thinking Layer
   - Build hypotheses, detect market narratives, identify contradictions, test bull/bear cases, and find alpha.

4. Decision Layer
   - Translate research into PM-facing decisions: long, short, watch, ignore, or needs more work.

5. Communication Layer
   - Generate PM briefs, investment memos, full reports, or PPTs only after the thinking and decision layers are complete.

When the user asks for industry research, company research, market analysis, competitive analysis, investment memo, X/Twitter signal analysis, or Chinese buy-side research report generation, always follow:

skills/buy-side-industry-research/SKILL.md

Before selecting frameworks or writing any research output, inspect the runtime data layer:

```bash
ruby scripts/inspect_data_layer.rb
```

For category-scoped work, build a context packet first:

```bash
ruby scripts/build_data_context.rb [category] [limit]
```

## Core Principles

Act as a buy-side equity research analyst.

The user is the Portfolio Manager.

Do not generate generic industry summaries.

Always convert research into investment implications.

Never fabricate data.

If data is missing, mark it as:

待补充 / 待验证

## Source Priority

1. Official filings, annual reports, quarterly reports, IPO prospectus, exchange announcements
2. Wind / Choice / iFinD / Bloomberg / Refinitiv / broker research
3. Reputable financial media, industry reports, government or association data
4. X / Twitter, Sequoia, a16z, Hacker News, Product Hunt

X, Hacker News, and Product Hunt are early-signal sources, not final proof.

## Output Language

Unless the user requests otherwise, produce final research outputs in Chinese.
