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
| Long candidate | Verified evidence, clear company exposure, variant view is explicit, why-this-ticker is clear, timing catalyst visible, upside not fully priced |
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
- A ticker cannot be an alpha candidate only because it belongs to a hot theme.
- Before assigning `Long candidate`, state the consensus view, the variant view, and why the market may not have fully priced it.
- Before assigning `Long candidate`, state why now rather than last year or next year.
- If the thesis is structurally true but timing is unclear, use `Watchlist` or `Need more evidence`.
