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

### Profiles

As of the 1.9.11 release, profiles are now available to hold different distinct settings configurations within the same client instance.  By default the profile loaded on startup will be the one that was most recently active, to override this you can pass `--profile=<profilename>` to the launcher and it will load that specific profile on startup.

Advanced users that previously utilized the old method of passing a `--session` and/or `--config` parameter should now instead use `--profile`.  An import feature was included to facilitate taking all the distinct settings created by those and creating profiles from them, simply select to import and navigate to the directory containing the settings and select them individually. 

More info on the importing procedure can be found in [this FAQ entry](https://github.com/runelite/wiki/blob/ab0fe39bb43f992db7e8660f8731a3429d7cb6d2/FAQ.md#how-do-i-convert-the-previous-multi-sessionsetting-file-to-a-profile)
