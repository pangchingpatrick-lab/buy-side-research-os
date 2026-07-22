# Source And Evidence Taxonomy Reference

This reference defines how the Skill Hub should classify sources and evidence quality.

## Source Channels

| Source Channel | Typical Use | Default Confidence |
| --- | --- | --- |
| `filing` | 10-K, 10-Q, 8-K, prospectus, regulatory filing. | Strong |
| `transcript` | Earnings call, investor day, conference transcript. | Strong |
| `company_ir` | Investor presentation, official announcement, company blog. | Strong / Medium |
| `database` | Structured financial or operating database. | Medium / Strong |
| `broker_note` | Sell-side or buy-side research note already collected locally. | Medium |
| `specialist_research` | SemiAnalysis, GeoScope, technical specialist, expert article. | Medium |
| `news` | Reputable media or trade publication. | Medium |
| `social_post` | X post, thread, screenshot, forum post. | Weak by default |
| `newsletter` | a16z, founder/operator newsletter, market newsletter. | Weak / Medium |
| `price_action` | Price move, volume, relative strength. | Weak alone |
| `rumor` | Unverified channel check or claim. | Weak |

## Evidence Strength

### Strong

Use `strong` when evidence is primary, direct, and source-checkable:

- filing
- earnings call
- official company statement
- investor presentation
- regulatory document
- contract / order disclosure
- audited or structured data

### Medium

Use `medium` when evidence is credible but not primary:

- specialist research
- broker note
- trade publication
- credible news
- cross-source support
- technical teardown or domain expert note

### Weak

Use `weak` when evidence is useful as a lead but not proof:

- X post
- public thread
- screenshot
- unverified channel check
- price action
- rumor
- short opinion

## Verification Status

| Status | Meaning |
| --- | --- |
| `verified` | Supported by strong local evidence. |
| `partially_verified` | Supported by medium evidence or multiple weak signals. |
| `unverified` | Important but not checked. |
| `contradicted` | Local evidence conflicts with the claim. |
| `data_missing` | Current local data cannot verify or reject. |

## Report Use Rule

- Strong evidence can support conclusions.
- Medium evidence can support hypotheses with caveats.
- Weak evidence can create leads or validation tasks.
- Rumor and price action should not be the only support for a thesis.
