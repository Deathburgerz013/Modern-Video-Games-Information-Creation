# Deserted-Island Survival Test Matrix

**Document state:** bounded pre-production instrument

**Target:** native PC third-person survival game

**Parent analysis:** `games/lost-in-blue-2-deserted-island-survival-loop.md`

This matrix tests whether one small island circuit can make survival difficult, legible, rewarding, beautiful, disturbing, and worth repeating across permanently mortal characters. It does not authorize a full archipelago, content production, or a claim that the notebook is literally sentient.

## Player promise

The player should feel that:

- daylight offers information and preparation, not guaranteed safety;
- night is dangerous enough to avoid but valuable enough to enter deliberately;
- skill increases control without deleting physical danger;
- the environment changes opportunities through weather, tide, and consequence;
- exploration reveals useful places, history, and secrets rather than map completion;
- death ends one character while recorded knowledge may help another;
- the notebook preserves real information while quietly narrowing future behavior;
- surviving a costly expedition earns a reward that the game does not spitefully revoke.

## Build one instrumented survival circuit

Build only:

- one primary beach and forest-edge region;
- one shelter site selected by the player from at least three physically viable locations;
- one reef shelf and one offshore islet reached by a temporary sandbar;
- one shallow cave with a short submerged passage and interior air pocket;
- one complete day, night, storm, sleep, and following morning;
- hunger, thirst, exhaustion, exposure, wetness, injury, bleeding, and infection risk;
- one companion with independent condition, knowledge, trust, and task acceptance;
- one fictional nocturnal predator and one hostile unknown human encounter;
- one tree-felling task with staged sound production;
- one active fishing encounter;
- collection, woodcraft, stealth, fishing, construction, and survival experience channels;
- one readable book that grants theory but not practiced capability;
- one improvised construction tier and one stable construction tier;
- one rare-event eligibility window with a persistent chance of no occurrence;
- one optional rare reward with a costly but survivable return route;
- one notebook inherited by a successor after permanent character death.

Do not add a large island, broad crafting catalogue, more enemies, more construction tiers, boats, firearms, a complete story, or a literal notebook intelligence until this circuit passes.

## Core state model

Separate:

| State | Scope | Persistence |
|---|---|---|
| Character body | condition, injury, fatigue, circadian state | ends permanently with character |
| Character capability | subsystem levels, practiced techniques | ends permanently with character |
| Pending learning | replay-verifiable action evidence since sleep | commits only at valid sleep; otherwise remains pending |
| Current knowledge | observations personally witnessed | ends unless physically recorded |
| Notebook knowledge | sourced observations, reports, readings, inferences, corrections | persists while notebook physically survives |
| Companion state | body, knowledge, trust, memory, location | persists independently while companion survives |
| World state | weather, ecology, structures, caches, corpses, routes, hostiles | advances continuously across characters |
| Human player knowledge | information remembered outside software | cannot be reset by the game |

The game must never present notebook inheritance as inherited muscle memory.

## Instrument the complete circuit

```text
wake with declared body, world, and notebook state
→ observe weather, tide, needs, companion, and unresolved questions
→ select daylight labor, route, and division of work
→ gather, fish, construct, read, or explore through PC-native actions
→ produce pending skill evidence and environmental consequence
→ decide whether a night-only need justifies leaving shelter
→ prepare light, tools, clothing, route, and recovery plan
→ encounter altered navigation, predator, and hostile-human pressure
→ obtain knowledge, capability evidence, resource, or rare opportunity
→ return injured, clean, stranded, collapsed, or dead
→ at valid rest preserve rough observations and advance the world
→ at completed sleep consolidate eligible experience and notebook corrections
→ on death seal the character record and continue only through a successor
→ recover the notebook as reported prior-author knowledge
→ recheck whether inherited truth remains current
```

## Required measurements

| Area | Minimum record |
|---|---|
| Identity | build, content, character, notebook, author, world seed, day, event-window IDs |
| Input | requested/accepted action, device, binding, timing, rejection reason |
| Body | need, exposure, wetness, wound, infection, sleep debt, cause and transition |
| Environment | weather vector, tide, wave set, light, temperature, wind, water, terrain mutation |
| Resources | physical source, extraction, transformation, quantity, quality, destination, depletion |
| Skill | subsystem, evidence event, difficulty, novelty, quality, repetition decay, pending/committed XP |
| Noise | source action, phase, intensity, masking, propagation, receiving threat |
| Threat | stimulus, confidence, route, search state, commitment, loss of certainty |
| Building | site conditions, support, tier, materials, labor, failure reason, weather result |
| Fishing | species, lure, cast, depth, tension, fish stamina, line state, landing outcome |
| Notebook | author, source class, observation, interpretation, uncertainty, correction, use |
| Death | cause, final body/world state, sealed entries, unwritten knowledge, successor boundary |
| Rare event | eligibility inputs, hidden resolution, witness opportunity, occurrence, residual evidence |

