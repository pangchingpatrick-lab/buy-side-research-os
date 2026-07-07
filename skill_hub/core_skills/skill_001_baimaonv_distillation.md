# Skill 001: 白毛女蒸馏

This core skill distills high-quality research cases into reusable thinking skills before industry framework selection.

It should extract how a strong research case thinks. It should not copy the case, summarize the stock opinion, or treat any recommendation as truth.

## Position In The System

```text
External Data / Research Case
-> Skill 001 白毛女蒸馏
-> Thinking Skills / Research Methodologies
-> Industry Framework Selection
-> Analysis Methods
-> Report Template
-> Buy-side Report
```

## 1. Objective

Extract reusable buy-side reasoning patterns from strong research cases.

The output should help the system decide:

- which thinking style should be used
- which existing thinking skills should be updated
- which research methodology may fit
- which industry framework may be relevant
- which validation methods should be combined later

## 2. What To Extract

Extract reasoning patterns that can be reused across future research tasks:

- market blind spot
- industry causal chain
- reverse value chain mapping
- chokepoint / constraint discovery
- narrative reframing
- alpha migration
- consensus detection
- financial validation bridge

For each extracted pattern, ask:

- What did the case notice that was non-obvious?
- What reasoning action made the case useful?
- Which value-chain, customer, financial, or consensus mechanism did it reveal?
- Which existing thinking skill should absorb this pattern?

## 3. What Not To Extract

Do not extract:

- copied opinions
- copied wording
- stock recommendation as truth
- only the conclusion
- unsupported valuation claims
- fabricated source claims, numbers, URLs, rankings, or market sizes
- private or restricted content without permission

The purpose is not to remember what the researcher thinks. The purpose is to preserve a repeatable thinking action.

## 4. Input

Allowed input types:

- X thread
- research note
- long-form article
- chart / case summary
- financial validation evidence

Input should preserve:

- source name
- source URL or identifier if available
- date
- author / account
- verification status
- known data gaps
- whether claims are verified facts, early signals, or opinions

## 5. Output

For each case, produce:

- thinking skills demonstrated
- reusable reasoning rules
- example pattern
- common mistakes
- which existing skill files should be updated

Use this output format:

```markdown
# Case Distillation

## Case
- Name:
- Source:
- Date:
- Verification status:

## Thinking Skills Demonstrated
- Skill:
- What this case teaches:
- Reusable reasoning rule:
- Example pattern:
- Common mistake:
- Existing skill file to update:

## What Not To Carry Forward
- Stock opinion:
- Unsupported claims:
- Case-specific details that should not become rules:

## Next Routing Hint
- Possible industry framework:
- Possible analysis methods:
- Evidence still 待验证:
- Data still 待补充:
```

## 6. Role Before Framework Selection

This skill helps AI decide:

- which reasoning style should be used
- which industry framework is relevant
- which analysis methods should be combined

The order matters:

```text
case first
-> distill thinking pattern
-> then choose the industry framework
```

Do not force a case into an industry framework too early. The case may reveal that the real issue is not the surface industry label, but a hidden bottleneck, customer architecture role, upstream supplier, or financial validation gap.

## 7. Relationship With Existing Modules

- Industry Frameworks answer: what to look at.
- Skill 001 白毛女蒸馏 answers: how to think.
- Thinking Skills / Research Methodologies answer: how to reason.
- Analysis Methods answer: how to validate.
- Report Templates answer: how to communicate.

## Operating Rules

- Distill the thinking action before making a report outline.
- Preserve uncertainty and mark unsupported claims as `待验证`.
- If a case only contains a conclusion but no reasoning path, do not turn it into a reusable rule.
- If the case demonstrates a new thinking action, update the most relevant existing thinking skill file instead of creating a duplicate skill.
- If the case demonstrates multiple thinking actions, map each action to a separate thinking skill.
- Keep the distilled rule short, testable, and reusable.
