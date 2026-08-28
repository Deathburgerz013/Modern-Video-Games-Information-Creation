# Lost in Blue 2 — Deserted-Island Survival Loop Analysis

**Record state:** PROVISIONAL

**Purpose:** Extract an original, testable deserted-island survival structure from directly observable software organization and player-described experience without copying protected expression.

**Source artifact:** `Lost in Blue 2 (USA) (En,Ja,Fr,De,Es,It)(1).nds`

**Source SHA-256:** `7152ed1555d432df88df121ec0434c19e0b114dc613f35367c92f95639fb1b83`

## Evidence boundary

The supplied Nintendo DS ROM was inspected read-only. Its NitroFS contains 952 named files. Observable filename groups support the presence of:

- food, item, recipe, cooking, smoked-fish, and synthesis information;
- construction messages and job lists;
- animal names and descriptions;
- caves, rain, maps, status messages, and multiple numbered areas;
- multilingual narrative, demonstration, communication, and ending text;
- a distinct survival sound archive.

Those names establish the existence and separation of subsystems. They do not by themselves prove exact rules, balance values, causal relationships, or player experience. Claims about why the game works remain provisional until witnessed during play and recorded.

This analysis may learn from functional ideas. It grants no permission to copy code, audiovisual assets, maps, characters, dialogue, interface composition, data tables, or distinctive expression.

## Extracted survival structure

The useful structure is not any individual meter. It is a set of needs competing for the same limited time, stamina, materials, knowledge, and human attention.

```text
environment creates pressure
→ player notices a current need
→ player chooses a route and labor commitment
→ gathered material enters a transformation process
→ food, shelter, access, or knowledge temporarily improves
→ time and environment advance
→ the earlier choice changes the next available choices
```

The loop becomes survival when relief in one dimension consumes an opportunity in another. If every need can be satisfied through one dominant routine, the systems are parallel chores rather than an interlocking survival model.

### Functional pillars

| Pillar | Player-facing function | Required dependency | Failure to avoid |
|---|---|---|---|
| Needs | Make delay and exertion consequential | Time, consumption, readable condition changes | Fast drains that create maintenance spam |
| Gathering | Turn environmental recognition into resources | Distinct places, availability rules, carrying limits | Uniform nodes with no route decision |
| Transformation | Convert knowledge and labor into better outcomes | Recipes, tools, fire, preparation time | Crafting lists with automatic best choices |
| Shelter | Create a temporary planning anchor | Weather, temperature, sleep, maintenance | Permanent safety that ends environmental pressure |
| Exploration | Exchange present safety for future possibility | Landmarks, access gates, supplies, return cost | Empty distance or invisible walls |
| Companion | Divide labor while introducing another legitimate need | Trust, condition, task capability, communication | Companion as inventory extension or escort burden |
| Knowledge | Let observation improve later decisions | Journal, witnessed evidence, uncertainty | Omniscient objectives or unexplained recipes |
| Consequence | Preserve causal effects beyond immediate feedback | Persistent environment and human state | Punishment unrelated to an earlier choice |

## Original darker direction

### Working premise

Two people survive a wreck on an island that has supported other castaways before. Rescue remains physically possible, but every attempt to remain alive consumes part of the same finite environment needed to escape.

The island is not evil. It is indifferent, exhaustible, and unable to replace everything at the rate the player consumes it.

### Player promise

You can learn enough to survive. You may not be able to preserve everything required to remain the person you intended to be.

The player should feel:

- capable because observation produces reliable improvements;
- anxious because immediate relief can reduce future possibility;
- attached because the companion has independent needs, knowledge, and memory;
- grief when a consequence is understood rather than randomly inflicted;
- hope because uncertainty remains real and some losses can be prevented;
- responsibility because the environment retains evidence of prior choices.

Depression must come from legible accumulation, not constant darkness, helpless controls, arbitrary death, or a predetermined assertion that nothing matters.

## Persistent-consequence circuit

```text
need
→ bounded choice
→ immediate relief
→ environmental or relational residual
→ delayed consequence
→ observed evidence
→ changed future possibility
```

Examples:

- Cutting coastal trees supplies a roof before the storm but removes shade, fuel renewal, and a visible rescue landmark.
- Overfishing stabilizes food for two days but lowers later trap yield and changes animal activity.
- A large signal fire increases discovery probability while consuming dry fuel required after the storm.
- Sending the companion into the cave preserves player condition but transfers risk and can damage trust if the danger was concealed.
- Drinking uncertain water may preserve travel time while creating a later condition whose source can be reconstructed.

No delayed consequence is valid unless the game preserves enough evidence to connect it to a prior state and action.

## Human-state separation

Player and companion state must remain distinct:

| State class | Player | Companion | Shared |
|---|---|---|---|
| Physical | hunger, thirst, injury, exhaustion, exposure | independent equivalents | shelter temperature, stored food, water |
| Knowledge | personally witnessed places and rules | independently witnessed places and rules | communicated journal entries |
| Interpretation | player-selected hypotheses | companion conclusions and concerns | explicitly discussed plans |
| Authority | direct player actions | accepted or refused assigned labor | mutually agreed commitments |
| Relationship | trust given, promises remembered | trust given, promises remembered | disputes, reconciliations, abandoned plans |

