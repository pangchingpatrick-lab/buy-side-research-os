# Validation Task Contract

Validation questions should become machine-readable data-layer tasks.

The final report can include human-readable validation questions, but the system should also emit `validation_tasks.jsonl` so Step 1 can collect or verify evidence later.

## JSONL Fields

Each line should be one task:

```json
{
  "task_id": "ai-2026-07-14-001",
  "created_at": "2026-07-14",
  "topic": "AI infrastructure",
  "claim": "Meta Louisiana data center expansion reached 5GW and $50B+ planned investment.",
  "why_it_matters": "Determines whether datacenter power and physical capacity are the primary scarce layer.",
  "data_needed": ["official company announcement", "local government filing", "capex disclosure"],
  "preferred_sources": ["company filings", "earnings call transcript", "investor presentation", "official project document"],
  "priority": "High",
  "expected_confirming_evidence": "Official MW capacity, capex amount, construction schedule, and power connection timeline.",
  "expected_disconfirming_evidence": "Project size lower than claimed, delayed timeline, no official confirmation, or capex not tied to AI capacity.",
  "owner_layer": "data_layer",
  "status": "open"
}
```

## Priority Levels

- `High`: can change investment judgment or layer ranking.
- `Medium`: improves confidence or company mapping.
- `Low`: useful background, but unlikely to change the current decision.

## Guardrails

- Do not answer validation tasks inside the Skill Hub.
- Do not invent source evidence.
- Each task must name the claim being tested.
- Each task must name the expected confirming and disconfirming evidence.
