![example](https://user-images.githubusercontent.com/29353990/59309598-e4ebf800-8c9b-11e9-9690-9e885133d8b9.png)

# How it works

You may see this overlay when trying to use the plugin. Follow its instructions to get the timer to start working.

![instructions overlay](https://user-images.githubusercontent.com/29353990/59308089-0cd95c80-8c98-11e9-8f10-fdd978d2afaa.png)

The reason for this is that the game remembers 2 tiles. When you move over 10 steps away from both tiles the oldest one is moved to under you and the NPC aggression timer resets. In order for the plugin to figure out where those tiles are you must first teleport away (entering a dungeon also counts as a "teleport") so that you are out of the radius of both those tiles, thus resetting them so that the plugin can begin tracking them.

# NPC Aggression Timer Plugin Configuration

### Always active
Enable this to always the display the timer and area line overlays if they are enabled. Alternatively see: [NPC names](https://github.com/runelite/runelite/wiki/NPC-Aggression-Timer#npc-names)

### NPC names
If the [Always active](https://github.com/runelite/runelite/wiki/NPC-Aggression-Timer#always-active) option is not enabled, then the plugin will only show overlays in the presence of the NPCs listed in this box. Enter the names of NPCs, separated by commas, in the presence of which you would like to see NPC aggression timers. You can use wildcards e.g. `*wyvern, *dragon` to have the timers show in the presence of all wyverns and dragons.

### Show timer
Enable to display an infobox with a timer for how long until NPCs become unaggressive towards you.

### Show area lines
Display the border of the area in which you can stay without resetting the NPC aggression timer.

### Area lines colour
Configure the colour of the area lines.

### Hide overlay hint (not recommended)
Disables the instructions overlay that warns you when you need to teleport to make the plugin work. To display the overlay hint selectively consider disabling [Always active](https://github.com/runelite/runelite/wiki/NPC-Aggression-Timer#always-active) and using the [NPC names](https://github.com/runelite/runelite/wiki/NPC-Aggression-Timer#npc-names) configuration.

# Common problems

### Why isn't the plugin working?

Untick the [Hide overlay hint](https://github.com/runelite/runelite/wiki/NPC-Aggression-Timer#hide-overlay-hint-not-recommended) option. If an overlay pops up telling you to teleport, then do as it says to get it to go away and the plugin will begin working. If no overlay pops up, then see [Always active](https://github.com/runelite/runelite/wiki/NPC-Aggression-Timer#always-active) or [NPC names](https://github.com/runelite/runelite/wiki/NPC-Aggression-Timer#npc-names).

### Rock crabs, sand crabs and ammonite crabs

If using the [NPC names](https://github.com/runelite/runelite/wiki/NPC-Aggression-Timer#npc-names) option then you need to enter the name of the NPC's rock form into the input box e.g. `fossil rock`.