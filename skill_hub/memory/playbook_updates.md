# Playbook Updates

This file stores proposed updates to Skill Hub rules after report evaluation.

Do not update core skills directly from one weak example. Add a candidate here first, then promote it after repeated evidence.

## Update Candidate Format

```markdown
## YYYY-MM-DD - [Short Title]

- source_report:
- evaluator_score:
- affected_files:
- observed_issue:
- proposed_update:
- promotion_rule:
```

## Current Candidates

### 2026-07-22 - Market Reaction Must Stay Close To Earnings Evidence

- source_report: pending
- evaluator_score: pending
- affected_files:
  - `analysis_methods/consensus_gap.md`
  - `analysis_methods/valuation.md`
  - `report_templates/full_system_report.md`
- observed_issue: Price-in analysis becomes too speculative when market reaction is separated from the actual earnings, guidance, or catalyst record.
- proposed_update: Require market reaction claims to cite both event evidence and price/market reaction evidence, or mark `市场预期数据暂缺`.
- promotion_rule: Promote after two evaluated reports show improved score on consensus / variant view.
