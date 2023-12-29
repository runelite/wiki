## RuneLite development

Most development takes place on the [Plugin Hub](https://runelite.net/plugin-hub), where anyone can submit their own plugin. If you are new to RuneLite development, you likely want to do plugin hub development. Get started here with the example plugin guide: [here](https://github.com/runelite/plugin-hub). You can also contribute directly to existing hub plugins by sending pull requests to the plugin's repository (find those by clicking "Report an issue" on the plugin's page [here](https://runelite.net/plugin-hub)).

You can also make contributions to the [core client](https://github.com/runelite/runelite). These are less common and are typically reserved for bug fixes and smaller features. The core client development process is different from plugin hub development, and requires [building the client](https://github.com/runelite/runelite/wiki/Building-with-IntelliJ-IDEA) first. If you want to make a new feature for the core client, particularly if it is large, start a discussion in `#development` on [Discord](https://runelite.net/discord) to be sure it is a feature we want, rather than doing all of the work up front without communicating any of it first.

### Resources for learning plugin development

There are some high level guides on this wiki under the "Developer's Guide" section in the side panel. These cover things like 
working with git, using the developer tools, and concepts like client vars.

Javadoc for the [api](https://static.runelite.net/api/runelite-api/) and [client](https://static.runelite.net/api/runelite-client/) are also available.
However, the best way to get an idea of proper API usage is looking at [existing plugins](https://github.com/runelite/runelite/tree/master/runelite-client/src/main/java/net/runelite/client/plugins) that already do something similar. Otherwise, pick one of the more simple plugins and just read through it, such as e.g. agility, woodcutting, or implings. Or just clone the repository into your IDE which will give you easy search capabilities. You can also look at existing plugin hub plugins, although we recommend this as only a secondary option to looking at core plugins, since their API usage is not always correct.

There are also several external resources for client information:

- [abex's cache viewer](https://abextm.github.io/cache2/#/viewer) - which views most of the data in the cache in a human-readable way
- [mejrs's world map](https://mejrs.github.io/osrs) - for finding world map coordinates
- [Polar's cs2 scripts](https://github.com/Joshua-F/cs2-scripts/) - decompiled client scripts
- [Runescape Wiki tools](https://chisel.weirdgloop.org/) - e.g. [MOID](https://chisel.weirdgloop.org/moid/) item/npc/object database

### Basic Plugin architecture

Most plugins are comprised of only a few components:

- The Plugin class, which extends Plugin and is annotated with `@PluginDescriptor` (e.g. [example plugin Plugin class](https://github.com/runelite/example-plugin/blob/master/src/main/java/com/example/ExamplePlugin.java))
- The plugin configuration (extending `Config`), which generates the plugin's configuration panel (e.g. [example plugin Config interface](https://github.com/runelite/example-plugin/blob/master/src/main/java/com/example/ExampleConfig.java)). These settings are saved between client launches. You can also save data programatically by using `ConfigManager`.
- Overlays. Overlays all extend class Overlay, and have a `render()` method which you must override.
  Overlays must be registered with the overlay manager on plugin startUp, and unregistered on shutDown.
  `Overlay`s can draw anything they want anywhere on the game e.g. [AbyssOverlay](https://github.com/runelite/runelite/blob/master/runelite-client/src/main/java/net/runelite/client/plugins/runecraft/AbyssOverlay.java), which draws clickboxes on game objects. Text boxes are made via `OverlayPanel` (e.g. [AttackStylesOverlay](https://github.com/runelite/runelite/blob/master/runelite-client/src/main/java/net/runelite/client/plugins/attackstyles/AttackStylesOverlay.java)). `WidgetItemOverlay` draws on items.
- Event subscribers. These are methods annotated with `@Subscribe` and must be located in the plugin class. Events power most plugins in RuneLite, and it is how plugins react to things happening in the game, such as objects or npcs spawning, players sending messages, etc. Here is an [example](https://github.com/runelite/runelite/blob/master/runelite-client/src/main/java/net/runelite/client/plugins/runecraft/RunecraftPlugin.java#L142-L150) of an event subscriber, checking to see if the spawned object is an abyssal rift. There are many events, and some plugins have their own events. Most events you can subscribe to can be found in the [api documentation](https://static.runelite.net/api/runelite-api/net/runelite/api/events/package-summary.html) and also [client documentation](https://static.runelite.net/api/runelite-client/net/runelite/client/events/package-summary.html).
- Plugin panels. These are [Swing](https://docs.oracle.com/javase/tutorial/uiswing/) panels on the client sidebar, such as the loot tracker and farming tracker. Here is an [example](https://github.com/runelite/runelite/blob/master/runelite-client/src/main/java/net/runelite/client/plugins/info/InfoPanel.java) of a plugin panel.
