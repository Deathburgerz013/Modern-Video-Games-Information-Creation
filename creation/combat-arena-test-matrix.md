# Combat Arena Test Matrix

This is a reusable pre-content test for a game's primary combat circuit. It does not prescribe first-person, third-person, melee, ranged, fast, slow, lethal, or forgiving combat. It determines whether actions, threats, impacts, resources, space, and encounter pacing form a readable and repeatable decision loop.

## Build one instrumented arena

Include only what is needed to expose differences:

- an open center, two pieces of hard cover, one soft obstruction, and one flank loop;
- a short safe route and a longer resource-bearing route;
- one close threat, one ranged threat, and one area-denial threat;
- one stationary target, one armored target, and one moving target;
- one player attack with commitment, one defensive action, and one repositioning action;
- health or equivalent failure pressure and one recoverable combat resource;
- two encounter phases and an unmistakable completion state;
- independent toggles for damage, enemy logic, collision, animation, camera, sound, VFX, haptics, and interface feedback.

Do not build production encounters around an unverified combat circuit. This arena is a measuring instrument, not a level.

## Instrument the circuit

```text
input
→ accepted action and priority
→ weapon / ability state
→ target query and collision
→ authoritative outcome
→ enemy response
→ feedback channels
→ resource and encounter state
→ next visible threat and route
→ next player decision
```

Record frame or monotonic timestamps at each transition. Final damage and completion time cannot locate disagreement among intent, collision, authority, and presentation.

## Required observations

| Area | Minimum record |
|---|---|
| Player action | requested action, accepted action, rejection reason, commitment, cancel, recovery |
| Attack | origin, trajectory or volume, target query, hit location, material, outcome |
| Enemy intent | state, target, anticipation start, commitment, active collision, recovery |
| Feedback | event ID, channel, start time, duration, intensity, optional/reduced state |
| Resources | amount before, production rule, location, collection time, amount after |
| Space | route selected, cover duration, blocked route, flank exposure, collision correction |
| Encounter | active roles, pressure transition, reinforcement, release cause, completion signal |
| Player report | expected outcome, observed outcome, uncertainty, repeated failed attempt |

## Passes

### 1. Rules-only greybox

Disable sound, particles, shake, haptics, damage numbers, decorative animation, and music. Verify action priority, collision, damage, enemy state, resource production, routes, and completion. Presentation must not conceal a broken rule.

### 2. One feedback channel at a time

Enable animation, sound, VFX, camera, haptics, environment response, and interface separately. Ask the tester to identify miss, armor, damage, critical impact, kill, incoming attack type, unavailable action, resource availability, and encounter completion.

### 3. Full feedback stack

Enable every retained channel. Measure whether impact improves while the next threat and route remain visible. Stronger feedback that weakens the next decision is not a net improvement.

### 4. Threat overlap

Combine all enemy roles in open space, around cover, and at the flank junction. Record which cue disappeared, which attack caused damage, and whether the chosen defense matched the visible threat.

### 5. Resource pressure

Start below comfortable health or ammunition. Compare passive disengagement, the short safe route, and the longer recovery route. Recovery must be risky, understandable, reachable, and valuable without becoming the only valid action.

### 6. Repeated-run mastery

Repeat without changing content. Record route compression, earlier recognition, fewer surprise hits, new dominant strategies, and unused systems. A fun first surprise is not yet a durable combat loop.

### 7. Reduced-effects and device pass

Repeat with every supported input family and with optional flashes, shake, haptics, numbers, and high-intensity audio reduced or disabled. Rules and essential state recognition must survive.

## Player questions

Ask after the run:

1. Which failures felt caused by your decision, and which felt hidden?
2. What told you an attack connected, and what kind of result occurred?
3. Which enemy did you read first, and why?
4. When did you feel safe enough to choose instead of merely react?
5. What resource changed your route or target?
6. Which position or action became obviously dominant?
7. What did you try repeatedly that the system did not recognize?
8. On the final run, what had you learned that changed how you played?

Preserve answers separately from designer interpretation and telemetry.

## Stop conditions

Do not expand combat content while any remain:

- feedback confirms an outcome the authoritative event did not produce;
- attack presentation and collision disagree;
- supported effect reductions remove essential state information;
- enemy damage begins before its declared readable commitment;
- overlapping threats cannot be separated in the event trace;
- recovery resources are unreachable, arrive too late, or cost more unavoidable loss than they restore;
- one safe position, route, weapon, or repeated action solves every encounter phase;
- completion or release state is unclear;
- repeated failures are blamed on controls or rules and the trace cannot falsify that account;
- performance variance changes accepted actions, collision, damage, or enemy timing.

## Selection rule

Retain the smallest combat configuration that creates the intended decisions and emotions under the declared perspective, player abilities, enemy roles, arena geometry, devices, accessibility settings, difficulty bounds, and performance target. Add content only after that circuit survives isolation, overlap, pressure, repetition, and reduced-effects testing.
