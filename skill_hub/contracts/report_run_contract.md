# Report Run Contract

This contract defines a complete report-writing run for the Buy-side Research OS.

A run is incomplete unless it produces every required artifact below.

## Required Inputs

- research topic or PM question
- category or data scope
- data packet built from `/Users/pangpatrick/Desktop/research_data/system_index`
- selected route from `skill_hub/router.md`

## Required Artifacts

```text
route.md
route.json
report.md
report_evaluation.md
validation_tasks.jsonl
```

Optional but recommended:

```text
run_manifest.json
source_snapshot.md
memory_update_candidate.md
```

## Required Run Order

```text
1. inspect runtime data layer
2. build context packet
3. create route.md and route.json
4. read selected references
5. read selected Skill Hub files
6. perform research event audit if early-signal sources are material
7. write report from local evidence only
8. evaluate report
9. create validation tasks
10. create memory update candidate
```

Do not write the report before the route exists.

## Report Evidence Rules

- Use runtime `system_index` records as the default evidence source.
- Preserve source URL, source type, evidence type, claim type, created_at, detected tickers, categories, and verification status.
- Treat X, a16z, and other early-signal sources as leads unless supported by stronger evidence.
- When early-signal sources are material, convert them into event rows with claim type, evidence type, ticker role, discovery stage, price-in status, and report use before writing the report.
- Mark unsupported claims as `待验证`.
- Mark missing evidence as `待补充` or `数据暂缺`.
- Do not fabricate financial numbers, sources, URLs, management quotes, market expectations, valuation assumptions, or catalysts.

## Required Report Checks

Every report must contain:

- PM-grade core conclusion
- five-question answer: consensus, our view, why now, best beneficiaries versus peers, and PM action
- Consensus / Our View / Why Now / Alpha Candidate Basket when listed-company exposure exists
- evidence chain
- value-chain and company mapping
- market expectation vs reality / price-in analysis
- Signal-to-Alpha investment logic
- catalysts
- bear case and invalidation
- PM next action
- validation tasks

Full reports should target about 8-10 PDF pages and should not read like Research OS run logs. Compress by removing repetition and process narration, not by deleting investment-critical content.

## Run Manifest Schema

If `run_manifest.json` is produced, include:

```json
{
  "topic": "",
  "category": "",
  "created_at": "",
  "data_packet_command": "",
  "record_count": 0,
  "route_path": "",
  "report_path": "",
  "evaluation_path": "",
  "validation_tasks_path": "",
  "primary_core_skill": "",
  "auxiliary_core_skills": [],
  "reference_files": [],
  "event_audit_required": false,
  "event_audit_path": "",
  "thinking_skills": [],
  "research_methodologies": [],
  "industry_frameworks": [],
  "analysis_methods": [],
  "report_template": "",
  "status": "complete"
}
```

Use `status: "partial"` if any required artifact is missing.
