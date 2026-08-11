# Movement and Feedback Test Matrix

This is a reusable pre-content test for a new game's primary locomotion. It does not prescribe fast, slow, realistic, or arcade movement. It determines whether the chosen movement model is readable, responsive, coherent, comfortable, and appropriate for its intended experience.

## Build one instrumented movement room

The room contains:

- open space for start, stop, reversal, circles, and diagonal travel;
- a narrow doorway and visually equivalent doorway with different orientation;
- inside and outside corners;
- low ceiling or overhead obstruction;
- ramp, stair, ledge, gap, and moving surface when the game supports vertical movement;
- three surface materials;
- one stationary target and one moving target;
- one readable hazard;
- one combat or interaction transition;
- an occluding wall for camera testing;
- toggles for every feedback channel.

Do not build a level around an unverified controller. This room is a measuring instrument.

## Instrument the complete circuit

```text
physical input
→ sampled input
→ normalized intent
→ action buffer and priority
→ requested velocity or trajectory
→ collision result and correction
→ gameplay state
→ animation state
→ camera state
→ sound / VFX / environment / haptics / UI
→ next player observation and input
```

Record timestamps or frame numbers at every transition. A final position alone cannot identify where delay or mismatch entered the circuit.

## Baseline measurements

| Area | Minimum measurements |
|---|---|
| Input | device, polling condition, deadzone, input-to-intent latency, dropped and repeated actions |
| Translation | acceleration, maximum speed, deceleration, stop distance, reversal time, diagonal normalization |
| Rotation | turn acceleration, maximum rate, orientation error, aim/move coupling |
| Collision | snag count, correction count, false pass-through, visible disagreement, slope and stair stability |
| Action grammar | buffer duration, cancel window, commitment window, queued action age, protection state |
| Animation | pose-response latency, foot sliding, transition coverage, orientation correction |
| Camera | response curve, overshoot, recentering, occlusion event, shake/bob/FOV intensity |
| Feedback | event-to-channel latency, channel agreement, surface recognition, state recognition without HUD |
| Comfort | motion sickness, eye strain, flash sensitivity, audio fatigue, haptic discomfort |
| Performance | frame time, input sample stability, animation update stability, camera jitter |

## Test passes

### 1. Silent greybox

Disable music, sound, particles, shake, haptics, decorative animation, and interface prompts. Verify input, collision, trajectory, and camera. This reveals whether presentation is hiding controller defects.

### 2. Feedback layers

Enable one channel at a time, then all channels. Ask the tester to identify movement state, surface, collision, successful action, and unavailable action without HUD text.

### 3. Intent boundary

Test inputs immediately before, during, and after every legal transition. Record which action the tester expected and which action occurred. Measure strict and assisted windows separately.

### 4. Stress circuit

Combine turning, collision, target tracking, hazard avoidance, and an action transition. A controller that works only when systems are isolated is not ready for production.

### 5. Device and comfort pass

Repeat with every supported input family and with camera/haptic effects reduced or disabled. Gameplay timing must not depend on optional presentation intensity.

## Player questions

Ask after the run, not while teaching the controls:

1. What did you expect the character to do when an input failed?
2. Which movement felt intentional versus accidental?
3. When did the character feel heavy, responsive, slippery, or stuck?
4. Which visual or sound cue told you an action was ready, committed, canceled, or unavailable?
5. Did the camera help you decide where to move or fight your decision?
6. Which collision looked incorrect?
7. What did you try repeatedly that the game did not recognize?

Preserve the player's words separately from the designer's explanation.

## Stop conditions

Do not begin production content while any of these remain:

- supported inputs produce materially different unexplained outcomes;
- equivalent collision geometry behaves differently;
- action priority cannot be stated as a finite table;
- optional camera effects are required to understand gameplay state;
- animation repeatedly reports a different direction or commitment than gameplay;
- a cancellation leaves stale damage, protection, collision, or feedback state;
- players attribute repeated failures to controls and the event trace cannot falsify them;
- unstable frame time changes accepted input or collision outcomes.

## Selection rule

There is no universally correct movement speed, acceleration, animation latency, or camera curve. Retain the smallest configuration that produces the intended player behavior under the declared perspective, genre, devices, accessibility settings, and performance bounds.