The journal cannot silently merge private observations. A fact becomes shared only through witnessed joint experience, deliberate communication, or inspection of preserved physical evidence.

## Bounded knowledge journal

Each entry stores:

- observer;
- exact observation;
- place and environmental state;
- time or relative sequence;
- source object or event;
- current interpretation;
- alternative explanation still open;
- confidence state;
- later confirmation or contradiction;
- gameplay decision changed by the entry.

The journal must distinguish:

- **observed:** directly witnessed;
- **reported:** communicated by the other survivor;
- **inferred:** explanation consistent with observations;
- **contradicted:** later evidence conflicts;
- **unknown:** a required observation or checker is absent.

It never reveals undiscovered resources, exact rescue probability, hidden routes, the companion's private state, or certainty unsupported by evidence.

## Smallest playable test

### Declared slice

- one beach, one forest edge, one shallow cave, and one shelter site;
- three days and two nights ending in a storm;
- hunger, thirst, exhaustion, exposure, and one bounded injury state;
- one companion with independent condition, knowledge, and trust;
- gathering, carrying, fire, water purification, simple cooking, and shelter repair;
- one rescue signal requiring a resource also needed for survival;
- one irreversible resource decision;
- one delayed consequence with a replayable causal trace;
- one witnessed fact each survivor knows separately before communication;
- one journal correction after new evidence.

### Explicitly excluded

- combat;
- a large or procedural island;
- skill trees and experience levels;
- extensive recipes or crafting trees;
- base construction beyond one shelter;
- supernatural explanation;
- cinematics, voiced dialogue, final ending, online systems, or runtime generative content.

## Slice sequence

1. The player wakes after the companion and sees the remains of an unsuccessful signal.
2. Each survivor begins with one observation the other lacks.
3. Water and shelter cannot both be completed before night without assigning labor.
4. The first assignment exposes whether knowledge, danger, and expected cost were communicated honestly.
5. Rain changes water availability and destroys improperly protected fuel.
6. The player can consume the remaining dry material for warmth or preserve it for the rescue signal.
7. The storm resolves the accumulated physical, environmental, and relationship state.
8. The journal reconstructs supported causes while leaving unsupported conclusions unknown.

## Instrumentation

Record locally:

- build and slice identities;
- environmental state before and after every accepted action;
- requested, accepted, rejected, delegated, completed, and abandoned actions;
- resource source, quantity, transformation, consumption, decay, and destination;
- player and companion observations before communication;
- journal entry state and every correction;
- physical-condition changes and their supported causes;
- trust changes bound to witnessed promises, disclosures, omissions, and outcomes;
- signal construction state and consumed competing resources;
- end-state possibilities demonstrably preserved or closed.

Instrumentation describes the run. It does not decide enjoyment, moral correctness, or release.

## First playtest questions

After one run, ask the player to explain:

1. What created the largest later consequence?
2. Which observation warned that consequence was possible?
3. What did the companion know that the player initially did not?
4. Which resource served two incompatible purposes?
5. What would the player intentionally change on another attempt?
6. Which outcome felt arbitrary, if any?
7. Did the remaining uncertainty create hope, confusion, or indifference?

Compare the answers against the recorded causal trace. Player explanation is evidence of comprehension; telemetry alone is not.

## Retention criteria

Retain the concept only if:

1. most players identify the dual-use resource before or immediately after its first consequence;
2. every player intentionally changes at least one planned action when shown new evidence;
3. most players can connect the delayed consequence to the supported earlier choice;
4. the companion changes planning rather than merely increasing labor output;
5. journal separation prevents at least one false shared-knowledge assumption;
6. players describe sadness, dread, responsibility, or relief using a specific decision and consequence;
7. no required conclusion depends on copied content or unexplained omniscient information.

## Immediate stop conditions

Stop expansion while any remain:

- meters require attention more often than they create decisions;
- gathering has a single dominant route;
- the companion can be treated as consequence-free labor;
- a consequence cannot be traced to supported prior state;
- the journal merges observers or upgrades inference into fact;
- resource scarcity is hidden until punishment occurs;
- the rescue choice is fake or its result is predetermined;
- depression is communicated only through darkness, music, text, or unavoidable loss;
- survival failure repeats time without preserving usable knowledge;
- additional content is proposed before the three-day loop is playable.

## Relationship to Bound to Die

This is a separate candidate slice, not an expansion of `Bound to Die`.

It reuses repository-level design contracts—witnessed knowledge, causal mutation, state separation, environmental narrative, and evidence-backed playtesting—but it does not inherit the house, combat, weapon, enemies, rooms, story, or production scope.

The two concepts may later share validated infrastructure. They must first prove their own player-facing loops independently.

## Next artifact

Do not write a full production brief yet. The next justified artifact is a survival-loop test matrix that enumerates:

- competing needs;
- dual-use resources;
- companion knowledge separation;
- delayed-consequence traces;
- journal corrections;
- stop conditions for arbitrary punishment and maintenance spam.

