# Bound to Die — Vertical-Slice Production Brief

**Document state:** bounded implementation target

**Product:** native desktop 3D third-person survival-action game

**Slice length:** 20–30 minutes for a first attempt; 10–20 minutes after learning
**Purpose:** determine whether the house, combat, discovery, weapon construction, and knowledge-bearing death form one enjoyable loop before producing a full game

This brief compiles the completed research library into software. It is not another research category and it is not permission to expand scope.

## Player promise

You wake somewhere that almost remembers you. You have no map and cannot trust apparent safety. By observing the house, building a weapon, surviving readable threats, and carrying verified knowledge across death, you learn how to reach places that seemed impossible on the previous attempt.

The player should feel:

- lost, but capable of learning the place;
- cautious because mistakes have readable consequences, not because controls are unreliable;
- relieved when preparation creates a temporary advantage;
- compelled to inspect environmental differences instead of interacting with every wall;
- satisfaction when a page completes a journal entry, explains an enemy, reveals a route, or changes a weapon decision;
- dread when a familiar room returns with one meaningful difference;
- hope that escape may be possible, without the game announcing that it is not.

## Product boundaries

### Selected

- native desktop executable; controller and keyboard/mouse;
- third-person camera with close environmental framing and readable combat distance;
- authored 3D room templates assembled into a deterministic run layout;
- no minimap, compass trail, objective beam, or omniscient scanner;
- one complete death/retry mutation;
- one weapon assembled from found physical parts;
- missable pages, modifications, and a rare hunt;
- environmental narrative fragments whose effects are playable;
- local single-player save only;
- one polished visual and audio theme at representative quality.

### Explicitly cut from this slice

- open world, grounds, attic, multiple floors, online play, cross-save, user accounts, achievements, monetization, crafting trees, procedural room geometry, multiple character classes, multiple full weapons, voiced conversations, cinematic cutscenes, final ending, New Game+, and platform certification;
- generative AI content at runtime;
- an explanation of the house's true ontology;
- a promise that every collectible can be obtained in one attempt.

## Perspective and control contract

The player walks, aims, shoots, dodges, performs a short shove, interacts, inspects, reloads, and opens the journal. Movement must animate and collide honestly; walls are never traversable unless a discovered rule explicitly makes one permeable.

The third-person camera may tighten for inspection and widen for combat but cannot reveal threats through walls. Aim assistance is configurable and disclosed. Every held input has a toggle alternative. All actions are remappable. Camera shake, bob, motion blur, flash, haptics, contrast, text size, subtitle background, and critical-cue channels are independently configurable.

## Core circuit

```text
wake in a recognizable but altered room
→ inspect landmarks and choose a route without an omniscient map
→ notice a bounded environmental difference
→ spend risk, sound, light, health, or ammunition to investigate
→ find a weapon part, page, mod, refuge resource, or enemy clue
→ bind the discovery to the journal only after witnessing it
→ assemble or alter the weapon at a physical workbench
→ use the learned rule in a readable combat or navigation decision
→ open a shortcut or reach the current threshold
→ die, survive longer, or deliberately retreat
→ retain declared knowledge while transient state resets
→ encounter a causally related house mutation
→ make a different first decision on the next attempt
```

The circuit fails if death merely repeats content, pages are flavor without consequence, weapons are collected whole, rooms are memorable only by labels, or the safest strategy is to run past every enemy.

## Vertical-slice place

Build nine authored templates. The generator may rotate and connect templates but may not alter their internal clue grammar.

| Room | Identity and purpose | Required decision |
|---|---|---|
| Calibration 47 | concrete origin, swinging work light, numbered equipment rail, impossible return anchor | leave through one of two initially plausible routes |
| Boiler workshop | noisy machinery, weapon bench, pressure gauges, temporary refuge while powered | spend a fuse on safety, weapon work, or a later door |
| Service junction | pipe silhouettes, three legible exits, shortcut gate seen from the wrong side | remember route and choose noise versus distance |
| Burned kitchen | black sink water, hanging cookware, edible resource, evidence of a prior struggle | search loudly for recovery or pass quietly |
| Nursery | mobile shadows, music-box audio landmark, page clue, unreliable sightline | distinguish clue motion from threat motion |
| Long gallery | repeated portraits, armored enemy route, breakable display case | fight for a gun part or find the learned bypass |
| Records room | experiment residue, torn ledger, knowledge-gated cabinet | apply a page clue instead of brute-force searching |
| Collapsed stair | vertical landmark and distant apparent exit, rare-enemy branch | commit scarce ammunition to an optional hunt |
| False threshold | exterior light, wind, impossible spatial return | recognize one contradiction before the encounter closes |

