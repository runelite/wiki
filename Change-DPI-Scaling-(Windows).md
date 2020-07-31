As of RuneLite Launcher 1.5.2, RuneLite uses its own DPI settings. Before making any changes, make sure you have installed the latest RuneLite Launcher. If you are unsure, simply reinstall the launcher. If that did not work, try the following.

# Overriding DPI scaling
![](https://i.imgur.com/zbUGjen.gif)

(If "System (enhanced)" didn't have the desired effect, try also "System" and "Application")

# High DPI sharp/integer scaling
To avoid the client looking "blurry" it's recommended to enable High DPI Integer scaling:
* in the windows "RuneLite Properties" High DPI settings `{"High DPI scaling override": "Application"}`
* enable [stretched mode integer scaling](https://github.com/runelite/runelite/wiki/Stretched-Mode#2-integer-scaling)
* enable [stretched mode increased performance mode](https://github.com/runelite/runelite/wiki/Stretched-Mode#1-increased-performance-mode)
* set [gpu plugin UI Scaling Nearest Neighbor](https://github.com/runelite/runelite/wiki/GPU#nearest-neighbor)