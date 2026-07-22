# Skill Package Structure

This repo uses a mature skill package structure for the main Research OS SkillHub.

## Package

```text
skills/research-os-skillhub/
├── SKILL.md
├── agents/
│   └── openai.yaml
├── references/
│   ├── calling-sequence.md
│   ├── routing-and-contracts.md
│   ├── core-skill-taxonomy.md
│   ├── research-event-discipline.md
│   ├── source-evidence-taxonomy.md
│   ├── ticker-role-taxonomy.md
│   ├── thinking-methods-map.md
│   ├── report-output-standard.md
│   ├── evaluator-and-memory.md
│   └── example-route.md
└── scripts/
    ├── inspect-runtime-data-layer.rb
    ├── build-context-packet.rb
    └── validate-route-schema.rb
```

## Why This Exists

Mature skills should not force the agent to read every file in the repository.

The entry point should:

- state when to use the skill
- define the source of truth
- explain the required run order
- link to references only when needed
- expose repeatable scripts
- preserve boundaries and guardrails

## Difference Between `skills/` And `skill_hub/`

`skills/research-os-skillhub/` is the callable package.

`skill_hub/` is the underlying rule library.

The skill package tells the agent how to operate. The library contains the deeper modules.

## Progressive Disclosure

Read in this order:

1. `skills/research-os-skillhub/SKILL.md`
2. selected files in `skills/research-os-skillhub/references/`
3. selected files in `skill_hub/`

Do not load all files by default.
