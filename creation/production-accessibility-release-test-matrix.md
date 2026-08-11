# Production, Accessibility, and Release Test Matrix

This is the final pre-production instrument. It proves that a specific build remains playable, recoverable, accessible, diagnosable, and supportable on every target the project promises. It does not convert a test receipt into permission to ship.

## Build one release-candidate circuit

- one immutable build and content identity;
- lowest, typical, and highest supported CPU/GPU/memory/storage profiles;
- each supported display, audio, controller, keyboard/mouse, network, account, locale, and accessibility class;
- one worst-case room containing navigation, combat, physics, enemies, pickups, journal, save, death, retry, streaming, and scene transition;
- live CPU, GPU, memory, IO, network, input-latency, event, save, and presentation traces;
- configurable quality and degradation ladder with every layer independently removable;
- old, current, newer, corrupt, conflicted, offline, and interrupted save fixtures;
- exact build, platform, seed, configuration, input, event, checkpoint, and failure capture;
- install, first launch, suspend, resume, update, rollback, uninstall, and clean-reinstall paths;
- a release dashboard that links each result to regenerable evidence but cannot deploy anything.

## Instrument the circuit

```text
candidate artifact + target profile + player configuration
→ install and migrate without destroying its parent
→ run a deterministic objective under measured subsystem budgets
→ degrade optional cost while preserving authority and critical meaning
→ capture the first divergence, hitch, barrier, crash, or state disagreement
→ replay or name the bounded dependency that prevents replay
→ compare against target-specific stop conditions
→ BLOCK, REVISE, DEFER TARGET, or mark EVIDENCE COMPLETE
```

## Required measurements

| Area | Minimum record |
|---|---|
| Identity | commit, build, content, package, platform, dependency, schema, configuration, seed |
| Performance | CPU/GPU frame time at 50th/95th/99th/worst percentiles, hitch distribution, input latency |
| Capacity | memory high-water, allocation spikes, storage, IO stalls, shader/asset streaming, network budget |
| State | authoritative checkpoint, quality profile, save version, migration path, account, entitlement |
| Accessibility | remap, hold/toggle, text, contrast, narration, cue alternatives, motion/flash, assistance combination |
| Reliability | crash/hang, first divergence, suspend/resume, power/network interruption, recovery result |
| Platform | install/update/rollback, offline behavior, account switching, cloud conflict, peripheral hot-swap |
| Player | objective completion, errors, cue recognition, comfort, fatigue, confidence, unsupported barrier |
| Release | target, stop condition, evidence links, owner, correction build, explicit waiver, rollback readiness |

## Test passes

1. **Frame-time distribution:** replay the worst-case path on every accepted target. Record percentiles and deterministic hitches; average FPS is supplementary only.
2. **Subsystem isolation:** separately stress CPU, GPU, memory, IO, network, audio, physics, AI, streaming, and save work. Name the first exceeded budget.
3. **Graceful degradation:** remove expensive shadows, particles, reflections, animation detail, audio layers, post effects, and density in declared order. Compare authoritative checkpoints and critical cues after every step.
4. **Target subtraction:** start at the weakest supported profile. Defer a target the product cannot support instead of weakening undeclared rules or averaging its failure away.
5. **Diagnostic replay:** inject a crash, hitch, stale cue, duplicate pickup, save disagreement, and dropped input. Reproduce each on a second environment or retain the earliest unsupported dependency.
6. **Save-version matrix:** migrate every supported historical version through each declared step. Reject unknown newer and corrupt saves without modifying them.
7. **Atomic interruption:** terminate power, process, storage, and network at every save, migration, synchronization, and profile-switch boundary. The parent or validated successor remains recoverable.
8. **Conflict policy:** create divergent local/cloud and platform/account state. Show identities, age, scope, and consequence before applying the declared choice; never average ownership.
9. **Input equivalence:** remap every action, test simultaneous devices, hot-swap, hold/toggle, timing, repeated input, single-handed paths, and reserved platform controls.
10. **Output equivalence:** test text scale, narration, contrast, color alternatives, mono, dynamic range, audio/haptic/visual cue substitution, subtitles, motion, flash, camera, and effects reduction.
11. **Configuration composition:** combine representative input, visual, audio, cognitive, motion, and assistance settings. Preserve objective, response opportunity, state, reward, and settings across retry and update.
12. **Release lifecycle:** clean install, first launch, update from every supported build, suspend/resume, offline launch, sign-out/in, account switch, DLC/entitlement loss, rollback, uninstall, and reinstall.
13. **Privacy boundary:** capture only fields required to reproduce the named failure. Test consent, local inspection, redaction, deletion, and failure when telemetry is disabled.
14. **Evidence regeneration:** rebuild the candidate and rerun every decisive release observation from its bound commands and fixtures. Stale evidence cannot transfer to a new artifact.
15. **Human boundary:** test with players using the supported accessibility configurations and target hardware. Automated conformance cannot claim absence of barriers or enjoyment.

## Stop conditions

Do not add content, widen platform promises, or prepare release while any remain:

- a quality setting changes mechanics, authoritative timing, earned state, enemy decisions, or rewards;
- average FPS hides a repeatable hitch at a decision, hit, pickup, save, door, spawn, or streaming boundary;
- any accepted target exceeds its frame-time, memory, IO, network, temperature, or storage budget;
- graceful degradation removes a critical cue, interaction, landmark, objective, or accessible alternative;
- a crash, hang, state disagreement, or accessibility failure lacks a bounded reproduction packet or named missing dependency;
- replayed checkpoints differ under supposedly identical build, seed, input, and configuration;
- save migration loses, duplicates, reclassifies, or silently defaults earned state or settings;
- a newer, corrupt, interrupted, or partially synchronized save is silently accepted or overwrites its parent;
- a cloud, account, platform, character, entitlement, or DLC conflict resolves without a visible declared policy;
- an accessibility option silently changes difficulty, score, progression, encounter identity, or reward;
- a required cue, action, menu, or objective depends on one sensory or motor channel;
- supported accessibility options fail when combined, retried, migrated, updated, or used on the weakest target;
- install, update, offline, suspend, resume, account switch, peripheral change, or rollback breaks existing progress or settings;
- a release result refers to another artifact, platform, target, configuration, or expired environment;
- decisive evidence cannot be regenerated, or its receipt is treated as deployment authority;
- a waiver has no exact failure, owner, bounded target, player consequence, expiry, and rollback plan.

## Selection rule

Release the smallest artifact and target set whose decisive observations can be regenerated and whose stop conditions are empty. Defer unsupported platforms, configurations, content, and effects openly. A release candidate is successful because its declared boundaries hold—not because enough unrelated checks passed to average a failure away.

## Research stop

This matrix closes the initial taxonomy. The next repository change must compile retained records into a bounded production brief, implement a playable slice, or record playtest evidence. Add another research category only when executable work exposes a missing decision that the existing records cannot represent.
