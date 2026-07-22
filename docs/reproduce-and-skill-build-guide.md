# Reproduce And Skill Build Guide

This guide lets another agent or developer reproduce the SkillHub structure and validate that it is usable.

## 1. Clone Or Open Repo

```bash
git clone <repo-url>
cd buy-side-research-os
```

## 2. Install Optional Python Tooling

The core local scripts use Ruby. Python dependencies are optional and mainly for external skill validation tools.

```bash
python3 -m pip install -r requirements.txt
```

## 3. Validate Skill Package Metadata

```bash
ruby -ryaml -e 'text=File.read("skills/research-os-skillhub/SKILL.md"); fm=text[/\A---\n(.*?)\n---/m,1]; h=YAML.safe_load(fm); abort "missing name" unless h["name"]; abort "missing description" unless h["description"]; puts "SKILL.md OK"'
```

## 4. Validate Route Schema

```bash
ruby skills/research-os-skillhub/scripts/validate-route-schema.rb
```

## 5. Inspect Local Runtime Data Layer

This requires the local runtime data folder:

```text
/Users/pangpatrick/Desktop/research_data
```

Run:

```bash
ruby skills/research-os-skillhub/scripts/inspect-runtime-data-layer.rb
```

## 6. Build Context Packet

```bash
ruby skills/research-os-skillhub/scripts/build-context-packet.rb ai 5
```

## 7. Build A New Report Run

1. Read `skills/research-os-skillhub/SKILL.md`.
2. Build a local context packet.
3. Read `skill_hub/registry.md`.
4. Read `skill_hub/router.md`.
5. Create `route.md` and `route.json`.
6. Read selected references.
7. Read selected core skills and analysis methods.
8. Write report.
9. Evaluate report.
10. Create validation tasks.
11. Create memory update candidate only after evaluation.

## 8. Do Not Rebuild Data Collection Here

This repo does not duplicate the raw data collector.

The local data collector writes to:

```text
/Users/pangpatrick/Desktop/research_data
```

The SkillHub reads that data and produces research workflows.