## PC interaction contract

- direct movement, mouse aim, controller support, and complete remapping;
- hold/toggle alternatives for sustained actions;
- no traced touch gestures, repeated button mashing, stick shaking, or cursor chores;
- contextual actions use readable committed animations and can be interrupted only through declared rules;
- tool differences derive from reach, noise, stamina, precision, durability, and material interaction;
- menus never continue a dangerous real-time action invisibly;
- inventory organization is fastest at a safe physical storage location;
- critical audio information has visual or haptic alternatives bound to the same event;
- darkness preserves silhouettes and navigable contrast without revealing unsupported information.

## Day, night, and routine

### Day

Day improves visibility, route reading, gathering efficiency, construction precision, and natural recovery. It still contains predators, heat, dehydration, unstable interiors, injury, traps, storms, and hostile residuals.

### Night

Night changes:

- temperature and exposure;
- landmark readability;
- sound propagation and masking;
- fictional predator activity;
- hostile-human presence;
- available fish, plants, passages, and rare-event witnesses;
- companion willingness and task risk;
- artificial-light visibility.

Night is not day with a dark filter.

### Circadian consequence

Breaking the daylight-labor/night-rest routine produces sleep debt, reduced stamina ceiling, slower recovery, worse precision, louder mistakes, poorer temperature regulation, and reduced sleep consolidation quality. Necessary night expeditions must remain viable through preparation and later recovery.

## Skill and sleep consolidation

Use independent subsystem levels, including collection, woodcraft, stealth, fishing, construction, survival, medicine, cooking, toolcraft, exploration, and firearms when firearms later exist.

An action produces a version-bound pending receipt only when it creates a meaningful result. Sleep calculates:

```text
eligible evidence
× bounded difficulty
× novelty
× execution quality
× consequence survived
× theory support
− repetition decay
= committed subsystem experience
```

Sleep is a commit boundary, not an XP source.

Reject XP from:

- picking up and dropping the same object;
- repeated unchanged trivial actions;
- damage farming against a non-resolving threat;
- building and dismantling equivalent structures without changed need;
- repeatedly entering one discovery trigger;
- sleeping without eligible pending evidence.

Books create `READ` theory, reveal techniques, reduce blind experimentation, or raise a bounded capability ceiling. Practice plus consolidation is still required.

## Collection

Collection experience comes from recognizing, extracting, preserving, transporting, and safely storing resources. Higher levels improve secondary recovery, source preservation, difficult extraction, organization, and recognition of disturbed or buried material.

Collection skill cannot create ammunition or rare material that the world did not contain.

## Stealth and physical noise

Stealth modifies physical execution rather than applying a hidden universal detection reduction.

Tree felling must emit separate events for preparation, impacts, cracking, fall, branch collision, processing, and transport. Woodcraft changes unavoidable noise through selection, lean inspection, notch, wedges, tool choice, and fall direction. Stealth changes timing, inventory control, masking use, route selection, and the ability to abort before commitment.

A skilled character cannot make a falling tree silent.

## Fishing

Fishing must include cast placement, lure behavior, depth, species attraction, line tension, rod angle, fish direction and stamina, line/rod durability, terrain hazards, and landing.

Skill improves interpretation and efficient control. It does not silently reduce fish strength. Weather, tide, time, water state, and species behavior alter the encounter.

## Construction and base placement

Allow field objects nearly anywhere physically valid, camps on environmentally viable terrain, and developed bases wherever their foundations and dependencies are supported.

Reject arbitrary developer plots and unrestricted floating construction.

Validation names exact causes:

- unsupported span;
- unstable soil;
- excessive slope;
- no anchor;
- unsafe ventilation;
- insufficient clearance;
- incompatible water depth;
- material or tool deficiency.

The notebook may warn of observed flood lines, wind exposure, predator territory, hostile visibility, resource distance, and escape limitations. It does not forbid a physically possible bad choice.

Construction admission requires:

```text
subsystem threshold
+ learned or tested design
+ correct tools
+ materials
+ valid site
+ sufficient light and environmental conditions
```

Test improvised and stable tiers only. Later mechanical, powered, and escape tiers remain proposals.

## Weather, tide, and ocean heartbeat

Weather consists of temperature, humidity, wind, precipitation, cloud, pressure, wave state, tide interaction, duration, and movement. Penalties arise through physical chains rather than direct arbitrary damage.

Example:

```text
rain → wet clothing → lost insulation → wind heat loss → impaired body state
```

Wave timing is quasi-periodic. Offshore swell, wind, tide depth, reef reflection, and interfering wave trains create an ocean heartbeat that is learnable but never exact. Larger waves require preceding physical cues; the system cannot spawn an untelegraphed wall of water.

