RuneLite automatically enables hardware acceleration for Java 2D rendering. This can cause artifacting of the side panel, particilarly on Windows, and can be fixed by doing one of the following:


# Windows

## Removing external programs that interfere with RuneLite

Many GPU overlay programs cause this problem, usually removing them is the best option. The below programs are known to cause this problem:

* rivatuner
* sonic suite
* cFosSpeed
* alienware command center
* LogiOverlay
* NZXT CAM (must be closed and computer restarted)
* Wallpaper engine
* NVIDIA Settings tray application
* Nahimic
* Sonic Studio
* MSI Afterburner
* Sonic radar 3

## Disabling hardware acceleration

### Method 1: Creating a shortcut

You can create desktop shortcut with ` --mode=OFF` at the end of the target box. make sure there is a space before the `--`! (Video below)

[![Client View](https://thumbs.gfycat.com/DamagedWealthyKoalabear-size_restricted.gif)](https://gfycat.com/DamagedWealthyKoalabear)

### Method 2: Creating .bat file

Copy the text below, paste it into notepad, save as a .bat file and run.
```
start "" "%localappdata%/runelite/jre/bin/java.exe" -jar "%localappdata%/runelite/runelite.jar" --mode=OFF
exit
```
Be sure to change "Save as type" to "All Files"

![](https://i.imgur.com/SeTB5Tl.png)


### Method 3: Starting the launcher with HW accel disabled from CMD

Run cmd.exe (Windows Key + R) and paste this into the command prompt:
```
"%localappdata%/runelite/jre/bin/java.exe" -jar "%localappdata%/runelite/runelite.jar" --mode=OFF
```

# All platforms

If you downloaded the `.jar` version of the launcher, run this:

```
java -jar Location-of-RuneLite.jar --mode=OFF
```
