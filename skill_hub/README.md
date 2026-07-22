# Skill Hub

`skill_hub/` stores reusable core skills, thinking skills, methodologies, frameworks, validation methods, and templates for the Research OS.

It does not collect external data. It assumes Step 1 has already collected and classified data from X, Reddit, filings, earnings calls, news, and databases.

The mature skill entry point is:

```text
skills/research-os-skillhub/SKILL.md
```

Use `skill_hub/` as the underlying library that the skill entry point calls.

## Folder Structure

```text
skill_hub/
├── registry.md
├── router.md
├── contracts/
├── references/
├── core_skills/
├── thinking_skills/
├── research_methodologies/
├── industry_frameworks/
├── analysis_methods/
├── report_templates/
├── evaluators/
├── examples/
└── memory/
```

## Role In The System

```text
Data / Case
-> Skill Hub Registry
-> Route Contract: route.md + route.json
-> Selected References
-> Core Skill Selection: Skill 001 / 002 / 003 / 004 / 005
-> Research Event Audit when early-signal sources matter
-> Thinking Skills / Research Methodologies
-> Industry Frameworks
-> Analysis Methods
-> Report Templates
-> Buy-side Report
-> Report Evaluator
-> Validation Tasks
-> Memory Update Candidate
```

## Operating Workflow

1. Step 1 collects information outside GitHub from X, priority accounts, filings, earnings calls, news, databases, and other approved sources.
2. Read `registry.md` to confirm available modules and default data source.
3. Create `route.md` and `route.json` using `contracts/route_contract.md`.
4. Select relevant references to explain field meanings, source labels, ticker roles, output standards, and memory rules.
5. Select exactly one primary core skill and zero to two auxiliary core skills:
   - `core_skills/skill_001_baimaonv_distillation.md`
   - `core_skills/skill_002_semianalysis_distillation.md`
   - `core_skills/skill_003_equity_research_playbook.md`
   - `core_skills/skill_004_serenity_bottleneck_mapping.md`
   - `core_skills/skill_005_research_event_distillation.md`
6. If early-signal sources are material, use `contracts/research_event_contract.md`, `thinking_skills/skill_009_research_event_reasoning.md`, `research_methodologies/research_event_distillation.md`, and `analysis_methods/event_audit.md` before the final report uses those signals.
7. Select the relevant thinking skills or research methodologies to define how to reason.
8. Select the relevant industry framework to define what to inspect.
9. Select the analysis methods and report template.
10. Generate the final report from the selected route.
11. Evaluate the report using `evaluators/report_evaluator.md`.
12. Convert the report's validation questions into `validation_tasks.jsonl` using `contracts/validation_task_contract.md`.
13. Create a memory update candidate after evaluation. Do not update memory from unevaluated reports.

The Skill Hub is therefore the thinking library. It is not the data collector and it is not a place for raw research dumps.

## Contents

- `registry.md`: top-level inventory of modules, data source, default report flow, and memory files.
- `router.md`: select the right core skill, thinking skills, methodologies, industry frameworks, analysis methods, and report template.
- `contracts/`: machine-readable execution contracts for routes, core skills, and validation tasks.
- `references/`: explanatory field definitions, ticker-role taxonomy, source/evidence taxonomy, output standards, calling sequence, and memory model.
- `core_skills/`: top-level reusable skills that shape the research process before framework selection.
- `thinking_skills/`: reusable reasoning units that define how to think through a signal or case.
- `research_methodologies/`: larger reusable reasoning styles distilled from high-quality researchers or cases.
- `industry_frameworks/`: reusable sector-specific thinking models.
- `analysis_methods/`: cross-industry buy-side methods such as financial validation and consensus gap analysis.
- `report_templates/`: Chinese PM-facing output formats.
- `evaluators/`: report quality scoring and hard-fail checks.
- `examples/`: examples of valid routes and report skeletons.
- `memory/`: evaluated lessons, validated patterns, failure modes, and score history. It is not raw data.

## Module Roles

- Skill 001 白毛女蒸馏 answers: "How should we think from a strong case?"
- Skill 002 SemiAnalysis 蒸馏 answers: "How should we reason through technical infrastructure and supply-chain economics?"
- Skill 003 Equity Research Playbook 蒸馏 answers: "How should classified evidence become an institutional equity research workflow?"
- Skill 004 Serenity 产业链卡点蒸馏 answers: "Which scarce layer matters first, and which companies are closest to the real constraint?"
- Skill 005 Research Event Distillation answers: "Which public claims are auditable events, and how can they enter the report without becoming noise?"
- Shared bottleneck references answer: "How do demand shock, constrained layer, scarce capability, beneficiary mapping, and price-in audit feed Skill 001-5?"
- Thinking Skills / Research Methodologies answer: "How should we reason?"
- Industry Frameworks answer: "What should we look at?"
- Analysis Methods answer: "How do we validate?"
- Report Templates answer: "How do we communicate?"
- Contracts answer: "How do we prove the system actually ran?"
- References answer: "What do the fields, labels, roles, and output standards mean?"
- Evaluators answer: "Was the output good enough?"

Skill 005 does not replace Skill 001-4. It adds event-level discipline and shared bottleneck references that feed the existing core skills:

- Skill 001 absorbs useful public-event patterns into reusable thinking skills.
- Skill 002 uses AI-infrastructure bottleneck method for technical architecture and supplier exposure.
- Skill 003 uses event role, evidence stack, and price-in logic to improve equity memos.
- Skill 004 uses the cross-industry bottleneck framework as the backbone for scarce-layer mapping.

## Complete Run Definition

A complete Research OS run must produce:

```text
route.md
route.json
final report / PM brief / investment memo
report_evaluation.md
validation_tasks.jsonl
memory_update_candidate.md
```

If the run only produces skill comparison notes, research bullets, or a report without route and evaluation, it is a partial run.

## Rules

- Do not store raw data here.
- Do not generate reports directly from unclassified data.
- Do not fabricate missing numbers, URLs, posts, accounts, claims, rankings, or market sizes.
- Preserve source traceability from the incoming classified packet.
- Mark unsupported claims as `待验证`.
- Mark missing evidence as `待补充`.
- Select one primary core skill. Do not use all core skills equally.
- Thinking skills and research methodologies must dominate the report logic.
- Industry frameworks are supporting checklists, not the main argument.
- Every final report must open with a PM-grade core conclusion: marginal change, PM action state, core thesis, research priority, and core verification points. Do not start with a process summary.
- Full industry reports and investment memos must include `买方投资逻辑（Signal-to-Alpha）`.
- `Signal-to-Alpha` sections must use signal clusters and close the loop from Signal -> Mechanism -> Beneficiary Mapping -> Earnings Impact -> Market Expectation -> Evidence Gap -> Catalyst -> Invalidation -> PM Action.
- Reports that rely on X, a16z, GeoScope, newsletters, or specialist public posts must include event audit discipline: claim, evidence type, ticker role, discovery stage, price-in question, and report use.
- Every final report must generate next-round validation tasks.
- Memory can only be updated after evaluation; unevaluated impressions should remain in `memory/playbook_updates.md` as candidates.
