# Sensory Feedback Test Matrix

This is a reusable pre-content test for proving that music, audio, animation, lighting, VFX, camera, haptics, and interface describe the same game while preserving clarity, atmosphere, comfort, and accessibility.

## Build one instrumented sensory room

- authoritative events for movement, threat, hit, discovery, pickup, state failure, and success;
- independent audio, music, animation, lighting, VFX, camera, haptic, and UI subscribers;
- calm, uncertain, escalating, combat, reward, and recovery states;
- one multi-level spatial source, one occluded source, and one moving source;
- one safe-enough light pool, one uncertain shadow, one outage, and one critical silhouette;
- one world-space status surface with a screen-fixed accessible alternative;
- live controls for latency, intensity, mix priority, interruption, display, and output mode;
- save/reload, event replay, slow frame, dropped presentation event, and duplicate callback controls.

## Instrument the circuit

```text
authoritative event occurs once
→ presentation router resolves eligible channels
→ priority and interruption protect critical information
→ channels describe one identity, timing, target, and magnitude
→ player perceives, interprets, and acts
→ optional alternatives preserve actionable meaning
→ presentation ends without mutating authoritative state
```

## Required measurements

| Area | Minimum record |
|---|---|
| Event | ID, type, target, authority time, magnitude, state version |
| Channel | subscriber, onset, latency, duration, priority, interruption, dropped state |
| Mix | active voices/layers, masking, ducking, clipping, output configuration |
| Visual | luminance, contrast, occlusion, display mode, flash and motion intensity |
| Spatial | source transform, listener transform, distance, elevation, propagation |
| Interface | bound state version, read time, errors, pause policy, fallback mode |
| Player | noticed, interpreted, response, confidence, comfort, sensory configuration |
| Integrity | duplicate mutation, missing state, stale display, semantic disagreement |

## Test passes

1. **Authority subtraction:** disable every presentation channel. Mechanics, damage, ownership, collection, persistence, and replay remain correct.
2. **Single-channel inspection:** enable each channel alone and compare event identity, target, timing, and magnitude.
3. **Full-load arbitration:** trigger threat, dialogue, music transition, hit, reward, and environment events together. Critical cues retain their response windows.
4. **Latency injection:** delay and drop each subscriber. Late feedback may be suppressed or reconciled but cannot repeat state.
5. **Music boundary thrash:** cross calm, uncertainty, and combat thresholds rapidly. Hysteresis prevents obvious restart loops and false safety.
6. **Spatial localization:** test direction, distance, elevation, motion, occlusion, stereo, headphones, speakers, and mono alternatives.
7. **Lighting/display matrix:** test HDR, SDR, low contrast, color differences, glare, darkness, outage, and high-contrast alternatives.
8. **World-interface stress:** read and operate the interface during calm, motion, darkness, occlusion, and combat; compare the accessible fallback semantically.
9. **Channel substitution:** replace visual, audio, or haptic critical cues. Event meaning and response opportunity remain equivalent.
10. **Comfort subtraction:** reduce shake, bob, flashes, vibration, motion blur, dynamic range, and effects density independently without changing gameplay timing.
11. **Uncertainty test:** ask what light, shadow, sound, and silence prove. Environmental atmosphere may suggest risk but must not falsely guarantee hidden state.
12. **Human repetition:** repeat until novelty fades. Retain layers that still improve recognition, emotion, orientation, impact, or memory without masking decisions.

## Stop conditions

Do not add more sensory content while any remain:

- presentation can create or repeat authoritative state;
- two channels disagree about event identity, target, timing, or outcome;
- disabling an optional channel changes mechanics or persistence;
- spectacle masks a lethal cue or the next required decision;
- music thrashes, reveals hidden truth, or makes silence guarantee safety;
- audio direction, distance, or elevation systematically misleads;
- darkness, display variance, or effects make required state unavailable;
- world-integrated UI is stale, unreadable, or lacks an equivalent fallback;
- accessibility substitution changes meaning or response time;
- camera, flash, haptic, or audio intensity cannot be reduced independently;
- dropped frames or callbacks leave presentation permanently inconsistent;
- maximal feedback removes contrast between ordinary and important events.

## Selection rule

Retain the smallest set of channels that truthfully communicates state, preserves the next decision, supports the intended emotion, and remains configurable across supported sensory and hardware conditions. More effects are justified only when they add distinct perceivable meaning or emotion without corrupting clarity.
