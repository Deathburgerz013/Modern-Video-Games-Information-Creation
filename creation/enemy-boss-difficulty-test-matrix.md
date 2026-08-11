# Enemy, Boss, and Difficulty Test Matrix

This is a reusable pre-content test for proving that enemies create readable decisions, variants change known rules, bosses teach before escalating, and difficulty changes play instead of merely extending it.

## Build one instrumented combat ladder

- one neutral arena and one arena with meaningful cover, hazards, elevation, and routes;
- four base roles: pursuer, ranged punish, area denial, and support;
- four rare variants that mutate movement, timing, defense, or ally interaction;
- one cosmetic-only variant and one hidden-stat variant as controls;
- one three-phase boss that isolates, combines, and spatially recombines rules;
- six independent difficulty axes: health, damage, composition, behavior, resources, and persistence;
- encounter seeds, role compatibility rules, phase state, and active modifiers recorded exactly;
- presentation toggles for silhouette, animation, sound, VFX, UI, and haptics;
- practice, checkpoint, accessibility, and reduced-effects controls.

## Instrument the circuit

```text
recognize enemy ancestry and role
→ perceive intent and current mutation
→ compare simultaneous pressures
→ choose target, position, tool, timing, or resource
→ observe causal success or failure
→ retain the learned counter
→ recombine roles or boss rules
→ apply a declared difficulty transformation
→ compare the changed decision against baseline
```

More danger is not automatically more depth. The comparison must name what the player now has to decide or execute differently.

## Required measurements

| Area | Minimum record |
|---|---|
| Identity | enemy, base role, variant, mutation set, spawn rule, seed |
| Intent | action, cue channels, cue start, commitment, impact, recovery |
| Decision | noticed roles, target order, position, tool, timing, resource |
| Composition | roster, simultaneous pressures, compatibility, dominant solution |
| Boss | phase, introduced rule, retained rule, recombination, transition |
| Difficulty | baseline rule set, modifier set, changed decision, duration, punishment |
| Failure | damage source, understood cause, response opportunity, retry cost |
| Accessibility | disabled channel, assistance, timing change, information retained |

## Test passes

1. **Solo role proof:** fight every base enemy alone. Remove it if its absence changes only health, damage, or time.
2. **Pairwise composition:** test every role pair. Record whether the combination creates a competing priority and whether one pair becomes unavoidable.
3. **Roster subtraction:** remove one role from the full encounter. Players should change target order, movement, resource use, or timing for an explainable reason.
4. **Variant ancestry:** show base and variant separately, then together. Players identify both the original role and the changed rule before death.
5. **Control comparison:** compare a behavioral variant with cosmetic-only and hidden-stat variants. Only externally readable, decision-changing mutations qualify as new mechanics.
6. **Boss lesson order:** isolate each boss rule, then combine two, then change arena constraints. Ask what was learned after every attempt.
7. **Focused retry:** checkpoint before the newest unsolved rule. Measure practice time rather than forcing repeated execution of solved phases.
8. **Difficulty-axis subtraction:** enable one axis at a time. If health or damage produces the same choices for longer, label it tuning—not new structure.
9. **Modifier pairs:** test every permitted pair and deterministically reject combinations that erase counters, cues, resources, or required space.
10. **Channel subtraction:** remove color, audio, VFX, UI, haptics, and animation exaggeration independently. Critical role, variant, and boss-state information remains available.
11. **Rare-spawn replay:** replay exact seed and rule state. Spawn, identity, mutation, journal, reward, and collection records must agree.
12. **Human mastery:** repeat until novelty fades. Retain only pressures that still produce attention, execution, routing, resource, or coordination decisions.

## Player questions

1. Which enemy matters first, and why?
2. What space is each role trying to deny or force?
3. What changed in the rare variant?
4. Which old counter still worked, and which failed?
5. What did the boss teach in this phase?
6. Was the failure predictable and preventable?
7. What did the selected difficulty rule make you do differently?
8. Did the fight become harder, longer, less readable, or strategically different?
9. Which solved section are you tired of repeating?
10. What would you change on the next attempt?

Preserve answers separately from health, damage, completion time, and designer intention.

## Stop conditions

Do not add more enemy types, variants, boss phases, or difficulty tiers while any remain:

- two roster entries produce the same optimal response;
- a lethal role is unreadable before unavoidable damage;
- mixed groups erase the cues needed to distinguish their members;
- one weapon, position, or target order dominates every composition;
- a rare variant differs only through color, health, damage, or reward;
- stacked mutations remove every counter or cannot be attributed;
- variant identity disagrees across spawn, journal, reward, or collection state;
- a boss phase discards prior feedback language without teaching a replacement;
- solved boss phases dominate retry time for a later unsolved rule;
- a difficulty modifier changes only duration or punishment;
- modifier combinations create deterministic impossible states;
- accessibility settings are treated as challenge penalties;
- average win rate hides one reproducible seed with no viable response;
- failure cannot be explained as a visible rule, decision, or execution error.

## Selection rule

Retain the smallest roster and modifier set in which every member changes a readable decision, every rare variant preserves comparable ancestry, every boss escalation builds on learned rules, and every difficulty axis can name what changed besides time and punishment.