The notebook may record a common rhythm and later correct it. It never displays an authoritative wave countdown.

## Archipelago and environmental gates

The ocean limits travel through distance, current, waves, exposure, predators, carried load, and landing conditions—not an invisible boundary.

Access gates derive from:

- tide windows;
- sandbar exposure;
- reef footwear;
- swimming and diving capability;
- breath and air pockets;
- weather and current;
- rope, light, cutting tools, climbing equipment, or boats;
- known safe landing and return routes.

The test is limited to one sandbar islet and one submerged cave passage. Reaching either must change a resource, capability, interpretation, or future route.

## Threat contract

The fictional predator has an ecological role, territory, stimuli, search behavior, and reason to disengage. It cannot continuously know the player position.

Unknown humans appear only at night in the tested circuit and are behaviorally hostile when they detect the player. Their identity and purpose remain unknown. They use supported sight, sound, tracks, light, and disturbed state. They carry only physically represented drops.

Future ammunition is finite or seeded in bounded world sources. RNG may alter location, not conjure supplies through repeated searches.

Combat remains expensive. Avoidance, preparation, trapping, and route knowledge must be viable.

## Rare stochastic event contract

Separate:

```text
rare eligibility
→ persistent hidden occurrence resolution
→ possible witness
→ optional commitment
→ reward and physical return cost
```

Eligibility never guarantees occurrence. Resolve chance once from committed world identity; reload, region re-entry, and repeated sleep cannot reroll it.

The test event uses an abnormally low tide exposing a reef route. It may produce:

- no occurrence despite eligibility;
- occurrence missed by the player;
- safe distant observation;
- brief investigation and retreat;
- successful rare recovery;
- successful recovery with cuts or equipment damage;
- tide-caught relocation into a bounded survival state;
- death only when no supported survival path remains.

If the player obtains the declared rare reward and survives, the reward remains. The game cannot revoke it to force tragedy.

Rare events may be dangerous, harmless, or beneficial. Rarity alone does not imply punishment.

## Notebook contract

The notebook automatically records bounded field observations. It separates:

- `OBSERVED` — directly witnessed by the current author;
- `REPORTED` — communicated by another person;
- `READ` — present in a physical source;
- `TESTED` — reproduced through action;
- `INFERRED` — supported interpretation;
- `CONTRADICTED` — later evidence conflicts;
- `UNKNOWN` — a required observation is absent;
- `PRIOR AUTHOR` — inherited from another character and not yet reverified.

At shelter, rough observations can be inspected. At completed sleep, eligible notes are organized and connected without erasing their source or uncertainty.

The notebook may hold maps, survival state, materials, designs, wildlife, fishing, hostile sightings, places, lore, companion communication, personal logs, and explicit questions. It cannot reveal undiscovered geometry, hidden resources, exact future schedules, private companion knowledge, or an omniscient solution.

## Permanent death and notebook inheritance

Actual death permanently closes the current character:

- character identity and body end;
- subsystem levels and muscle memory end;
- pending XP is not committed;
- unwritten discoveries are not transferred by software;
- sealed notebook entries remain if the physical notebook survives;
- the world and surviving people continue through elapsed time.

A successor must physically recover the notebook. Prior entries remain attributed to their authors and begin as inherited claims, even when the human player remembers them.

The notebook is the hidden cross-run loop. It never needs to speak, move itself, forge evidence, or contain false facts. Its danger is selection pressure:

```text
useful record
→ repeated successful route
→ increased trust
→ reduced testing outside its frame
→ predictable survivor behavior
→ environment and hostiles adapt
→ locally true guidance produces global convergence
```

The game must not announce this structure as a villain or solve it through exposition.

## Test passes

