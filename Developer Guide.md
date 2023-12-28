## RuneLite development

Most development takes place on the [Plugin Hub](https://runelite.net/plugin-hub). If you are new to RuneLite development, you likely want to do plugin hub development. A guide for getting a plugin hub development environment setup and submitting the plugin is in the plugin hub readme [here](https://github.com/runelite/plugin-hub). It will set you up with a default example plugin which you can then extend. You can also contribute directly to existing plugins by sending pull requests on the plugin's repository. Plugin repositories can be found by navigating to the plugin [here](https://runelite.net/plugin-hub) and click the "Report an issue" button.

You can also make contributions to the [core client](https://github.com/runelite/runelite). These are less common and are typically reserved for bug fixes and smaller features. The core client development process is different from plugin hub development, and requires [building the client](https://github.com/runelite/runelite/wiki/Building-with-IntelliJ-IDEA) first. If you want to make a new feature for the core client, particularly if it is large, start a discussion in `#development` on [Discord](https://runelite.net/discord) about it to be sure it is a feature we want, rather than doing all of the work up front without communicating any of it first.

### Resources for learning plugin development

There are some high level guides on this wiki under the "Developer's Guide" section in the side panel. These cover things like 
working with git, using the developer tools, and concepts like client vars.

Javadoc for the [api](https://static.runelite.net/api/runelite-api/) and [client](https://static.runelite.net/api/runelite-client/) are also available.
However, the best way to get an idea of proper API usage is looking at existing plugins. Ideally if an existing plugin is doing something similar to what you are trying to achieve, look at that plugin. Otherwise, pick one of the more simple plugins and just read through it, such as eg. agility, woodcutting, or implings. You can find the plugins [here](https://github.com/runelite/runelite/tree/master/runelite-client/src/main/java/net/runelite/client/plugins). Or alternatively, clone the repository into your IDE which will give you easy search capabilities. You can also look at existing plugin hub plugins, although we recommend this as only a secondary option to looking at core plugins, since their API usage is not always correct.

There are also several external resources for client information:

- [abex's cache viewer](https://abextm.github.io/cache2/#/viewer) - which views most of the data in the cache in a human-readable way
- [mejrs's world map](https://mejrs.github.io/osrs) - for finding world map coordinates
- [Polar's cs2 scripts](https://github.com/Joshua-F/cs2-scripts/) - decompiled client scripts

### Basic Plugin architecture

Most plugins are comprised of only a few components:

- The Plugin class, which extends Plugin and is annotated with `@PluginDescriptor` (included in the example plugin)
- The plugin configuration, which is used for building the configuration panel within the client (included in the example plugin)
- Overlays. Overlays all extend class Overlay, and have a `render()` method which is overriden and accepts in a Graphics2D used for drawing.
  Overlays must be registered with the overlay manager on plugin start, and unregistered on shutdown.
  There are also some subclasses over Overlay such as PluginPanel, which is used for building most of the client UI elements. 
  Here is an [example](https://github.com/runelite/runelite/blob/master/runelite-client/src/main/java/net/runelite/client/plugins/runecraft/AbyssOverlay.java) of an overlay for drawing the clickbox of abyssal rifts.
- Event subscribers. These are methods annotated with `@Subscribe` and must be located in the plugin class. Events power most plugins in RuneLite, and it is how plugins react to things happening in the game, such as objects or npcs spawning, players sending messages, etc. Here is an [example](https://github.com/runelite/runelite/blob/master/runelite-client/src/main/java/net/runelite/client/plugins/runecraft/RunecraftPlugin.java#L142-L150) of an event subscriber, checking to see if the spawned object is an abyssal rift. There are many events, and some plugins have their own events. Most events you can subscribe to can be found in the [api documentation](https://static.runelite.net/api/runelite-api/net/runelite/api/events/package-summary.html) and also [client documentation](https://static.runelite.net/api/runelite-client/net/runelite/client/events/package-summary.html).
- Plugin panels. These are [Swing](https://docs.oracle.com/javase/tutorial/uiswing/) panels used in the client UI, such as the loot tracker and farming tracker. Here is an [example](https://github.com/runelite/runelite/blob/master/runelite-client/src/main/java/net/runelite/client/plugins/info/InfoPanel.java) of a plugin panel.