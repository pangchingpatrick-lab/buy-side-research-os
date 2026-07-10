# Data Layer Contract

This directory defines how the Research OS connects to the local runtime data layer.

The canonical data layer is not stored inside GitHub. It lives locally at:

```text
/Users/pangpatrick/Desktop/research_data
```

## Runtime Structure

```text
research_data/
├── raw_data/
│   └── YYYY-MM-DD/
│       ├── raw_documents.jsonl
│       ├── raw_collection.pdf
│       ├── source_log.json
│       └── source_log.md
├── readable/
│   ├── ai/
│   ├── cloud/
│   ├── datacenter/
│   ├── semiconductor/
│   ├── memory/
│   ├── optical_cpo/
│   ├── robotics/
│   ├── space/
│   ├── software/
│   ├── consumer_electronics/
│   ├── energy/
│   ├── macro_policy/
│   ├── us_market/
│   ├── company_research/
│   └── uncategorized/
└── system_index/
    ├── index.jsonl
    ├── documents/
    └── category_index/
```

## Separation Of Concerns

`readable/` is for human use.

- It should contain PDFs only.
- The user opens this directory to read research items.
- It must not be polluted with JSON, index files, logs, or machine artifacts.

`system_index/` is for machine use.

- `index.jsonl` is the global entry point.
- `category_index/*.jsonl` is the category-specific entry point.
- `documents/*.json` contains canonical structured records.
- Agents and Skill Hub workflows should read from here first.

`raw_data/` is the daily raw archive.

- It is useful for audit and recovery.
- It is not the default entry point for research workflows.

## Machine Read Order

When a Research OS module needs data, it should read in this order:

1. `system_index/index.jsonl`
2. `system_index/category_index/[category].jsonl`
3. `system_index/documents/[document].json`
4. `readable/[category]/[document].pdf` only when a human-readable copy is needed
5. `raw_data/YYYY-MM-DD/*` only for audit, recovery, or debugging

## Canonical Record Fields

Each document in `system_index/documents/` should include:

- `id`
- `summary_title`
- `text`
- `url`
- `source_type`
- `author`
- `handle`
- `created_at`
- `saved_at`
- `detail_categories`
- `tag_layers`
- `display_tags`
- `search_keywords`
- `tag_sources`
- `detected_tickers`
- `detected_topics`
- `relevance_score`
- `research_value_score`
- `final_score`
- `primary_pdf_path`
- `readable_pdf_paths`
- `json_path`

## Legacy Data Policy

The repository's historical `data/` directory is legacy/sample material.

It should not be treated as the canonical data source. New workflows should use the external runtime data layer described above.

Do not commit raw PDFs, private API outputs, paid data exports, or daily raw dumps into this repository.
