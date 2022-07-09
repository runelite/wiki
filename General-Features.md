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
Different accounts want different plugins and settings enabled, and this feature allows you to launch a second client with a different set of settings/runelite account logins.

### Windows:
Create a new RuneLite shortcut, right-click it and select properties, and change the "Target" field under "Shortcut" to:
```
%localappdata%\RuneLite\RuneLite.exe --clientargs "--config=settings2.properties --sessionfile=session2"
```

### Linux:
```
./RuneLite.AppImage --clientargs "--config=settings2.properties --sessionfile=session2"
```

### MacOS:
```
/Applications/RuneLite.app/Contents/MacOS/RuneLite --clientargs "--config=settings2.properties --sessionfile=session2"
```

### Explanation

Passing the above arguments to the client causes it to use a different pair of files to determine your settings.
By launching one client this way and another client normally, they will have different settings.
Remember that if you are using a runelite account, you may have to do a 1-time log-in, wait 30 seconds, and restart your client to make sure all account data has been loaded properly.

You can use different filenames (e.g. `ironman.properties`). You can also use absolute paths if you want the file to be outside of the `.runelite` folder for some reason.
If you plan to log in with a runelite account, you may optionally omit the `--config` argument.
