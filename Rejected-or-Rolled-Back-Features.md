In addition to list below make sure to check [list of closed issues and pull requests labeled as `wontfix`](https://github.com/runelite/runelite/issues?utf8=%E2%9C%93&q=label%3Awontfix) and [Jagex's current guidelines for third-party clients](https://secure.runescape.com/m=news/third-party-client-guidelines?oldschool=1).

Jagex has requested removal of certain features, and current discussion of feature requests on Discord and GitHub concluded that RuneLite's stance on these features are as follows:

#### Removed in the past
* AoE Plugin: Removed at Jagex's request (see [1.2.13 blog](https://runelite.net/blog/show/2018-01-25-1.2.13-Release))
* In-game Zulrah Helper: Removed at Jagex's request (see [1.2.13 blog](https://runelite.net/blog/show/2018-01-25-1.2.13-Release), relevant discussion in [#1386](https://github.com/runelite/runelite/issues/1386))
* Volcanic Mine Helper: Removed at Jagex's request (see [1.2.13 blog](https://runelite.net/blog/show/2018-01-25-1.2.13-Release))
* Demonic Gorilla plugin: [removed at Jagex's request](https://secure.runescape.com/m=news/a-message-about-unofficial-clients?oldschool=1)
* Barbarian Assault Plugin: Left-click calling removed (see [#859](https://github.com/runelite/runelite/pull/859))
* Fight Cave (Jad) Plugin: Plugin trivialises the fight against Jad (see [#6724](https://github.com/runelite/runelite/pull/6724))
* Cerberus plugin: [see Jagex statement](https://secure.runescape.com/m=news/third-party-client-guidelines?oldschool=1)

#### Not currently being considered
* RuneLite XP Drops: The vanilla client already has XP drops that can be repositioned/recolored (see [#1102](https://github.com/runelite/runelite/issues/1102))
* Spellbook resizing: Forbidden by the updated guidelines in the [2024-04-17 blog post](https://secure.runescape.com/m=news/a=13/undead-pirates-tweaks-varlamore-cas--more?oldschool=1): `Resizing components of the Spellbook interface is still prohibited.`
* Highlighting "Offline" Friends (and generic player highlighting): Not included to respect players with their messaging mode set to Private and to avoid harassing players (see [#951](https://github.com/runelite/runelite/pull/951))
* Mouse Keys: You may only use your operating system's official default mouse keys program. (see [Jagex Statement](https://services.runescape.com/m=news/mouse-keys---changes--clarification?oldschool=1))
* Dynamic Puro-Puro Spawns:  Not supported by other 3rd party clients. Removed because this could be too powerful (see [#2371](https://github.com/runelite/runelite/issues/2371))
* Opponent freeze timers: [see Jagex statement](https://secure.runescape.com/m=news/third-party-client-guidelines?oldschool=1) `Indicates how long an opponent is frozen for`
* Mobile Client: [Source](https://twitter.com/RuneLiteClient/status/1057301530569777154)
* PK/Skull warnings
* Things that can be abused for "AFK" agility training (see [#6979](https://github.com/runelite/runelite/issues/6979))
* Level-based PvP player indicators (eg. highlighting players who can be attacked, or are within X levels range)
* Any new high-end PvM boss plugins
* Hiscores for PBs and other information not on the hiscores: Same as the GE Tracker, the data could easily be spoofed, rendering it useless. 
* Presets for Camera yaw/pitch/position
* Auto-rejoin for parties: Would put undue strain on the party servers.
* Touchscreen/Controller plugins: Any plugin-hub implementations of this would likely trigger Jagex's macro detection, and thus won't be accepted.  
* ID based plugins: Plugins that use player provided IDs for the entirety of their functionality can cause moderation issues and outcomes that break Jagex's plugin rules. Due to this fact we will not be accepting any new ID based plugins. Plugins that use a specific set of IDs but do not allow user input will still be accepted. (e.g. plugins like Vardorvis Projectiles which only allows you to change a specific projectile to a set list of projectiles.)  
* Twitch/BTTV/FFZ/7TV emote plugins: Distributing the emotes for these plugins would likely require skirting over the legal agreements of these services, and thus won't be accepted.
* Plugins which expose player information over HTTP.
* Plugins which are of an adult or overtly sexual nature.
* Plugins that simulate content for any purpose. (e.g. Jagex previously requested Quest Helper's Leviathan simulation be removed.)
* Plugins which "crowdsource" data about other players, such as player locations, gear, names, etc.

#### Menu Entry Swapping
* `Conditional menu entry removing`: This can be overpowered in some cases (hiding attack options on NPCs/players based on some conditions, like it being friend or it being specific type of NPC).
  * Note, as of [Jagex's latest Third Party Client Guidelines](https://secure.runescape.com/m=news/third-party-client-guidelines?oldschool=1), we are now able to offer left-click and shift-click swaps for NPCs. See [our associated release post for info](https://runelite.net/blog/show/2022-06-17-1.8.24-Release)

#### Forbidden language features

For security and reviewability reasons, hub plugins are forbidden from using the following in-code behaviors:
* [Java reflection](https://www.oracle.com/technical-resources/articles/java/javareflection.html)
* [JNI](https://en.wikipedia.org/wiki/Java_Native_Interface)
* Execution of external programs (e.g. subprocesses) via any means
* Downloading or otherwise vendoring external source code at runtime

These technologies prevent us from being able to fully review the source code and therefore the behavior of your plugin.

This list is not necessarily exclusive. **As a rule of thumb, if we cannot review every single line of source code that your plugin will execute, we will not accept it.**
