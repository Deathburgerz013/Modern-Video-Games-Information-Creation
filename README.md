# Modern Video Games: Information & Creation

An evidence-backed working library for understanding why games work and turning that knowledge into playable software.

This repository is not a ranking site, a list of favorite games, or a warehouse of copied design documents. It records observable mechanics, the experiences they support, their dependencies and tradeoffs, how they interact, and the smallest playtest that can determine whether they belong in a new game.

## What this repository produces

The useful output is an ordered creation plan:

```text
desired player experience
+ player and platform constraints
+ observed mechanics
+ required supporting systems
- incompatible patterns and known failures
= a bounded, playable vertical-slice plan
```

The library supports five connected record types:

1. **Game analyses** — bounded observations of released games.
2. **Mechanic records** — reusable descriptions of player-facing rules.
3. **System interactions** — evidence about mechanics that strengthen, weaken, require, or conflict with one another.
4. **Playtests** — observations from a specific build, player, and session.
5. **Creation briefs** — selected mechanics ordered into something buildable.

## The working loop

```text
OBSERVE → EXTRACT → RELATE → BUILD → PLAYTEST → COMPARE
     ↑                                           |
     └────────────── REVISE OR RETAIN ───────────┘
```

- Observation describes what happened without claiming why.
- Extraction proposes the mechanic responsible.
- Relationship records what else the mechanic needs or changes.
- A build turns the proposal into executable behavior.
- Playtesting records behavior and player response.
- Comparison determines whether to retain, revise, reject, or retest.

## Evidence states

Every record declares one state:

| State | Meaning |
|---|---|
| `PROVISIONAL` | A useful proposal that has not been directly checked. |
| `OBSERVED` | Confirmed in a cited game, source, or captured play session. |
| `REPRODUCED` | Recreated in a playable test with recorded results. |
| `RETAINED` | Repeated evidence supports using it under the declared constraints. |
| `REJECTED` | A bounded test failed; the failure remains useful evidence. |

Popularity is not proof that a mechanic caused enjoyment. A review, sales total, benchmark, or designer quote is evidence only for the claim it directly supports.

## Repository map

```text
schemas/       Machine-readable contracts for records.
templates/     Human-friendly starting documents.
mechanics/     Reusable mechanic records organized by player-facing function.
games/         Bounded analyses of individual games.
interactions/  Relationships between mechanics and systems.
playtests/     Version-bound observations from playable builds.
creation/      Concept briefs and ordered vertical-slice plans.
tools/         Local validation and search utilities.
tests/         Tests for repository tooling and example records.
```

Directories are created when they contain a real record. Empty taxonomy is avoided.

## Mechanic record requirements

A mechanic record answers:

- What can the player do or decide?
- What response does the game produce?
- What behavior does that feedback encourage?
- Which desired experience can it support?
- Which systems must exist before it works?
- Which systems strengthen or conflict with it?
- What does it cost to produce and maintain?
- How can it fail?
- What is the smallest playable test?
- What evidence would cause revision or rejection?

See [`templates/mechanic-record.md`](templates/mechanic-record.md) and [`schemas/mechanic.schema.json`](schemas/mechanic.schema.json).

## Corrections and history

Git commits preserve the historical record. Do not rewrite a conclusion merely because later evidence changed it.

- Correct factual mistakes in a new commit.
- Explain the correction in the commit or record notes.
- Use `supersedes` when a new record replaces an earlier conclusion.
- Preserve rejected experiments when their failure can prevent repetition.
- Never label inference as observation.

## Validate locally

The tools require only Python 3.10 or newer.

```bash
python tools/validate_records.py
python -m unittest discover -s tests -v
```

Validation checks identifiers, evidence states, required fields, referenced local records, duplicate IDs, and undeclared top-level fields.

Search records by any combination of terms:

```bash
python tools/search_records.py movement responsiveness
python tools/search_records.py dash --status OBSERVED
python tools/search_records.py combat feedback
python tools/search_records.py resource recovery --status OBSERVED
python tools/search_records.py reward collection
python tools/search_records.py currency purpose --status OBSERVED
python tools/search_records.py exploration secret
python tools/search_records.py landmark revisitation --status OBSERVED
python tools/search_records.py enemy role variant
python tools/search_records.py boss difficulty --status OBSERVED
```

Reusable pre-content instruments currently include:

- [`creation/movement-feedback-test-matrix.md`](creation/movement-feedback-test-matrix.md)
- [`creation/combat-arena-test-matrix.md`](creation/combat-arena-test-matrix.md)
- [`creation/reward-economy-test-matrix.md`](creation/reward-economy-test-matrix.md)
- [`creation/exploration-discovery-test-matrix.md`](creation/exploration-discovery-test-matrix.md)
- [`creation/enemy-boss-difficulty-test-matrix.md`](creation/enemy-boss-difficulty-test-matrix.md)

## Initial research order

The library grows by complete, connected slices rather than isolated lists:

1. Movement and control feedback
2. Combat readability and impact
3. Rewards, pickups, and currencies
4. Progression and collection
5. Room, encounter, and exploration structure
6. Enemies, bosses, and difficulty
7. Music, sound, animation, lighting, and interface feedback
8. Death, retry, persistence, and replayability
9. Narrative delivery and environmental storytelling
10. Production architecture, performance, accessibility, and release

Each research slice connects mechanics, game analyses, interaction records, and a playable test specification before the library advances to the next production area.
