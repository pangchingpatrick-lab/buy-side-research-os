# Source Boundary

This document explains why this repository does not mirror every script found in public research-event repositories.

## What This Repo Is

This repo is the stable SkillHub and report operating layer.

It stores:

- skill package entry points
- routing logic
- contracts
- references
- core skills
- thinking skills
- industry frameworks
- analysis methods
- report templates
- evaluators
- memory rules

## What This Repo Is Not

This repo is not the raw data collector.

It should not duplicate:

- X scraping credentials
- paid database exports
- raw broker PDFs
- local API secrets
- daily raw archives
- runtime `research_data/` dumps

## Data Collector Boundary

The local data collector writes to:

```text
/Users/pangpatrick/Desktop/research_data
```

This repo reads:

```text
/Users/pangpatrick/Desktop/research_data/system_index
```

## Why We Do Not Add Fake `scrape.py`

Some public projects include:

- `scrape.py`
- `prepare_research_events.py`
- `enrich_research_events_*.py`

Those are useful when the repo owns the full data pipeline.

Our data pipeline already exists outside GitHub and writes a structured local index. Adding duplicate placeholder scripts here would confuse the system about the source of truth.

Instead, this repo exposes wrapper scripts:

- `skills/research-os-skillhub/scripts/inspect-runtime-data-layer.rb`
- `skills/research-os-skillhub/scripts/build-context-packet.rb`
- `skills/research-os-skillhub/scripts/validate-route-schema.rb`

These scripts connect to the existing local data layer without relocating raw data into GitHub.
