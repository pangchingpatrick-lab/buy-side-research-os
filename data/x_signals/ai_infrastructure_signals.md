# AI Infrastructure X Signals

Collection Date: 2026-06-30

## Scope

Topic: `AI infrastructure`

This is a minimal end-to-end test fixture. No live X API data was accessed. All entries below are mock/sample signals and must be treated as `早期信号，待验证`.

## Source Priority Used

1. User's X following list via X API: not accessed in this test run; mock fixture used.
2. Priority X accounts `@sequoia`, `@a16z`, `@aleabitoreddit`: not accessed in this test run; availability logged as `数据暂缺`.
3. X search: not used.
4. Hacker News: mock fixture only.
5. Product Hunt: mock fixture only.
6. Official and financial validation: not accessed; `数据暂缺`.

## Following-List Signals

| signal_id | source_name | platform | url_or_identifier | date | author_account | source_type | credibility_rating | verification_status | captured_signal | notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| MOCK-X-001 | Mock X following-list signal 001 | Mock X API fixture | mock://x/following/ai-infrastructure-001 | 2026-06-30 | mock_followed_infra_builder | X / Hacker News / Product Hunt / WeChat articles | 2/5 | 早期信号，待验证 | Enterprise AI teams may be testing inference clusters closer to application workloads to reduce latency. | Synthetic sample only; not a real X post. |

## Priority Account Signals

| account | platform | url_or_identifier | date | source_type | credibility_rating | verification_status | captured_signal | notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| @sequoia | Mock X API fixture | mock://x/priority/sequoia/not-accessed | 2026-06-30 | X / Hacker News / Product Hunt / WeChat articles | 2/5 | 数据暂缺 | No live data accessed. | Real priority-account pull required before using in research. |
| @a16z | Mock X API fixture | mock://x/priority/a16z/not-accessed | 2026-06-30 | X / Hacker News / Product Hunt / WeChat articles | 2/5 | 数据暂缺 | No live data accessed. | Real priority-account pull required before using in research. |
| @aleabitoreddit | Mock X API fixture | mock://x/priority/aleabitoreddit/not-accessed | 2026-06-30 | X / Hacker News / Product Hunt / WeChat articles | 2/5 | 数据暂缺 | No live data accessed. | Real priority-account pull required before using in research. |

## Verification Notes

- No mock X signal is verified.
- No real X post URL, post ID, author claim, engagement metric, or timestamp was used.
- All X-related content in this file is test data and must remain labeled `早期信号，待验证` or `数据暂缺`.

## Source Index

| source_id | source_name | platform | url_or_identifier | verification_status |
| --- | --- | --- | --- | --- |
| MOCK-X-001 | Mock X following-list signal 001 | Mock X API fixture | mock://x/following/ai-infrastructure-001 | 早期信号，待验证 |
| MOCK-X-PRIORITY | Mock priority-account availability check | Mock X API fixture | mock://x/priority-accounts/not-accessed | 数据暂缺 |