### Topology

- one main loop: Room 47 → service junction → kitchen → gallery → records → false threshold → Room 47;
- two optional branches: nursery and collapsed stair;
- one shortcut from records to boiler workshop, opened from the records side;
- three recognizable junction views and one persistent boiler audio landmark;
- one temporary refuge besides the workshop, created by spending the fuse in the nursery;
- no corridor longer than twelve traversal seconds without a branch, sightline change, interaction, or pressure transition.

The first run uses a fixed seed for playtest comparison. A second validated seed is permitted only after players can intentionally navigate the first.

## Combat system

### Player verbs

- **Aim and fire:** committed shot with visible recoil, material response, and exact hit state.
- **Dodge:** short reposition with no full-animation invulnerability assumption; active and recovery windows are visible in diagnostics.
- **Shove:** close interruption that creates space but cannot solve armored threats alone.
- **Walk / controlled movement:** substantially quieter than sprinting.
- **Inspect / interact:** unavailable during committed attack or damage response; rejection reason is surfaced through animation and sound.

### Built weapon: the Relay

The player never picks up a completed firearm. The Relay requires:

1. **Frame** in the gallery display case;
2. **Ignition coil** in the boiler workshop;
3. **Conductor barrel** behind the nursery clue or armored enemy route.

The workbench visibly assembles installed parts. Before completion the player has only shove, dodge, and environmental avoidance. Missing a part cannot permanently lose the weapon: an uncollected required part relocates through a declared fallback socket on the next attempt. Optional modifications remain missable within a run.

### Three optional modifications

- **Quiet winding:** lowers shot noise and enemy attraction but lengthens charge time.
- **Split conductor:** damages a second nearby target but increases resource cost.
- **Witness notch:** marks the last verified weak point in the journal after a successful hit; it never predicts an unseen enemy.

Only one modification may be installed in the slice. Changing it requires the workbench, so the selection changes the next route and encounter decision.

### Enemy roster

| Enemy | Readable role | Rule | Counter-decision |
|---|---|---|---|
| Listener | pursuit / sound pressure | has no useful sight; responds to impacts, sprinting, shots, and loud interactions | walk, misdirect with sound, or commit to a fast kill |
| Bound Resident | lane denial / armor | frontal shell rejects ordinary shots; committed attack exposes its back seam | dodge past, use room geometry, then shoot the seam |
| Pale Curator | rare hunt / rule mutation | appears only after two pages are bound; removes pages from loose surfaces and carries the Witness Notch | follow moved-paper traces and choose whether the optional reward is worth ammunition |

Enemies do not continuously trace the player. They investigate last supported stimuli, search bounded spaces, lose certainty, and expose their state through posture, sound, and environmental interaction. Spawning behind the camera is forbidden unless an authored entrance has been previously established and audibly signaled.

### Encounter sequence

1. Listener taught safely behind a barrier in the service junction.
2. One Listener in the kitchen with search and avoidance routes.
3. Bound Resident in the gallery, initially guarding the weapon frame.
4. Listener + Bound Resident overlap after the Relay is assembled.
5. Optional Pale Curator hunt after the second page.
6. False-threshold encounter recombines sound pressure and armor but adds no new enemy rule.

Combat ends with a visible release state. Health/ammunition drops have physical pickup confirmation before inventory credit. Recovery never materializes directly in the ledger.

## Discovery, pages, and journal

The journal begins almost empty and never writes facts the player has not witnessed.

### Four pages

| Page | Placement | Information | Mechanical effect |
|---|---|---|---|
| Impact study | kitchen, clearly discoverable | Listeners follow sound rather than sight | journal distinguishes heard versus suspected stimuli; walking cue becomes explicit |
| Lamination note | nursery, clue-gated | Bound Resident seam opens during committed attack | enables weak-point annotation only after the player observes one exposure |
| Wiring fragment | records cabinet, knowledge-gated | maps the three Relay parts as a circuit | adds workbench assembly diagram and fallback-part locations already witnessed |
| Handwritten 47 | false threshold, late | one prior route returned to the origin | marks the contradiction, not the conclusion that escape is impossible |

Pages are collectible objects with pickup, page-turn, ink, sound, journal-slot, and completion feedback. Two related fragments visibly complete an entry. A page may unlock a weapon modification recipe or enemy note, but core completion cannot require a permanently missable page.

The journal records:

- witnessed room silhouettes and connections;
- unresolved symbols as questions;
- enemy behavior the player directly triggered;
- installed and discovered weapon parts;
- death location and last verified cause;
- contradictions between attempts.

It does not display a complete generated map, hidden rooms, undiscovered loot, enemy positions, exact cycle count, or the true nature of the house.

