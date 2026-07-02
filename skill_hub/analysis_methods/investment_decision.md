# Investment Decision Method

Use this method to translate research into a PM-facing action state.

## Decision States

Choose one:

- `Long candidate`
- `Short candidate`
- `Watchlist`
- `Avoid`
- `Need more evidence`

## Decision Logic

| Decision | Use when |
| --- | --- |
| Long candidate | Verified evidence, clear company exposure, upside not fully priced, catalyst visible |
| Short candidate | Consensus too optimistic, downside evidence credible, timing/catalyst visible |
| Watchlist | Theme important but valuation, timing, or evidence incomplete |
| Avoid | Weak linkage to earnings, low-quality evidence, or poor risk/reward |
| Need more evidence | Interesting signal but not enough verified data |

## Output

```markdown
## Investment Decision

- Decision:
- Rationale:
- Evidence supporting:
- Evidence missing:
- Upgrade conditions:
- Downgrade conditions:
- PM next action:
```

## Guardrails

- Do not force an action when evidence is insufficient.
- `Watchlist` and `Need more evidence` are valid outcomes.
- State what would change the decision.
