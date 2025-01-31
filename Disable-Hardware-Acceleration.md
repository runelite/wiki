RuneLite automatically enables hardware acceleration for Java 2D rendering. This can cause artifacting of the side panel, particularly on Windows, and can be fixed by doing one of the following:


# Windows

## Update the launcher

Launcher version 2.4.0+ blocks common applications which cause the artifacting issue, updating to it by redownloading RuneLite from https://runelite.net may fix the problem. If you still experience the issue after installing a launcher newer than 2.4.0, tell us in `#support` on https://runelite.net/discord and we will look into it further.

## Removing external programs that interfere with RuneLite

Many GPU overlay programs cause this problem, usually removing them is the best option. The below programs are known to cause this problem:

* rivatuner
* sonic suite
* cFosSpeed
* alienware command center
* LogiOverlay
* NZXT CAM (must be closed and computer restarted)
* Wallpaper engine
* NVIDIA GeForce Experience
* Nahimic
* Sonic Studio
* MSI Afterburner
* Sonic radar 3
* GPU TWEAK III - ASUS

## Disabling hardware acceleration

### Method 1: Using the [Configuration window](https://github.com/runelite/runelite/wiki/RuneLite-Launcher-Configuration)
(requires launcher version 2.6.3+)

Select OFF in the dropdown menu for Hardware acceleration inside the confuguration window launched by using the `RuneLite (configure)` shortcut.  For windows this can be quickly found by searching for it in the start menu.

!](img/disable-hardware-accel/runelite_configure.png)


![](img/disable-hardware-accel/runelite_configure_hw_accel.png)


### Method 2: Passing a cli argument

`--hw-accel=OFF` can be passed to the launcher to disable HW acceleration directly.  Be that by appending it to the end of the target field of a windows shortcut or through command line, whichever method the client is launched by you.
