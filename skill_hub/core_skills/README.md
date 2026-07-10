# Core Skills

`skill_hub/core_skills/` stores top-level skills that shape the research process before industry framework selection.

Core skills are used when the input is a research case, X thread, long-form note, chart summary, or technical case that should improve the Skill Hub. They distill reusable reasoning patterns before the system decides which industry framework to inspect.

## Position In The System

```text
External Data / Research Case
-> Skill 001 白毛女蒸馏 or Skill 002 SemiAnalysis 蒸馏
-> Thinking Skills / Research Methodologies
-> Industry Framework Selection
-> Analysis Methods
-> Report Templates
-> Buy-side Report
```

## Available Core Skills

### Skill 001: 白毛女蒸馏

File:

- `skill_hub/core_skills/skill_001_baimaonv_distillation.md`

Use when the case is mainly about:

- hidden upstream assets
- blind spots
- alpha migration
- value-chain reframing
- overlooked chokepoints
- market label vs actual economic role

### Skill 002: SemiAnalysis 蒸馏

File:

- `skill_hub/core_skills/skill_002_semianalysis_distillation.md`

Use when the case is mainly about:

- AI infrastructure
- semiconductors
- GPU clusters
- HBM
- networking
- ASICs
- foundry
- advanced packaging
- datacenter capex
- optical interconnect
- technical architecture
- supply-demand balance
- cost curve
- margin pool analysis

## Relationship With Other Modules

- Core Skills decide how to distill a case before routing.
- Thinking Skills / Research Methodologies define how to reason.
- Industry Frameworks define what to inspect.
- Analysis Methods define how to validate.
- Report Templates define how to communicate.

## Guardrails

- Do not copy wording from any source.
- Do not summarize only the conclusion.
- Do not treat stock recommendations as truth.
- Do not generate a report from a core skill.
- Preserve source traceability and verification status.
- Mark unsupported claims as `待验证`.
- Mark missing data as `待补充`.
