# Day/Night Labor Loop v1

**Executable boundary:** one finite gather, carry, deposit, night-resource, sleep, and experience-consolidation circuit.

## Controls

- `F`: collect one nearby physical source or deposit the carried resource at the beach cache.
- `G`: place the carried resource into the world as a physics body.
- `Z` / `X`: rotate the carried resource before placement.
- `R`: sleep while beside the beach shelter.

## Proves

- only one resource can be carried at a time;
- carrying visibly occupies the character and reduces movement speed;
- movement, sprinting, carrying, and night travel accumulate different fatigue costs;
- ordinary wood exists during the day while resin becomes available only at night;
- sources are finite and cannot be farmed by repeated interaction;
- placed resources settle, roll, collide, and can be picked up again;
- repositioning an already collected resource grants no additional experience;
- collection actions create pending evidence;
- sleep advances the world and commits eligible collection experience;
- sleeping without labor or meaningful fatigue is rejected.

## Does not claim

Inventory grids, throwing, snapped construction, precision placement assists, tools, harvesting animations, injuries, hunger, thirst, enemy pressure, weather, saving, permanent death, notebook inheritance, balance, or production presentation.
