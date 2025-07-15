# Chat Commands Configuration

The chat commands plugin enables you to quickly access information about your account and items through chat commands.

Current commands include:

* `!price`
* `!lvl`
* `!clues`
* `!kc`
* `!qp`
* `!pb`
* `!gc` (Barbarian Assault gamble count)
* `!duels`
* `!bh` (Bounty Hunter)
* `!bhrogue` (Bounty Hunter Rogue)
* `!lms` (Last Man Standing)
* `!task`
* `!cmb`
* `!lp` (League Points)
* `!sw` (Soul Wars)
* `!pets`

# Settings
![Settings](img/chat-commands/chat_commands_config.png)

### Price Command
Enables the `!price` command.

Format: `!price [item name]`

![Price command](img/chat-commands/chat_commands_price.png)

### Level Command
Enables the `!total` and `!lvl` commands.

Format: `!lvl [skill]`, `!lvl total`, `!total`

![Level command](img/chat-commands/chat_commands_lvl.png)


#### Skill Abbreviations

Some skill names can be substituted for shorthand versions
| Skill | Abbreviations |
| ----- | ----- |
| `Attack` | `att`, `atk` |
| `Strength` | `str` |
| `Defence` | `def` |
| `Ranged` | `range`, `ranging`, `rng` |
| `Prayer` | `pray` |
| `Magic` | `mage`, `mag` |
| `Runecraft` | `rc`, `rune`, `runecrafting` |
| `Construction` | `con`, `construct` |
| `Hitpoints` | `hp`, `health`, `hit`, `hitpoint` |
| `Agility` | `agi`, `agil` |
| `Herblore` | `herb`, `hl` |
| `Thieving` | `thief` |
| `Crafting` | `craft` |
| `Fletching` | `fletch` |
| `Slayer` | `slay` |
| `Hunter` | `hunt` |
| `Mining` | `mine` |
| `Smithing` | `smith` |
| `Fishing` | `fish` |
| `Cooking` | `cook` |
| `Firemaking` | `fm`, `fire` |
| `Woodcutting` | `wc`, `wood`, `woodcut` |
| `Farming` | `farm` |
| `Overall` | `all`, `total` |

### Clue Commands

Enables the `!clues` command.

Format: `!clues` or `!clues total` - total clues, `!clues [tier]` (e.g., `!clues easy`)

| Tiers |
| ----- |
| `beginner` |
| `easy` |
| `medium` |
| `hard` |
| `elite` |
| `master` |
| `total` |

<img width="210" alt="" src="img/chat-commands/chat_commands_clue.png">

### Killcount Command

Enables the `!kc` command.

Format: `!kc [boss]`, `!kc [activity]`

<img width="132" alt="S" src="img/chat-commands/chat_commands_kc.png">

#### Boss Abbreviations

Some boss names can be substituted for shorthand versions:

