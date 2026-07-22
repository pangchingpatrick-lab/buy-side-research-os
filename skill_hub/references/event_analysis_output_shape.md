# Event Analysis Output Shape

This reference defines the expected shape when Skill 005, Skill 009, Skill 010, or event-audit logic produces a reusable event analysis.

It adapts the valuable idea from mature event-research skills: every pattern should show its evidence base, weakness, failure modes, and reusable method rather than only a conclusion.

## Required Sections

```text
Evidence base
-> validated patterns
-> weak hypotheses
-> failure modes
-> reusable method
-> validation tasks
-> memory candidate
```

## Output Template

```markdown
# Event Analysis

## Evidence Base
- Source packet:
- Time window:
- Number of source items:
- Number of event clusters:
- Market / benchmark data status:
- Minimum sample threshold if statistics are used:

## Validated Patterns
| Pattern | Evidence | Why It Matters | Caveat | Representative Sources |
| --- | --- | --- | --- | --- |

## Weak Hypotheses
| Hypothesis | Why Interesting | Why Weak | What Would Verify It |
| --- | --- | --- | --- |

## Failure Modes
| Failure Mode | How It Appeared | Report Risk | Fix |
| --- | --- | --- | --- |

## Reusable Method
- Demand shock:
- Constrained layer:
- Scarce capability:
- Beneficiary type:
- Evidence stack:
- Signal classification:
- Price-in / benchmark audit:
- Invalidation condition:

## Validation Tasks
-

## Memory Candidate
- Add to `memory/event_validated_patterns.md` only after evaluation:
- Add to `memory/event_failure_modes.md` only after evaluation:
```

## Discipline

- Write as research process, not promotion.
- Avoid buy/sell language.
- Prefer "this event cluster suggests..." over certainty.
- Preserve source traceability.
- Mark missing market data as `data_insufficient`.
- Do not add memory from one unevaluated post.
