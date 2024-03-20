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
`att` -> `Attack`  
`def` -> `Defence`  
`str` -> `Strength`  
`hp` -> `Hitpoints`  
`range` -> `Ranged`  
`wc` -> `Woodcutting`  
`fm` -> `Firemaking`  
`rc`, `runecrafting` -> `Runecraft`  
`con` -> `Construction`

### Clue Commands

Enables the `!clues` command.

Format: `!clues`- total clues, `!clues [tier]` (e.g., `!clues easy`)

![clue command](img/chat-commands/chat_commands_clue.png)

### Killcount Command

Enables the `!kc` command.

Format: `!kc [boss]`, `!kc [activity]`

![kc command](img/chat-commands/chat_commands_kc.png)

#### Boss Abbreviations

Some boss names can be substituted for shorthand versions:

`corp` -> `Corporeal Beast`  
`jad` -> `TzTok-Jad`  
`kq` -> `Kalphite Queen`  
`chaos ele` -> `Chaos Elemental`  
`crazy arch` -> `Crazy Archaeologist`  
`deranged arch` -> `Deranged Archaeologist`  
`mole` -> `Giant Mole`  
`vetion` -> `Vet'ion`  
`vene` -> `Venenatis`  
`kbd` -> `King Black Dragon`  
`vork` -> `Vorkath`  
`sire` -> `Abyssal Sire`  
`cerb` -> `Cerberus`  
`supreme` -> `Dagannoth Supreme`  
`rex` -> `Dagannoth Rex`  
`prime` -> `Dagannoth Prime`  
`wt` -> `Wintertodt`  
`barrows` -> `Barrows Chests`  
`cg` -> `Corrupted Gauntlet`  
`dusk`, `dawn`, `gargs` -> `Grotesque Guardians`  
`smoke devil`, `thermy` -> `Thermonuclear Smoke Devil`  
`zuk`, `inferno`, -> `TzKal-Zuk`  
`sara`, `saradomin`, `zilyana`, `zily` -> `Commander Zilyana`  
`zammy`, `zamorak`, `kril`, `kril trutsaroth` -> `K'ril Tsutsaroth`  
`arma`, `kree`, `kreearra`, `armadyl` -> `Kree'arra`  
`bando`, `bandos`, `graardor` -> `General Graardor`  
`nm`, `tnm`, `nmare`, `the nightmare` -> `Nightmare`  
`cox`, `xeric`, `chambers`, `olm`, `raids` -> `Chambers of Xeric`  
`cox cm`, `xeric cm`, `chambers cm`, `olm cm`, `raids cm` -> `Chambers of Xeric: Challenge Mode`  
`tob`, `theatre`, `verzik`, `verzik vitur`, `raids 2` -> `Theatre of Blood`    
`tob cm`, `tob hm`, `htm` -> `Theatre of Blood: Hard Mode`  
`toa` -> `Tombs of Amascut`  
`toa expert`, `toa expert mode`, `tombs of amascut - expert` -> `Tombs of Amascut: Expert Mode`  
`duke` -> `Duke Sucellus`  
`duke awakened`, `duke sucellus awakened` -> `Duke Sucellus (awakened)` 
`levi`, `the leviathan` -> `Leviathan`  
`levi awakened`, `leviathan awakened`, `the leviathan awakened` -> `Leviathan (awakened)`
`vard` -> `Vardorvis`  
`vard awakened`, `vardorvis awakened` -> `Vardorvis (awakened)`  
`wisp`, `whisp`, `the whisperer` -> `Whisperer`  
`wisp awakened`, `whisp awakened`, `whisperer awakened` -> `Whisperer (awakened)`

Note: if the chat commands for !kc do not work in-game, you first need to open up an in-game Ring of Wealth's boss kill log for RuneLite to register the kill counts.

#### Agility Course Abbreviations  
`!kc` can also be used to share your Agility Course lap counts:

`aa`, `ape atoll` -> `Ape Atoll Agility`  
`draynor`, `draynor agility` -> `Draynor Village Rooftop`  
`al kharid`, `al-kharid`, `alkharid`, `al kharid agility`, `al-kharid agility` -> `Al Kharid Rooftop`  
`varrock`, `varrock agility` -> `Varrock Rooftop`  
`canifis`, `canifis agility` -> `Canifis Rooftop`  
`fally`, `fally agility`, `falador`, `falador agility` -> `Falador Rooftop`  
`seers`, `seers'`, `seer's`, `seers agility`, etc. -> `Seers' Village Rooftop`  
`pollnivneach`, `pollnivneach agility` -> `Pollnivneach Rooftop`  
`rellekka`, `rellekka agility` -> `Rellekka Rooftop`  
`ardy`, `ardy agility`, `ardy rooftop`, `ardougne`, `ardougne agility` -> `Ardougne Rooftop`  
`ap`, `pyramid`, -> `Agility Pyramid`  
`barb`, `barb outpost` -> `Barbarian Outpost`  
`brimhaven`, `brimhavan agility` -> `Agility Arena`  
`dorg`, `dorgesh kaan`, `dorgesh-kaan` -> `Dorgesh-Kaan Agility`  
`gnome stronghold` -> `Gnome Stronghold Agility`  
`penguin` -> `Penguin Agility`  
`werewolf` ->  `Werewolf Agility`  
`skullball` -> `Werewolf SkullBall`  
`wildy`, `wildy agility` -> `Wilderness Agility`  
`prif`, `prifddinas` -> `Prifddinas Agility Course`    
`hs`, `hs [1-5]`, `ghc` -> `Hallowed Sepulchre`  
`shayb`, `sbac`, `shayzienbasic`, `shayzien basic` -> `Shayzien Basic Agility Course`
`shaya`, `saac`, `shayadv`, `shayadvanced`, `shayzien advanced` -> `Shayzien Advanced Agility Course`

### Quest Points Commands

Enables the `!qp` command.

![qp command](img/chat-commands/chat_commands_qp.png)


### Personal Best Command

Enables the `!pb` command.

Personal best times are stored for bosses and activities that keep personal best data in game. If applicable, you can pull these numbers from an Adventure Log's "Counters" section in your POH.    
`!pb zulrah`    
`!pb hespori`    
`!pb jad`    
`!pb inferno`    
`!pb galvek`    
`!pb gargs`, `!pb grotesque guardians`    
`!pb hydra`, `!pb alchemical hydra`    
`!pb duke`, `!pb duke sucellus`  
`!pb levi`, `!pb leviathan`  
`!pb vard`, `!pb vardorvis`  
`!pb whisp`, `!pb whisperer`  
`!pb chambers`, `!pb cox`, `!pb cox cm`, `!pb cox cm [1-24]`  
`!pb tob`, `!pb tob hard`, `!pb hmt [1-5]`  
`!pb toa`, `!pb toa [1-8]`, `!pb toa expert`, `!pb toa expert [1-8]`  
`!pb hs`, `!pb hs [1-5]`    


### GC Command

Enables the `!gc` command to show Barbarian Assault High gamble count.

### Duels Command

Enables the `!duels` command.

![duels command](img/chat-commands/chat_commands_duels.png)

### Bounty Hunter Command

Enables the `!bh` command.

[bh command](img/chat-commands/chat_commands_bh.png)

### Bounty Hunter Rogue Command

Enables the `!bhrogue` command.

### LMS Command

Enables the `!lms` command.

[lms command](img/chat-commands/chat_commands_lms.png)

### Clear Single Word

Enable hotkey to delete a single word at a time, rather than a single letter.

### Clear Chat Box

Enable hotkey to delete the entire type message in the chatbox.
