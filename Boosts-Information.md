# Boost Information Configuration

![Boost Information](https://user-images.githubusercontent.com/54762282/83594247-be6a4100-a52c-11ea-9428-09680d5cb69b.png)
## Settings

### Display Boosts

Configures which skill boosts to display.

### Use Relative Boosts

Displays your boosted stat levels as a measure of how much they are boosted (e.g., +4).

![Relative Boosts](https://user-images.githubusercontent.com/54762282/83594605-a6df8800-a52d-11ea-8c14-a2fa659f34c7.png)

### Display as infoboxes.

Displays your boosts as icon boxes rather than a text box.

![Boost indicators](https://user-images.githubusercontent.com/54762282/83594526-6aac2780-a52d-11ea-8da4-1c029329ddb0.png)

### Display next change

Displays a countdown from 60 seconds (or 90 seconds with Preserve activated) that indicates when stats are naturally restored by 1.  The first 60 seconds of an initial boost (or drain) will be inaccurate, as the boost timer synchronizes with the in-game timer only after reading the first stat restoration. 

Thus, a one-off boost of +1 (such as a skill cape boost) will not be accurately synchronized (unless the boost is henceforth repeatedly activated).  

`Display next buff` appears after a stat boost (such as an Attack potion).

`Display next debuff` appears after a drain (such as a Saradomin Brew).

### Boost Amount Threshold

The amount of levels boosted at which the value is displayed in a different color. A value of `0` disables the feature.

### Notify on boost threshold

Configures whether or not to send a notification when the `Boost amount threshold` is reached.