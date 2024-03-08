# Chat Commands Configuration


<img width="391" alt="Screen Shot 2020-06-18 at 3 38 27 AM" src="https://user-images.githubusercontent.com/54762282/84992120-7d218600-b115-11ea-8ea1-107d76fbfc11.png">

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
![Settings](https://github.com/runelite/wiki/assets/41973452/76ddaaf1-6e47-45bb-b369-de6440c6c943)

### Price Command
Enables the `!price` command.

Format: `!price [item name]`

![Price command](https://i.imgur.com/aqvfnvj.png)

### Level Command
Enables the `!total` and `!lvl` commands.

Format: `!lvl [skill]`, `!lvl total`, `!total`

![Level command](https://i.imgur.com/oNX0Xq2.png)


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

<img width="210" alt="Screen Shot 2020-06-18 at 2 59 11 AM" src="https://user-images.githubusercontent.com/54762282/84988309-c8d13100-b10f-11ea-95d3-9a38177b9e50.png">

### Killcount Command

Enables the `!kc` command.

Format: `!kc [boss]`, `!kc [activity]`

<img width="132" alt="Screen Shot 2020-06-18 at 3 02 56 AM" src="https://user-images.githubusercontent.com/54762282/84988570-3c733e00-b110-11ea-9c0b-05709a0b39d0.png">

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
`the leviathan` -> `Leviathan`  
`the whisperer` -> `Whisperer`  

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

<img width="109" alt="Screen Shot 2020-06-18 at 3 06 33 AM" src="https://user-images.githubusercontent.com/54762282/84988879-c0c5c100-b110-11ea-9581-aa5f10e28e90.png">


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
`!pb leviathan`  
`!pb vardorvis`  
`!pb whisperer`  
`!pb chambers`, `!pb cox`, `!pb cox cm`, `!pb cox cm [1-24]`  
`!pb tob`, `!pb tob hard`, `!pb hmt [1-5]`  
`!pb toa`, `!pb toa [1-8]`, `!pb toa expert`, `!pb toa expert [1-8]`  
`!pb hs`, `!pb hs [1-5]`    


### GC Command

Enables the `!gc` command to show Barbarian Assault High gamble count.

### Duels Command

Enables the `!duels` command.

<img width="246" alt="Screen Shot 2020-06-18 at 3 16 34 AM" src="https://user-images.githubusercontent.com/54762282/84989749-24042300-b112-11ea-8c44-220c03df1886.png">

### Bounty Hunter Command

Enables the `!bh` command.

<img width="175" alt="Screen Shot 2020-06-18 at 3 17 42 AM" src="https://user-images.githubusercontent.com/54762282/84989849-4ac25980-b112-11ea-8818-8fe3dff1e93d.png">

### Bounty Hunter Rogue Command

Enables the `!bhrogue` command.

### LMS Command

Enables the `!lms` command.

<img width="249" alt="Screen Shot 2020-06-18 at 3 18 55 AM" src="https://user-images.githubusercontent.com/54762282/84989971-79403480-b112-11ea-887a-d1291982253f.png">

### Clear Single Word

Enable hotkey to delete a single word at a time, rather than a single letter.

### Clear Chat Box

Enable hotkey to delete the entire type message in the chatbox.