## Death and restructuring

Death is an authored transition, not a generic reload.

### Lost on death

- health, ammunition, loose fuse, uninstalled optional modification, current enemy state, opened ordinary containers, and temporary refuge power.

### Retained on death

- journal pages already bound, witnessed enemy rules, weapon assembly knowledge, discovered modification recipes, run/death record, and one opened structural shortcut after it has been used from both sides.

### Physical status of the Relay

The completed weapon is not magically carried through death. Its **assembly pattern** is retained. On the next attempt, the workbench contains the recovered frame and coil; the player must reclaim only the conductor charge from one of two declared sockets. This creates a shorter but non-empty rebuild circuit.

### One slice mutation

After the first death, the service-junction route to the kitchen is sealed. A prior drip trail now runs toward the nursery, whose music-box rhythm matches a mark recorded on the Impact Study page. Following it opens the nursery-to-kitchen passage. The topology changes; the learned sound rule and landmark identities remain valid.

Mutation must preserve cause:

```text
recorded death and discoveries
→ declared mutation rule
→ changed connection and clue placement
→ regenerated reachability proof
→ player applies retained knowledge
```

Randomly moving doors without a learnable relationship is rejected.

## Narrative boundary — internal only

The house is a failed recursive identity archive. The player is a degraded re-instantiation of the original researcher. Room 47 is the calibration origin retained in every layout. Previous instances produced most pages and recordings; some remain as residents. The apparent exit is still inside the archive. The current instance eventually dies or is ingested, and its run becomes evidence for another.

The player does **not** receive that paragraph, a definitive cycle count, or the statement that escape is impossible. The slice exposes only compatible fragments:

- handwriting resembles the player's but is not declared theirs;
- a room shows evidence of an earlier route that should not coexist with the current layout;
- the recording knows one action the player just performed;
- Room 47 returns where geometry says it cannot;
- residents disagree while remaining locally sincere.

Every fragment must change a route, risk, weapon, enemy interpretation, or later observation. Flavor without playable consequence is cut from the slice.

## Sensory direction

### Image

- decayed institutional house rather than empty black rectangles;
- readable material families: wet concrete, oxidized service metal, smoke-dark wood, stained paper, aged porcelain;
- darkness contains silhouettes, reflected edges, particulate depth, and localized practical light—not crushed black;
- Room 47 uses cold swinging light and long periodic shadow; the boiler uses unstable amber; the nursery uses faded green/cream with one impossible blue reflection;
- important objects are integrated into believable clutter but share a learned shape/material grammar;
- repeated rooms preserve silhouette while one prop, stain, opening, reflection, or shadow violates memory.

### Animation and impact

- locomotion has acceleration, foot planting, turns, stops, hit reaction, reload, interaction reach, and surface-matched steps;
- the Relay has mechanical charge, discharge, recoil, chamber state, material hit, enemy response, and recovery;
- pickups travel hand → readable object → journal/inventory confirmation; ledger credit never precedes collection;
- enemy intent is readable in silhouette before damage begins.

### Sound and music

- room-tone identity precedes music;
- sound propagation is gameplay for Listeners and must match the authoritative stimulus event;
- low, depressive score uses sparse pulses and distant industrial thuds, adding layers only after state transitions;
- music may imply danger but cannot prove enemy presence or safety;
- every critical audio cue has a configurable visual or haptic alternative bound to the same event.

## Required system graph and implementation order

Build in this order. A later stage cannot begin while the named gate fails.

1. **Native project shell** — build identity, input abstraction, settings persistence, fixed timestep, diagnostic overlay.

   Gate: launch, remap, suspend/restart, and reproduce one input trace.
2. **Movement and collision room** — third-person camera, locomotion, dodge, shove, interactions, honest walls.

   Gate: no wall traversal; input-to-motion and camera comfort survive device/settings matrix.
3. **Authored room graph** — nine templates as greyboxes, fixed first seed, landmarks, doors, shortcut, reachability validation.

   Gate: players navigate the main loop and two branches without minimap or labels.
4. **Authoritative event spine** — event identities for action, sound, hit, pickup, page, door, death, save, mutation, and encounter state.

   Gate: presentation can be disabled without changing outcomes.
5. **Combat instrument** — Relay state machine, collision, resources, Listener, Bound Resident, encounter release.

   Gate: combat arena matrix has no active stop condition.
6. **Pickup, journal, and workbench** — parts, pages, physical confirmation, assembly, one modification choice.

   Gate: every credit has a witnessed source and every journal fact has evidence.
7. **Death/save/mutation** — state partition, atomic local save, first-death restructuring, replay packet.

   Gate: interruption at every commit boundary loses or duplicates nothing.