| Boss | Abbreviations |
| ---- | ------- |
| `Grotesque Guardians` | `dusk`, `dawn`, `gargs`, `ggs`, `gg` |
| `Abyssal Sire` | `sire` |
| `Cerberus` | `cerb` |
| `Thermonuclear Smoke Devil` | `smoke devil`, `thermy` |
| `Alchemical Hydra` | `hydra` |
| `Amoxliatl` | `amox` |
| `Hueycoatl` | `huey`, `the hueycoatl` |
| `Deranged Archaeologist` | `deranged arch` |
| `Crazy Archaeologist` | `crazy arch` |
| `Chaos Elemental` | `chaos ele` |
| `Vet'ion` | `vetion` |
| `Calvar'ion` | `calv`, `calvarion` |
| `Venenatis` | `vene` |
| `King Black Dragon` | `kbd` |
| `Corporeal Beast` | `corp` |
| `Kalphite Queen` | `kq` |
| `Giant Mole` | `mole` |
| `Vorkath` | `vork` |
| `Phantom Muspah` | `phantom`, `muspah`, `pm` |
| `Nightmare` | `nm`, `tnm`, `nmare`, `the nightmare` |
| `Phosani's Nightmare` | `pnm`, `phosani`, `phosanis`, `phosani nm`, `phosani nightmare`, `phosanis nightmare` |
| `Commander Zilyana` | `sara`, `saradomin`, `zilyana`, `zily` |
| `K'ril Tsutsaroth` | `zammy`, `zamorak`, `kril`, `kril trutsaroth` |
| `Kree'arra` | `arma`, `kree`, `kreearra`, `armadyl` |
| `General Graardor` | `bando`, `bandos`, `graardor` |
| `Dagannoth Supreme` | `supreme` |
| `Dagannoth Rex` | `rex` |
| `Dagannoth Prime` | `prime` |
| `Duke Sucellus` | `duke` |
| `Duke Sucellus (awakened)` | `duke awakened`, `duke sucellus awakened` |
| `Leviathan` | `levi`, `the leviathan` |
| `Leviathan (awakened)` | `levi awakened`, `leviathan awakened`, `the leviathan awakened` |
| `Vardorvis` | `vard` |
| `Vardorvis (awakened)` | `vard awakened`, `vardorvis awakened` |
| `Whisperer` | `wisp`, `whisp`, `the whisperer` |
| `Whisperer (awakened)` | `wisp awakened`, `whisp awakened`, `whisperer awakened` |
| `Barrows Chests` | `barrows` |
| `Lunar Chest` | `lunar chests`, `moons of peril`, `perilous moon`, `perilous moons` |
| `Gauntlet` | `gaunt`, `the gauntlet` |
| `Corrupted Gauntlet` | `cg`, `cgaunt`, `cgauntlet`, `the corrupted gauntlet` |
| `TzTok-Jad` | `jad`, `tzhaar fight cave` |
| `TzHaar-Ket-Rak's [First-Sixth] Challenge` | `jad 1-6` |
| `TzKal-Zuk` | `zuk`, `inferno` |
| `Sol Heredit` | `sol`, `colo`, `colosseum`, `fortis colosseum` |
| `Chambers of Xeric` | `cox`, `xeric`, `chambers`, `olm`, `raids` |
| `Chambers of Xeric [1-24+] players` | `cox solo`, `cox duo`, `cox [1-24]`, `cox 24+` |
| `Chambers of Xeric: Challenge Mode` | `cox cm`, `xeric cm`, `chambers cm`, `olm cm`, `raids cm`, `chambers of xeric - challenge mode` |
| `Chambers of Xeric: Challenge Mode [1-24+] players` | `cox cm solo`, `cox cm duo`, `cox cm [1-24]`, `cox cm 24+` |
| `Theatre of Blood: Entry Mode` | `tob sm`, `tob story mode`, `tob story`, `tob entry mode`, `tob em`, `tob entry` |
| `Theatre of Blood` | `tob`, `theatre`, `verzik`, `verzik vitur`, `raids 2` |
| `Theatre of Blood [1-5] players` | `tob solo`, `tob duo`, `tob [1-5]` |
| `Theatre of Blood: Hard Mode` | `tob cm`, `tob hm`, `tob hard mode`, `tob hard`, `hmt` |
| `Theatre of Blood: Hard Mode [1-5] players` | `hmt solo`, `hmt duo`, `hmt [1-5]` |
| `Tombs of Amascut: Entry Mode` | `toa entry`, `toa entry mode`, `tombs of amascut - entry` |
| `Tombs of Amascut: Entry Mode [1-8] players` | `toa entry solo`, `toa entry duo`, `toa entry [1-8]` |
| `Tombs of Amascut` | `toa`, `tombs`, `amascut`, `warden`, `wardens`, `raids 3` |
| `Tombs of Amascut [1-8] players` | `toa solo`, `toa duo`, `toa [1-8]` |
| `Tombs of Amascut: Expert Mode` | `toa expert`, `toa expert mode`, `tombs of amascut - expert` |
| `Tombs of Amascut: Expert Mode [1-8] players` | `toa expert solo`, `toa expert duo`, `toa expert [1-8]` |

Note: if the chat commands for !kc do not work in-game, you first need to open up an in-game Ring of Wealth's boss kill log or the Adventure log (in your own POH), or get another kill for RuneLite to register the kill counts.

#### Agility Course Abbreviations
`!kc` can also be used to share your Agility Course lap counts:

