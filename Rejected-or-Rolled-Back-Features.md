In addition to list below make sure to check [list of closed issues and pull requests labeled as `wontfix`](https://github.com/runelite/runelite/issues?utf8=%E2%9C%93&q=label%3Awontfix).

Jagex has requested removal of certain features, and current discussion of feature requests on Discord and GitHub concluded that RuneLite's stance on these features are as follows:

#### Removed in the past
* AoE Plugin: Removed at Jagex's request (see [1.2.13 blog](https://runelite.net/blog/show/2018-01-25-1.2.13-Release))
* In-game Zulrah Helper: Removed at Jagex's request (see [1.2.13 blog](https://runelite.net/blog/show/2018-01-25-1.2.13-Release), relevant discussion in [#1386](https://github.com/runelite/runelite/issues/1386))
* Volcanic Mine Helper: Removed at Jagex's request (see [1.2.13 blog](https://runelite.net/blog/show/2018-01-25-1.2.13-Release))
* Demonic Gorilla plugin - removed at Jagex's request (https://secure.runescape.com/m=news/a-message-about-unofficial-clients?oldschool=1)
* Barbarian Assault Plugin: Left-click calling removed (see [#859](https://github.com/runelite/runelite/pull/859))
* Fight Cave Plugin: Plugin trivialises the fight against Jad (see [#6724](https://github.com/runelite/runelite/pull/6724))
* Cerberus plugin - [see Jagex statement](https://secure.runescape.com/m=news/another-message-about-unofficial-clients?oldschool=1)
* Prayer reorder plugin - [see Jagex statement](https://secure.runescape.com/m=news/another-message-about-unofficial-clients?oldschool=1)

#### Not currently being considered
* RuneLite XP Drops: The vanilla client already has XP drops that can be repositioned/recolored (see [#1102](https://github.com/runelite/runelite/issues/1102))
* Spellbook Re-ordering and Hiding: Other 3rd party clients do not have these features and it failed a Jagex poll (see [#1038](https://github.com/runelite/runelite/issues/1038))
* Highlighting "Offline" Friends (and generic player highlighting): Not included to respect players with their messaging mode set to Private and to avoid harassing players (see [#951](https://github.com/runelite/runelite/pull/951))
* Mouse Keys: You may only use your operating system's official default mouse keys program. (see [Jagex Statement](https://services.runescape.com/m=news/mouse-keys---changes--clarification?oldschool=1))
* Theatre of Blood plugins
* Inferno plugins
* Prayer hiding: Other clients don't do it and it would remove any possibility of missclicks, seems strong. Generally any hiding of in-game interactive interfaces is usually avoided.
* Hiding of friends/ignored people: Can be very strong in multi pking
* Dynamic Puro-Puro Spawns:  Not supported by other 3rd party clients. Removed because this could be too powerful (see [#2371](https://github.com/runelite/runelite/issues/2371))
* Opponent freeze timers: Not supported by other reputable 3rd party clients, can be very powerful for pking (see [#2011](https://github.com/runelite/runelite/issues/2011))
* Mobile Client: [Source](https://twitter.com/RuneLiteClient/status/1057301530569777154)
* PK/Skull warnings
* Things that can be abused for "AFK" agility training (see [#6979](https://github.com/runelite/runelite/issues/6979))
* Level-based PvP player indicators (eg. highlighting players who can be attacked, or are within X levels range)
* Alchemical Hydra plugins
* Any new high-end PvM boss plugins
* Hiscores for PBs and other information not on the hiscores: Same as the GE Tracker, the data could easily be spoofed, rendering it useless. 
* Presets for Camera yaw/pitch/position

#### Menu Entry Swapping
* `Build/Remove` on POH hotspots: [see Jagex statement.](https://secure.runescape.com/m=news/a=13/another-message-about-unofficial-clients?oldschool=1) (Try [this method](https://www.youtube.com/watch?v=u9AZWsDfo1I) instead)
* `Hide/reorder ground items`: This would make it so that all items on your hidden items list in grounditems would not show the take option. This would push the meta on many things and would make looting too easy. As such it is not going to be added.
* `Conditional menu entry removing`: This can be overpowered in some cases (hiding attack options on NPCs/players based on some conditions, like it being friend or it being specific type of NPC). This includes removing ground items that are hidden or grayed out. [see Jagex statement](https://secure.runescape.com/m=news/a=13/another-message-about-unofficial-clients?oldschool=1)
  * Note, as of [Jagex's latest Third Party Client Guidelines](https://secure.runescape.com/m=news/third-party-client-guidelines?oldschool=1), we are now able to offer left-click and shift-click swaps for NPCs. See [our associated release post for info](https://runelite.net/blog/show/2022-06-17-1.8.24-Release)
* Menu reorder in ~~shop~~/artisan skill screens: Other clients don't implement these swaps, and would be too strong for numerous activities (~~examples include "Buy-50" swaps~~, "Make All" swaps for smithing/crafting, etc.) - mobile has added Buy swaps now
