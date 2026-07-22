# Calling Sequence Reference

This reference explains how the Skill Hub calls files during a complete Research OS run.

## Standard Sequence

```text
runtime data layer
-> scripts/build_data_context.rb
-> skill_hub/registry.md
-> skill_hub/router.md
-> route.md / route.json
-> selected references
-> primary core skill
-> auxiliary core skills
-> thinking skills / methodologies
-> industry frameworks
-> analysis methods
-> report template
-> report
-> report evaluator
-> validation tasks
-> memory update candidate
```

## What Each Layer Does

### Runtime Data Layer

Stores local machine-readable evidence from the data collector.

Default source:

```text
/Users/pangpatrick/Desktop/research_data/system_index/
```

### Registry

Lists what modules exist.

The registry does not decide the route. It gives the agent the inventory.

### Router

Chooses the route for one task.

The router must select:

- one primary core skill
- zero to two auxiliary core skills
- selected reference files
- thinking skills / methodologies
- industry frameworks
- analysis methods
- report template

### References

Explain how to read labels, roles, fields, and standards.

References should be loaded only when needed.

### Core Skills

Define the dominant thinking mode.

One core skill must be primary. Others can be auxiliary, up to two.

### Thinking Skills / Methodologies

Shape the reasoning path. These should dominate the report logic more than industry frameworks.

### Industry Frameworks

Act as checklists for what to inspect in an industry.

They should not become the report skeleton.

### Analysis Methods

Convert thinking into checks: event audit, company mapping, financial validation, valuation, consensus gap, investment decision, validation loop.

### Report Template

Controls final communication format.

### Evaluator

Scores whether the report actually followed the Research OS.

### Memory

Stores evaluated lessons only after report evaluation.

## Anti-Pattern

Do not do this:

```text
raw data
-> report
```

Do this:

```text
data
-> route
-> references
-> thinking
-> validation
-> report
-> evaluation
```
