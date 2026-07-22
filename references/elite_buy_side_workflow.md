# Elite Buy-Side Research Workflow

## Purpose

This reference defines the core workflow of the Research OS.

The Research OS is not designed as a report generator. It is designed to replicate the workflow of an elite buy-side analyst.

Reports are communication outputs, not the goal. The goal is to build investment conviction through traceable, reproducible research.

## Core Principles

- Build investment conviction, not generic industry content.
- Treat every conclusion as a hypothesis until supported by evidence.
- Make every conclusion traceable and reproducible.
- Use data to support, refine, or reject hypotheses.
- Separate early signals, verified facts, estimates, and opinions.
- Use X, Hacker News, and Product Hunt for early signal discovery.
- Use official data and financial data to validate signals.
- Mark missing or weak evidence as `待补充`, `待验证`, or `数据暂缺`.
- Communicate to the PM only after research, thinking, and decision steps are complete.

## Workflow Overview

1. Research Question
2. Scope Definition
3. Intelligence Collection
4. Evidence Validation
5. Hypothesis Generation
6. Hypothesis Attack
7. Investment Decision
8. PM Communication
9. Monitoring & Update

## 1. Research Question

Start with a precise investment question.

The question should define what the analyst is trying to learn or decide, not merely what topic to summarize.

Good research questions ask:

- What changed?
- Why now?
- Which company, value chain, or market segment is affected?
- What could create or destroy investment value?
- What decision does the PM need to make?

Output:

- a clear research question
- initial decision context: long, short, watch, ignore, or needs more work
- known uncertainties

## 2. Scope Definition

Define the boundaries of the work before collecting data.

Scope should include:

- industry or sub-sector
- geography
- public and private companies
- value chain boundaries
- timeframe
- source priority
- required validation standard
- expected output type

Output:

- research scope
- topic slug
- source plan
- explicit exclusions

## 3. Intelligence Collection

Collect, filter, and organize raw inputs through the data layer.

Priority sources:

1. user's X following list via X API
2. priority X accounts and relevant X search when needed
3. Hacker News
4. Product Hunt
5. official filings, annual reports, quarterly reports, IPO prospectuses, investor presentations, and earnings calls
6. Wind, Choice, iFinD, Bloomberg, Refinitiv, or other financial data terminals if available
7. broker reports, consulting reports, reputable media, government data, regulator data, and industry association data

X, Hacker News, and Product Hunt are early-signal sources. They help discover what may be changing, but they do not prove that the change is real or investable.

Output:

- source log
- early signal file
- data brief
- source credibility and verification status

## 4. Evidence Validation

Validate important claims before using them in analysis.

Validation should test:

- whether the source is credible
- whether the claim is attributable
- whether the data is current
- whether another source confirms or contradicts it
- whether the evidence supports the claim's magnitude and timing
- whether the claim is fact, estimate, opinion, or early signal

Official data and financial data are used to validate signals.

Output:

- verified facts
- partially verified claims
- rejected or weak claims
- unresolved conflicts
- missing data list

## 5. Hypothesis Generation

Convert validated evidence and early signals into testable investment hypotheses.

A hypothesis should state:

- what changed
- why it matters
- who benefits or loses
- what the market may misunderstand
- what evidence would confirm the view
- what evidence would disprove the view

Data is not collected for decoration. Data is used to support or reject hypotheses.

Output:

- bull hypothesis
- bear hypothesis
- neutral or base-case framing
- key variables to test

## 6. Hypothesis Attack

Attack the hypothesis before presenting it to the PM.

Ask:

- What would make this thesis wrong?
- Is the evidence strong enough?
- Is the timing investable?
- Is the market already pricing this in?
- Are there cleaner beneficiaries or better shorts?
- Are there alternative explanations for the same data?
- Are we confusing early signal with verified fact?

Output:

- strengthened thesis
- invalidated thesis
- remaining uncertainty
- bear case
- monitoring list

## 7. Investment Decision

Translate the research into a PM-facing decision.

Allowed decision states:

- long
- short
- watch
- ignore
- needs more work

The decision must follow from the evidence and hypothesis testing. If evidence is insufficient, the correct decision is `needs more work`, not a forced conclusion.

Output:

- decision state
- conviction level
- key evidence
- key risks
- required next data

## 8. PM Communication

Communicate the research only after the thinking and decision layers are complete.

Possible outputs:

- PM brief
- investment memo
- full research report
- PPT
- monitoring note

The communication should answer:

- What changed?
- Why now?
- Why does it matter?
- Who benefits?
- What does the market believe?
- Where is the market wrong?
- What could invalidate the thesis?
- What should the PM do next?

Output:

- concise PM-ready communication
- evidence chain
- action recommendation or next research action

## 9. Monitoring & Update

Research does not end when a report is written.

Monitor:

- catalysts
- earnings and guidance
- official filings
- product launches
- pricing changes
- customer adoption
- funding or M&A events
- market narrative shifts
- contradiction signals
- thesis invalidation markers

Update the research when new evidence strengthens, weakens, or invalidates the thesis.

Output:

- updated source log
- updated data brief
- thesis status
- PM update note when needed

## Operating Standard

The Research OS should move through the layers in sequence:

`question -> scope -> collect -> validate -> hypothesize -> attack -> decide -> communicate -> monitor`

Skipping from collection directly to report writing is a failure mode.

The analyst's job is not to produce more text. The analyst's job is to produce better judgment.
