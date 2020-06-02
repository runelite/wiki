# General RuneLite features
The RuneLite settings can be found as a plugin. See [RuneLite](https://github.com/runelite/runelite/wiki/RuneLite) for more information about the various settings the client has to offer.

RuneLite incorporates functions such as:
* Moving overlays
* Hiding the sidebar

## Moving overlays
It's possible to move overlays and infoboxes by holding the <kbd>Alt</kbd> key and dragging them to a desired position. Whilst dragging blue squares will show fixed positions where they can be locked in.

![](https://thumbs.gfycat.com/AgedTimelyChafer-max-1mb.gif)

You can reset an overlay's size and position by holding the <kbd>Alt</kbd> key and right-clicking the overlay.

## Hiding the sidebar
It's possible to hide the sidebar by pressing the left arrow next to the minimize button. To show the sidebar again press the right arrow. This can also be done using the shortcut keys ctrl+F11.

![](https://thumbs.gfycat.com/BraveWideeyedAiredaleterrier-max-1mb.gif)

## Playing with multiple accounts
Different accounts want different plugins and settings enabled, and this feature allows you to do just that!

If you are logged into the client, passing `--sessionfile=<path/to/the/new/session/file>` will allow you to log in with a different Google account, and thus have a separate set of settings whilst retaining all the benefits of logging in.

If you are not logged in, instead pass `--config=<path/to/the/new/config/file>`, and your client will use that config file instead of the usual one.

The paths can be relative or absolute. If the path is relative, it'll use `.runelite` as the base.

Eg. `--config="example.properties"` will make a file in `<you home directory>/.runelite/examples.properties`

### Examples

Windows:
```
RuneLite.exe --clientargs "--config=settings2.properties --sessionfile=session2"
```
You can edit your shortcut to add this, similar to how `--mode=OFF` is added when disabling [Hardware Acceleration](https://github.com/runelite/runelite/wiki/Disable-Hardware-Acceleration#method-1-creating-a-shortcut). Note that `config` and `sessionfile` are *client arguments* and not *launcher arguments* and so must be forwarded to the client through the launcher by passing them through `--clientargs`.


Linux:
```
./RuneLite.AppImage --clientargs "--config=settings2.properties --sessionfile=session2"
```

MacOS:
```
/Applications/RuneLite.app/Contents/MacOS/RuneLite --clientargs "--config=settings2.properties --sessionfile=session2"
```