# Reward, Pickup, and Economy Test Matrix

This is a reusable pre-content test for the circuit that turns an earned event into durable value. It tests state and player decisions, not how many particles appear around a chest.

## Build one instrumented reward loop

- one repeatable activity with a clear completion event;
- six rewards: common, distinct, duplicate, capped resource, collection item, and upgrade material;
- manual, automatic, delayed, interrupted, and inventory-full pickup paths;
- a visible collection ledger;
- one knockout pool that changes after baseline completion;
- two currencies with explicitly different purposes;
- three sinks: immediate utility, long-term unlock, and optional collection;
- save, reload, migration, disconnect, and duplicate-delivery controls;
- toggles for presentation channels without changing reward authority.

## Instrument the circuit

```text
qualification
→ roll or deterministic selection
→ reward identity and state
→ spawn / delivery
→ collection authority
→ inventory and collection ledger
→ presentation
→ comparison with owned state and goals
→ spend, equip, retain, dismantle, or continue
→ changed next decision
```

Record the authoritative transition before recording celebration. A glowing object is not ownership.

## Required measurements

| Area | Minimum record |
|---|---|
| Qualification | activity, grade, eligibility, pool version, profile state |
| Selection | deterministic rule or declared probability, candidate set, chosen identity |
| Delivery | spawn, destination, capacity, interruption, retry, duplicate prevention |
| Persistence | inventory identity, collection identity, save version, reload result |
| Economy | source, balance before, cost, sink, balance after, cap or retirement behavior |
| Decision | noticed reward, understood value, selected action, changed next goal |
| Presentation | event ID, channel, timing, intensity, reduced-effects behavior |

## Test passes

1. **Authority without celebration:** disable reveal animation, sound, VFX, haptics, rarity beams, and numbers. Verify selection, delivery, inventory, ledger, balances, and reload.
2. **Presentation layers:** enable one channel at a time. Players identify availability, collection, rarity class, inventory destination, and failure without false ownership.
3. **Duplicate sequence:** force repeated duplicates before, during, and after knockout completion. Verify pool state and player understanding.
4. **Capacity and interruption:** fill inventory, disconnect during delivery, reload before collection, and retry. Nothing is silently lost or duplicated.
5. **Currency purpose:** give early and late profiles the same balances. Ask what each currency buys, why to save it, and what next decision spending changes.
6. **Cap and retirement:** approach a cap, exceed it, retire a material, migrate costs, and verify that earned value and instructions remain coherent.
7. **Long-run simulation:** run enough deterministic seeds to expose distribution tails, not merely the mean. Preserve the exact seed and pool version for every outlier.
8. **Human repetition:** repeat the activity until novelty fades. Record when anticipation, mastery, collection progress, or economic purpose still changes the decision—and when it does not.

## Player questions

1. What exactly did you earn, and when did it become yours?
2. Where did it go?
3. Was a duplicate useful, disappointing, or confusing—and why?
4. What remains in the pool, and how do you know?
5. What is each currency for?
6. What purchase would change what you do next?
7. Which reward made you want another run?
8. When did repeating the activity stop producing a meaningful decision?

Preserve answers separately from probabilities, telemetry, and designer interpretation.

## Stop conditions

Do not expand reward content while any remain:

- presentation can claim ownership before the authoritative transition;
- disconnect, reload, capacity, or retry can lose or duplicate a reward;
- inventory, knockout state, and collection ledger disagree on identity;
- a pool cannot state its version, candidates, completion condition, and post-completion rule;
- players cannot distinguish guaranteed progression from random chance;
- a currency lacks a distinct source, sink, cap, or retirement rule;
- spending does not change a future decision or visible state;
- average drop time hides an unacceptable reproducible tail;
- optional presentation is required to discover where a reward went;
- repeated activity produces no remaining mastery, progress, collection, social, narrative, or economic decision.

## Selection rule

Retain the smallest reward system that makes earning, receiving, understanding, and using value trustworthy under the declared activity, pool, identity, persistence, economy, accessibility, and repetition bounds. Rarity alone is not progression, and collection alone is not protection from randomness.
