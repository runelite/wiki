# General RuneLite features
The RuneLite settings can be found as a plugin. See [RuneLite](https://github.com/runelite/runelite/wiki/RuneLite) for more information about the various settings the client has to offer.

RuneLite incorporates functions such as:
* Moving overlays
* Hiding the sidebar

## Moving overlays
It's possible to move overlays and infoboxes by holding the **Alt key** and dragging them to a desired position. Whilst dragging blue squares will show fixed positions where they can be locked in.

![](https://thumbs.gfycat.com/AgedTimelyChafer-max-1mb.gif)

## Hiding the sidebar
It's possible to hide the sidebar by pressing the left arrow next to the minimize button. To show the sidebar again press the right arrow. This can also be done using the shortcut keys ctrl+F11.

![](https://thumbs.gfycat.com/BraveWideeyedAiredaleterrier-max-1mb.gif)

## Playing with multiple accounts
Different accounts want different plugins and settings enabled, and this feature allows you to do just that!

If you are logged into the client, passing `--c --sessionfile=<path/to/the/new/session/file>` will allow you to log in with a different Google account, and thus have a separate set of settings whilst retaining all the benefits of logging in.

If you are not logged in, instead pass `--c --config=<path/to/the/new/config/file>`, and your client will use that config file instead of the usual one.

The paths can be relative or absolute.

### Examples

Windows:
```
RuneLite.exe --c --sessionfile="%userprofile%/.runelite/ironman-session"
```
You can edit your shortcut to add this, similar to how `--mode=OFF` is added when disabling [Hardware Acceleration](https://github.com/runelite/runelite/wiki/Disable-Hardware-Acceleration#method-1-creating-a-shortcut)


Linux:
```
./RuneLite.AppImage --c --sessionfile="~/.runelite/ironman-session"
```