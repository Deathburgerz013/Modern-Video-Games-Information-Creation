# Deserted Island Survival — Project Shell

This is the first executable boundary for the PC deserted-island survival concept.

## Proves

- Godot 4.7.1 project identity and launch path;
- keyboard/mouse third-person movement;
- honest collision and gravity;
- a small asset-free island greybox;
- visible day/night progression;
- build and runtime diagnostics;
- diagnostic recovery from an out-of-bounds fall;
- exclusion of generated `.godot` state.

## Does not claim

- survival needs, inventory, gathering, crafting, fishing, weather, tides, enemies, notebook behavior, experience, sleep consolidation, saving, death, inheritance, or procedural generation;
- production visuals, final scale, final controls, accessibility completion, balance, fun, or release readiness.

## Run

1. Open `project.godot` in Godot 4.7.1 or a compatible Godot 4.x editor.
2. Press F6/F5 or use **Run Project**.
3. Use WASD to move, Shift to sprint, the mouse to look, and Escape to release/capture the pointer.

## Expected screen

- a capsule player on a greybox island;
- water surrounding the island;
- rocks and a raised inland landmark;
- a day/night sun cycle;
- a diagnostic overlay showing build identity, time, position, speed, and collision state.

Walking below `y = -20` restores the fixed, known-safe shell spawn and reports the recovery in the diagnostic overlay. The fixed target prevents an edge sample from creating a repeated fall/recovery loop. This is a shell guard only. It does not claim swimming, drowning, injury, death, checkpoint, or shoreline behavior.

Generated `.godot/`, export, and build directories are intentionally ignored.

The painted world anchor and its evidence boundary are recorded in `docs/world/WORLD_ANCHOR.md`. The image is visual identity evidence, not yet a terrain height map or collision source.
