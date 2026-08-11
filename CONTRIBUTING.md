# Contributing

Contributions should make the library more useful for building or evaluating a game.

## Before adding a record

1. Define the exact claim.
2. Choose the smallest source that supports it.
3. Label observation separately from inference.
4. Search for an existing record with the same mechanic or relationship.
5. Prefer extending a connected slice over creating an isolated category.

## Source quality

Prefer, in order:

1. Direct play observation with build/version and capture notes
2. Official game documentation, patch notes, manuals, or developer material
3. Reputable technical analysis with reproducible examples
4. Community documentation for observable behavior
5. Opinion and reviews, explicitly labeled as subjective evidence

Do not copy substantial copyrighted text, art, music, maps, or code. Describe mechanics in original language and link to the source.

## Record rules

- Stable IDs use lowercase kebab-case.
- Dates use `YYYY-MM-DD`.
- Claims are limited to the declared game version and context.
- Every `OBSERVED`, `REPRODUCED`, or `RETAINED` record needs evidence.
- Every mechanic includes a smallest playable test.
- Costs and accessibility effects cannot be omitted; use `unknown` when not yet measured.
- New evidence may revise a record but does not erase its commit history.

## Pull-request checklist

- [ ] JSON records validate.
- [ ] Local references resolve.
- [ ] Observation and inference are distinguishable.
- [ ] Sources directly support the associated claims.
- [ ] No copied proprietary assets or long quotations were added.
- [ ] The change improves a creation decision or prevents a repeated failure.
