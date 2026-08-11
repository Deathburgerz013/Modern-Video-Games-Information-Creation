# Exploration and Discovery Test Matrix

This is a reusable pre-content test for turning connected rooms into a place the player can learn, question, revisit, and remember. It rejects layouts that are solvable by graph traversal but empty of spatial meaning.

## Build one instrumented place

- six authored rooms assembled into one main loop and two optional branches;
- three junctions recognizable from every entrance;
- one distant landmark, one local silhouette, one functional landmark, and one persistent audio landmark;
- two taught anomaly classes and one deliberate non-actionable variation;
- one immediately solvable secret, one knowledge-gated secret, and one capability-gated route;
- one shortcut opened from its far side;
- one journal/map that records witnessed state only;
- one collectible, one practical reward, and one lore fragment behind different discoveries;
- pressure, quiet, and uncertain rooms controlled independently from geometry;
- save/reload, regeneration, accessibility, and hint controls.

Do not add procedural breadth yet. First prove that one small place can be remembered.

## Instrument the circuit

```text
enter a recognizable place
→ establish current route and unresolved differences
→ notice an anomaly or distant possibility
→ inspect, test, defer, or mark it
→ receive truthful feedback
→ discover, remain blocked, or reject the hypothesis
→ bind witnessed state to place identity
→ gain knowledge, capability, reward, or shortcut
→ reinterpret an earlier room
→ choose whether and why to return
```

Geometry creates opportunities. Environmental differences create questions. Persistent state lets those questions survive interruption.

## Required measurements

| Area | Minimum record |
|---|---|
| Place identity | room ID, template ID, run ID, entrances, landmark channels, mutations |
| Route | edge traversed, direction, travel time, wrong turn, shortcut state |
| Attention | anomaly presented, camera opportunity, noticed, inspected, ignored |
| Hypothesis | expected interaction, selected tool, result, retries, random interactions |
| Discovery | secret ID, discovery state, reward state, collection state, provenance |
| Memory | room recognition, route prediction, unresolved-clue recall, return reason |
| Assistance | map, marker, journal, hint tier, accessibility channel, information added |
| Tension | intensity before/after room, event layers, observation interruption |

## Test passes

1. **Blind route learning:** remove minimap, objective line, compass, and labels. Ask players to return to two named-by-description rooms and predict which connection reaches a third.
2. **Channel subtraction:** disable color, then audio, then lighting contrast, then distinctive props. No critical place or clue may depend on a single optional channel.
3. **Novel clue transfer:** teach an anomaly safely, then present a new instance in another theme. Record explanation before interaction.
4. **False-positive control:** include attractive decoration that is not actionable. Players should be able to reject it without testing every surface.
5. **Blocked-now, useful-later:** expose an unresolved feature before its rule or capability. After acquisition, measure unprompted recall and intentional return.
6. **Shortcut comprehension:** open the shortcut from the far side. Ask players where both ends are and which future trip it changes.
7. **Journal honesty:** compare witnessed events with entries before and after save/reload. Toggle hints separately. The journal may preserve a question but must not invent its answer.
8. **Reward substitution:** swap collectible, utility, lore, and empty-but-informative outcomes. Determine whether discovery remains satisfying or relied only on item value.
9. **Pressure subtraction:** run the same geometry with constant threat, guaranteed safety, and variable intensity. Measure clue notice, caution, boredom, and route memory separately.
10. **Seed replay:** regenerate the same seed and mutation history, then a different seed. Stable identities and evidence must reproduce; changed topology must not inherit false journal locations.

## Player questions

1. Where are you, and what distinguishes this place?
2. What routes do you think connect from here?
3. What looked suspicious, and what rule made it suspicious?
4. What did your interaction prove or disprove?
5. What remains unresolved?
6. Is there somewhere you now want to revisit? Why?
7. What did the shortcut change?
8. What did the journal remember that you had actually learned?
9. Which quiet room felt safe, and what evidence supported that belief?
10. Would you investigate this space without its reward?

Preserve the answers separately from route telemetry and designer interpretation.

## Stop conditions

Do not add more rooms, secrets, collectibles, or procedural variants while any remain:

- players distinguish rooms only through HUD labels or coordinates;
- a critical junction is recognizable from only one entrance;
- the valid secret strategy is exhaustive wall interaction;
- decorative and actionable anomalies have no learnable distinction;
- a scanner or marker states every investigation target before observation;
- returning repeats travel without changing a decision, route, interpretation, or threat;
- a shortcut reduces distance while making the spatial model less coherent;
- the journal records knowledge the player never witnessed;
- regeneration binds old discoveries to the wrong place;
- collection credit precedes discovery or ownership;
- constant pressure prevents looking, while constant safety erases caution;
- procedural variation destroys authored clue grammar or landmark identity;
- the layout is reachable but cannot be described, remembered, or intentionally navigated.

## Selection rule

Retain the smallest place in which players can recognize where they are, notice a bounded difference, test a learned rule, preserve the result, and later use that knowledge to make a new route decision. Expansion is warranted only when a new room creates a new readable relationship—not merely another node.
