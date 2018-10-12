In addition to list below make sure to check [list of closed issues and pull requests labeled as `wontfix`](https://github.com/runelite/runelite/issues?utf8=%E2%9C%93&q=label%3Awontfix).

Jagex has requested removal of certain features, and current discussion of feature requests on Discord and GitHub concluded that RuneLite's stance on these features are as follows:

#### Removed in the past
* AoE Plugin: Removed at Jagex's request (see [1.2.13 blog](https://runelite.net/blog/show/2018-01-25-1.2.13-Release))
* In-game Zulrah Helper: Removed at Jagex's request (see [1.2.13 blog](https://runelite.net/blog/show/2018-01-25-1.2.13-Release), relevant discussion in [#1386](https://github.com/runelite/runelite/issues/1386))
* Volcanic Mine Helper: Removed at Jagex's request (see [1.2.13 blog](https://runelite.net/blog/show/2018-01-25-1.2.13-Release))
* Barbarian Assault Plugin: Left-click calling removed (see [#859](https://github.com/runelite/runelite/pull/859))
* General Anti-Drag: People complained and we decided to remove it as no other clients have it (see [#3200](https://github.com/runelite/runelite/issues/3200))

#### Not currently being considered
* RuneLite XP Drops: The vanilla client already has XP drops that can be repositioned/recolored (see [#1102](https://github.com/runelite/runelite/issues/1102))
* Spellbook Re-ordering and Hiding: Other 3rd party clients do not have these features and it failed a Jagex poll (see [#1038](https://github.com/runelite/runelite/issues/1038))
* Highlighting "Offline" Friends (and generic player highlighting): Not included to respect players with their messaging mode set to Private and to avoid harrasing players (see [#951](https://github.com/runelite/runelite/pull/951))
* Mouse Keys: You may only use your operating system's official default mouse keys program. (see [Jagex Statement](https://services.runescape.com/m=news/mouse-keys---changes--clarification?oldschool=1))
* No Theatre of Blood plugins, at Jagex's request
* No Inferno plugins
* Prayer hiding: Other clients don't do it and it would remove any possibility of missclicks, seems strong. Generally any hiding of in-game interactive interfaces is usually avoided.
* One-way safe spot plugins: Too strong for PvP scenarios (see [#3646](https://github.com/runelite/runelite/issues/3646))
* Hiding of friends/ignored people: Can be very strong in multi pking
* Left-click fill in bank: This can increase xp rates, Jagex mods said they will probably implement this in future (see [#5668](https://github.com/runelite/runelite/issues/5668))
* Dynamic Puro-Puro Spawns:  Not supported by other 3rd party clients. Removed because this could be too powerful (see [#2371](https://github.com/runelite/runelite/issues/2371))
* Opponent freeze timers: Not supported by other reputable 3rd part clients, can be very powerful for pking (see [#2011](https://github.com/runelite/runelite/issues/2011)

#### Menu Entry Swapping
* `Pickpocket` on non-H.A.M. members: Not supported by other 3rd party clients, and absurdly powerful when blackjacking
* `Build/Remove` on POH hotspots: This would allow zero-movement Construction skilling without special cursor positioning (try [this method](https://www.youtube.com/watch?v=u9AZWsDfo1I) instead)
* `Hide/reorder ground items`: This would make it so that all items on your hidden items list in grounditems would not show the take option. This would push the meta on many things and would make looting too easy. As such it is not going to be added.
* `Conditional menu entry removing`: This can be overpowered in some cases (hiding attack options on NPCs/players based on some conditions, like it being friend or it being specific type of NPC). This includes removing ground items that are hidden or grayed out.
* `Menu reorder in equipment screen`: Other clients dont do it and can be very strong for activities like Lava Runecrafting
