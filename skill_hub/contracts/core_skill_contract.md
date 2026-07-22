# Core Skill Contract

Every core skill must expose the same decision fields so the router can select a primary skill and auxiliary skills consistently.

## Required Fields

Each core skill file should include:

```markdown
## Skill Contract

- use_when:
- do_not_use_when:
- input_required:
- output_contract:
- default_auxiliary_skills:
- compatible_frameworks:
- required_analysis_methods:
- failure_modes:
```

## Field Definitions

### use_when

When this skill should be selected as the primary skill or auxiliary skill.

### do_not_use_when

When this skill should be excluded, even if the topic seems related.

### input_required

The minimum local packet fields or evidence needed before using the skill.

### output_contract

The exact intermediate output this skill should produce. This is not the final report.

### default_auxiliary_skills

Which other core skills usually support this skill.

### compatible_frameworks

Which industry frameworks are commonly paired with this skill.

### required_analysis_methods

Which analysis method files should usually follow this skill.

### failure_modes

How this skill can produce a bad report if used incorrectly.

## Primary / Auxiliary Rule

Every full system run must select:

- exactly one `primary_core_skill`
- zero to two `auxiliary_core_skills`

Do not use all core skills equally. If every skill is selected as equally important, the route is not disciplined enough.

## Skill Output Is Not The Final Report

Core skills produce routing-ready reasoning:

```text
question
-> thinking path
-> mapping
-> evidence status
-> framework needs
-> analysis method needs
-> report template recommendation
```

The final report is generated only after industry frameworks, analysis methods, and a report template are selected.
