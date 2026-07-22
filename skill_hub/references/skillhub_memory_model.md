# Skill Hub Memory Model Reference

This reference defines what belongs in Skill Hub memory and when memory should be updated.

## Memory Is Not Raw Data

Do not store raw posts, article summaries, filings, PDFs, or source dumps in `skill_hub/memory/`.

Raw and readable data belong in the runtime data layer:

```text
/Users/pangpatrick/Desktop/research_data/
```

## Memory Stores Lessons

Memory can store:

- validated signal patterns
- repeated failure modes
- event-level lessons
- report scoring history
- candidate playbook updates
- framework improvements after evaluation

## Update Rule

Do not update memory from one interesting source item.

Update memory only after:

```text
report generated
-> report evaluated
-> reusable lesson identified
-> memory_update_candidate created
-> user or system promotes it into memory
```

## Memory Files

| File | Purpose |
| --- | --- |
| `memory/validated_patterns.md` | Successful signal-to-alpha and report patterns. |
| `memory/failure_modes.md` | General report and reasoning mistakes. |
| `memory/event_validated_patterns.md` | Event-level signal patterns that worked. |
| `memory/event_failure_modes.md` | Event-level signal interpretation mistakes. |
| `memory/playbook_updates.md` | Candidate updates before promotion. |
| `memory/score_history.jsonl` | Machine-readable report scores. |

## Promotion Standard

A memory update should state:

- source report
- route used
- evaluator score
- what worked or failed
- whether the lesson is general or industry-specific
- how future routes should change
