In addition to list below make sure to check [list of closed issues and pull requests labeled as `wontfix`](https://github.com/runelite/runelite/issues?utf8=%E2%9C%93&q=label%3Awontfix) and [Jagex's current guidelines for third-party clients](https://secure.runescape.com/m=news/third-party-client-guidelines?oldschool=1).

Jagex has requested removal of certain features, and current discussion of feature requests on Discord and GitHub concluded that RuneLite's stance on these features are as follows:

#### Removed in the past
* AoE Plugin: Removed at Jagex's request (see [1.2.13 blog](https://runelite.net/blog/show/2018-01-25-1.2.13-Release))
* In-game Zulrah Helper: Removed at Jagex's request (see [1.2.13 blog](https://runelite.net/blog/show/2018-01-25-1.2.13-Release), relevant discussion in [#1386](https://github.com/runelite/runelite/issues/1386))
* Volcanic Mine Helper: Removed at Jagex's request (see [1.2.13 blog](https://runelite.net/blog/show/2018-01-25-1.2.13-Release))
* Demonic Gorilla plugin - [removed at Jagex's request](https://secure.runescape.com/m=news/a-message-about-unofficial-clients?oldschool=1)
* Barbarian Assault Plugin: Left-click calling removed (see [#859](https://github.com/runelite/runelite/pull/859))
* Fight Cave Plugin: Plugin trivialises the fight against Jad (see [#6724](https://github.com/runelite/runelite/pull/6724))
* Cerberus plugin - [see Jagex statement](https://secure.runescape.com/m=news/third-party-client-guidelines?oldschool=1)
* Prayer reorder plugin - [see Jagex statement](https://secure.runescape.com/m=news/third-party-client-guidelines?oldschool=1)

#### Not currently being considered
* RuneLite XP Drops: The vanilla client already has XP drops that can be repositioned/recolored (see [#1102](https://github.com/runelite/runelite/issues/1102))
* Spellbook Re-ordering and Hiding: Forbidden by [Jagex's statement](https://secure.runescape.com/m=news/third-party-client-guidelines?oldschool=1): `Any movement or resizing of click zones for any interface or component under combat options, inventory, worn equipment, prayers or spell book`
* Prayer hiding: Forbidden by Jagex's statement, same as spellbook re-ordering.
* Highlighting "Offline" Friends (and generic player highlighting): Not included to respect players with their messaging mode set to Private and to avoid harassing players (see [#951](https://github.com/runelite/runelite/pull/951))
* Mouse Keys: You may only use your operating system's official default mouse keys program. (see [Jagex Statement](https://services.runescape.com/m=news/mouse-keys---changes--clarification?oldschool=1))
* Theatre of Blood plugins
* Inferno plugins
* Dynamic Puro-Puro Spawns:  Not supported by other 3rd party clients. Removed because this could be too powerful (see [#2371](https://github.com/runelite/runelite/issues/2371))
* Opponent freeze timers: Forbidden by [Jagex's statement](https://secure.runescape.com/m=news/third-party-client-guidelines?oldschool=1): `Indicates how long an opponent is frozen for`
* Mobile Client: [Source](https://twitter.com/RuneLiteClient/status/1057301530569777154)
* PK/Skull warnings
* Things that can be abused for "AFK" agility training (see [#6979](https://github.com/runelite/runelite/issues/6979))
* Level-based PvP player indicators (eg. highlighting players who can be attacked, or are within X levels range)
* Alchemical Hydra plugins
* Any new high-end PvM boss plugins
* Hiscores for PBs and other information not on the hiscores: Same as the GE Tracker, the data could easily be spoofed, rendering it useless. 
* Presets for Camera yaw/pitch/position

#### Menu Entry Swapping
* `Build/Remove` on POH hotspots: [see Jagex statement.](https://secure.runescape.com/m=news/third-party-client-guidelines?oldschool=1) (Try [this method](https://www.youtube.com/watch?v=u9AZWsDfo1I) instead)
* `Conditional menu entry removing`: This can be overpowered in some cases (hiding attack options on NPCs/players based on some conditions, like it being friend or it being specific type of NPC).
  * Note, as of [Jagex's latest Third Party Client Guidelines](https://secure.runescape.com/m=news/third-party-client-guidelines?oldschool=1), we are now able to offer left-click and shift-click swaps for NPCs. See [our associated release post for info](https://runelite.net/blog/show/2022-06-17-1.8.24-Release)