8. **Rare hunt and false threshold** — Pale Curator activation, optional route, recombined encounter, contradiction fragment.

   Gate: hunt is discoverable through learned clues and remains optional.
9. **Representative art/audio/animation** — replace one full path from Room 47 through the false threshold; retain greybox elsewhere.

   Gate: production treatment improves recognition, fear, and impact without masking decisions.
10. **Accessibility/performance/release pass** — configuration composition, lowest target, graceful degradation, deterministic failures.

    Gate: the production/accessibility/release matrix has no active stop condition for the declared slice target.

## Instrumentation

For each run record, locally and with player consent:

- build, content, seed, mutation, room, entrance, and configuration identities;
- requested and accepted actions with rejection reason;
- enemy perception stimulus, confidence, state, target, commitment, hit, and recovery;
- weapon part, installed mod, ammunition production/spend, pickup source, and credit time;
- page seen, inspected, collected, bound, entry completed, and later-use event;
- room route, wrong turn, landmark recognition, shortcut use, refuge state, and return reason;
- death location, supported cause, lost/retained partition, save commit, and successor mutation;
- CPU/GPU frame time, memory, IO, hitch, input latency, dropped cue, and authoritative checkpoint.

Telemetry describes behavior; it does not decide enjoyment, truth, or release by itself.

## First playtest protocol

Use 5–8 players who have not read the design. Each receives only controls and accessibility setup.

### Attempt one

- fixed seed, no map, no objective marker, no designer guidance;
- stop after death or false threshold;
- ask players to sketch remembered room relationships and explain each enemy rule, page, weapon part, safe assumption, and unresolved question.

### Attempt two

- apply the first-death mutation;
- retain only the declared knowledge state;
- observe whether the player intentionally changes route, movement noise, weapon plan, refuge use, and enemy priority.

### Controlled comparisons

- full feedback versus reduced effects;
- page mechanical reward versus lore-only wording;
- temporary refuge available versus fuse spent on route access;
- optional hunt present versus absent;
- fixed first layout versus second validated seed only after route learning succeeds.

## Slice success criteria

Retain the concept only if:

1. at least 70% of players intentionally navigate back to two rooms without a minimap;
2. at least 70% correctly explain the Listener rule and one Bound Resident counter after direct evidence;
3. weapon construction produces a remembered route/resource decision rather than three automatic pickups;
4. at least half discover one optional page/mod/hunt clue without exhaustive wall interaction;
5. page collection changes at least one later action for most players who collect it;
6. attempt two contains an intentional behavior change attributable to retained knowledge for every player;
7. death-to-control time stays under 20 seconds after the first transition while still communicating consequence;
8. no supported effects/accessibility configuration removes a required cue or changes authoritative state;
9. the lowest target profile meets its declared budgets without altering mechanics;
10. players describe fear, tension, curiosity, or relief using a specific room, sound, enemy, discovery, or decision—not darkness alone.

Percentages guide a bounded test; individual failure witnesses remain visible and cannot be averaged away.

## Immediate stop conditions

Do not add rooms, enemies, weapons, pages, endings, procedural variants, or polish while any remain:

- walking, aiming, shooting, dodging, shoving, collecting, or interacting lacks animation and readable response;
- collision permits unexplained wall traversal or enemies continuously know player position;
- rooms are identifiable only by labels, coordinates, or journal map;
- procedural assembly creates reachability without memorable place relationships;
- the valid secret strategy is exhaustive interaction;
- the journal reveals unwitnessed facts, hidden targets, the true ending, or certainty unsupported by evidence;
- a required weapon part can be permanently missed or a collected part receives credit before pickup;
- weapon mods do not change a later decision;
- enemies differ only in health, speed, or damage;
- the rare enemy is merely a low-probability spawn without a discoverable rule and distinct reward;
- safety or danger is absolute based only on music, light color, or room label;
- death repeats solved traversal without a changed route, interpretation, resource, threat, or choice;
- mutation erases learned causal rules or moves evidence without preserving identity;
- narrative text has no playable consequence;
- combat impact hides the next threat or falsely confirms an outcome;
- reduced effects or accessibility options remove critical meaning;
- performance settings alter simulation, persistence, rewards, or accepted actions;
- a crash or save failure cannot be reproduced or bounded;
- playtest reports say “boring,” “not scary,” “lost for no reason,” or “cheap” and the trace cannot locate a correctable subsystem.

## Production stop and next artifact

This brief is complete when its requirements are implementable without inventing another foundational system. The next artifact is a repository and native executable containing stages 1–3: project shell, movement/collision room, and nine-room fixed-seed greybox.

No additional design slice is justified before that executable is playtested.