| Agility course | Abbreviations |
| -------------- | ------------- |
| `Gnome Stronghold Agility` | `gnome stronghold` |
| `Agility Arena` | `brimhaven`, `brimhavan agility` |
| `Shayzien Basic Agility Course` | `shayb`, `sbac`, `shayzienbasic`, `shayzien basic` |
| `Draynor Village Rooftop` | `draynor`, `draynor agility` |
| `Al Kharid Rooftop` | `al kharid`, `al-kharid`, `alkharid`, `al kharid agility`, `al-kharid agility`, `alkharid agility` |
| `Werewolf Skullball` | `skullball` |
| `Agility Pyramid` | `ap`, `pyramid`, |
| `Penguin Agility` | `penguin` |
| `Varrock Rooftop` | `varrock`, `varrock agility` |
| `Barbarian Outpost` | `barb`, `barb outpost` |
| `Canifis Rooftop` | `canifis`, `canifis agility` |
| `Ape Atoll Agility` | `aa`, `ape atoll` |
| `Shayzien Advanced Agility Course` | `shaya`, `saac`, `shayadv`, `shayadvanced`, `shayzien advanced` |
| `Falador Rooftop` | `fally`, `fally agility`, `falador`, `falador agility` |
| `Colossal Wyrm Agility Course (Basic)` | `wbac`, `cwbac`, `wyrmb`, `wyrmbasic`, `wyrm basic`, `colossal basic`, `colossal wyrm basic` |
| `Hallowed Sepulchre` | `hs`,`hs[1-5]`, `hs [1-5]`, `ghc`, `sepulchre` |
| `Wilderness Agility` | `wildy`, `wildy agility` |
| `Werewolf Agility` | `werewolf` |
| `Seers' Village Rooftop` | `seers`, `seers'`, `seer's`, `seers village`, `seers' village`, `seer's village`, `seers agility`, `seers' agility`, `seer's agility`, `seers village agility`, `seers' village agility`, `seer's village agility` |
| `Colossal Wyrm Agility Course (Advanced)` | `waac`, `cwaac`, `wyrma`, `wyrmadvanced`, `wyrm advanced`, `colossal advanced`, `colossal wyrm advanced` |
| `Dorgesh-Kaan Agility` | `dorg`, `dorgesh kaan`, `dorgesh-kaan` |
| `Pollnivneach Rooftop` | `pollnivneach`, `pollnivneach agility` |
| `Prifddinas Agility Course` | `prif`, `prifddinas` |
| `Rellekka Rooftop` | `rellekka`, `rellekka agility` |
| `Ardougne Rooftop` | `ardy`, `ardy agility`, `ardy rooftop`, `ardougne`, `ardougne agility` |

#### Miscellaneous Abbreviations
For some miscellaneous activities, the following shorthand versions can be used:

| Activity | Abbreviations |
| -------- | ------------- |
| `Wintertodt` | `wt` |
| `Tempoross` | `fishingtodt`, `fishtodt` |
| `Guardians of the Rift` | `gotr`, `runetodt`, `rifts closed` |
| `Hunter Rumours` | `hunterrumour`, `hunter contract`, `hunter contracts`, `hunter tasks`, `hunter task`, `rumours`, `rumour` |
| `Herbiboar` | `herbi` |
| `Bird's egg sacrifices` | `bird egg`, `bird eggs`, `bird's egg`, `bird's eggs` |
| `Larran's big chest` | `larran chest`, `larran's chest`, `larran big chest`, `larran's big chest` |
| `Larran's small chest` | `larran small chest`, `larran's small chest` |
| `Brimstone chest` | `brimstone chest` |
| `Crystal chest` | `crystal chest` |

### Quest Points Commands

Enables the `!qp` command.

<img width="109" alt="" src="img/chat-commands/chat_commands_qp.png">


### Personal Best Command

Enables the `!pb` command.

Personal best times are stored for bosses and activities that keep personal best data in game. If applicable, you can pull these numbers from an Adventure Log's "Counters" section in your POH.
For potential shorthand versions, refer to the aliases listed [above](#boss-abbreviations).

Examples include:
`!pb zulrah`
`!pb galvek`
`!pb tob`
`!pb toa expert 3`
`!pb prif`
`!pb hs 5`


### GC Command

Enables the `!gc` command to show Barbarian Assault High gamble count.

### Duels Command

Enables the `!duels` command.

<img width="246" alt="" src="img/chat-commands/chat_commands_duels.png">

### Bounty Hunter Command

Enables the `!bh` command.

<img width="175" alt="" src="img/chat-commands/chat_commands_bh.png">

### Bounty Hunter Rogue Command

Enables the `!bhrogue` command.

### LMS Command

Enables the `!lms` command.

<img width="249" alt="Screen Shot 2020-06-18 at 3 18 55 AM" src="img/chat-commands/chat_commands_lms.png">

### Clear Single Word

Enable hotkey to delete a single word at a time, rather than a single letter.

### Clear Chat Box

Enable hotkey to delete the entire type message in the chatbox.