1. **PC interaction subtraction:** replace each physical action with its minimal input variant. Reject gestures or repetition whose removal changes no decision or readable skill.
2. **Day/night comparison:** replay the same route by day and night. Night changes rules, opportunities, and preparation—not merely luminance.
3. **Routine breaker:** perform one prepared night trip and one repeated sleep-deprived schedule. Measure whether cost changes planning without making night content irrational.
4. **Weather causality:** inject rain, wind, heat, and storm states. Every body, structure, route, and resource consequence traces through physical variables.
5. **Tree-noise replay:** fell the same tree with novice/expert woodcraft and stealth combinations. Preserve unavoidable fall noise while changing supported preparation and propagation.
6. **Fishing control:** test identical species encounters with different execution, equipment, weather, and skill. No hidden level multiplier may decide the catch alone.
7. **XP exploit breaker:** attempt pickup loops, trivial crafting, safe damage farming, discovery re-entry, dismantle loops, and repeated sleep. Unsupported XP remains zero.
8. **Book boundary:** provide accurate, outdated, and incomplete books. They grant sourced theory, never direct mastery or automatic truth.
9. **Sleep commit:** interrupt rest and sleep at every transition. Pending evidence commits once or remains pending; it never duplicates or partially levels.
10. **Base-site comparison:** build at beach, forest, and cave sites. Each remains physically possible where supported and produces distinct logistical and weather consequences.
11. **Tide crossing:** enter the sandbar at different phases. Evidence permits a bounded risk estimate, never an exact guaranteed timer.
12. **Wave deception:** teach the common wave rhythm, then introduce physically supported interference. Skilled players improve survival without obtaining certainty.
13. **Rare-event absence:** satisfy eligibility repeatedly across distinct legitimate windows. The test accepts no occurrence and preserves no false promise.
14. **Rare-event success:** recover the rare object and survive cleanly or injured. The object remains while physical consequences resolve independently.
15. **Night-human boundary:** observe, avoid, misdirect, and fight one hostile human. Detection uses supported stimuli and drops match carried equipment.
16. **Notebook honesty:** compare field event, rough entry, sleep compilation, and later correction. No stage exceeds available evidence.
17. **Author separation:** give player and companion different observations. They remain separate until deliberate communication or shared witness.
18. **Permadeath partition:** kill a character with committed XP, pending XP, recorded facts, unwritten facts, structures, caches, and companion memory. Verify every category.
19. **Successor recovery:** have the next character find the notebook. Prior truth is useful but not current-character observation, capability, or guaranteed current state.
20. **Notebook convergence:** run successors with and without inherited routes. Determine whether trusted guidance improves survival while making movement predictable or suppressing alternatives.
21. **Beauty/dread comparison:** test each place in attractive, threatening, quiet, and active states. Unease must persist without constant attack or uniformly ugly presentation.
22. **Player-memory boundary:** ask returning players what they know before notebook recovery. The game does not pretend it can erase human knowledge.

## Player questions

1. Why did you choose this shelter site?
2. What made night worth entering?
3. Which danger was supported, and which remained uncertain?
4. What did weather physically change?
5. What action created the most noise, and how could preparation change it?
6. What did the book teach versus what did practice teach?
7. Which experience committed at sleep, and why?
8. What did the notebook observe, infer, correct, and leave unknown?
9. Which prior-author claim did you trust without rechecking?
10. Did inherited knowledge create a route you stopped questioning?
11. What did the rare event offer, and what cost came from your chosen distance?
12. What persisted after death that belonged to the world, notebook, companion, player, or character?
13. Which beautiful place made you uneasy, and what evidence caused it?
14. What will the next survivor do differently?

Preserve player explanation separately from telemetry, notebook output, authored canon, and designer intention.

## Immediate stop conditions

Do not add islands, enemies, weapons, skills, books, construction tiers, rare events, lore, or endings while any remain:

- PC interaction depends on touch-derived gestures or repetitive input without a decision;
- darkness removes required visibility instead of changing uncertainty;
- day is guaranteed safe or night offers no exclusive reason to enter;
- fatigue merely slows every action without changing planning;
- weather applies arbitrary health damage without a physical transition;
- waves violate their own observable state to catch the player;
- skill deletes unavoidable danger or creates resources absent from world state;
- books grant mastery, private truth, or current facts without verification;
- XP can be farmed from unchanged state or duplicated across interrupted sleep;
- a base is restricted to arbitrary plots or survives unsupported terrain;
- an invalid placement lacks a physical rejection reason;
- an environmental gate is an invisible level requirement;
- the companion acts as inventory or consequence-free labor;
- threats continuously know the player location or spawn without supported entry;
- hostile drops exceed physically carried state;
- rare eligibility guarantees occurrence;
- reload or repeated region entry rerolls a rare event;
- a successful rare recovery is revoked to manufacture tragedy;
- every unusual cue becomes an attack, eliminating uncertainty;
- the notebook records unseen facts, merges authors, erases corrections, or grants capability;
- permanent death leaks character levels into the successor;
- notebook loss or inheritance commits partially;
- the world fully resets and erases declared consequences without an authored cause;
- inherited truth is automatically current despite weather, ecology, structures, and people changing;
- the notebook must lie, speak, or act physically for its convergence effect to work;
- the hidden loop is explained before players can observe its repeated structure;
- sadness or fear depends only on darkness, music, unavoidable loss, or text;
- surviving hard content produces no durable reward, capability, knowledge, or future possibility.

## Selection rule

Retain the smallest PC-native circuit in which preparation makes a dangerous night survivable, skill improves physical control without removing uncertainty, sleep commits only supported learning, weather and tide change opportunities causally, rare events remain genuinely stochastic, death permanently ends a character, and an inherited notebook preserves useful truth while measurably shaping successor behavior.

The next artifact is executable software only after every required state category can be represented and the matrix contains no unresolved foundational dependency.

