# Boost Information Configuration

![Boost Information](img/boosts-info/boosts_information_absolute.png)
## Settings

### Display Boosts

Configures which skill boosts to display.

### Use Relative Boosts

Displays your boosted stat levels as a measure of how much they are boosted (e.g., +4).

![Relative Boosts](img/boosts-info/boosts_information_relative.png)

### Display as infoboxes.

Displays your boosts as icon boxes rather than a text box.

![Boost indicators](img/boosts-info/boosts_information_infobox.png)

### Display next change

Displays a countdown from 60 seconds (or 90 seconds with Preserve activated) that indicates when stats are naturally restored by 1.  The first 60 seconds of an initial boost (or drain) will be inaccurate, as the boost timer synchronizes with the in-game timer only after reading the first stat restoration. 

Thus, a one-off boost of +1 (such as a skill cape boost) will not be accurately synchronized (unless the boost is henceforth repeatedly activated).  

`Display next buff` appears after a stat boost (such as an Attack potion).

`Display next debuff` appears after a drain (such as a Saradomin Brew).

### Boost Amount Threshold

The amount of levels boosted at which the value is displayed in a different color. A value of `0` disables the feature.

### Notify on boost threshold

Configures whether or not to send a notification when the `Boost amount threshold` is reached.
