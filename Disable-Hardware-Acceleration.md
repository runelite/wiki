As of RuneLite Launcher 1.5.1, RuneLite attempts to enable hardware acceleration based on your operating system. If you are having hardware-acceleration issues (such as artifacting) you can disable it by following one of the 3 instructions below.

## 1. Creating a shortcut, and then adding "--mode=OFF" (without quotes) at the end of the target box. (Video below)

[![Client View](https://thumbs.gfycat.com/DamagedWealthyKoalabear-size_restricted.gif)](https://gfycat.com/DamagedWealthyKoalabear)

## 2. Using the .bat file below to launch RuneLite. 

If you are on Windows using the official installer, download and run the link below:

[RuneLite-no-ddraw | Mega Mirror](https://mega.nz/#!xyYDgRYS!f6ShaNg6ULtuEsRdLk_Zm_QRzuU-x9SmihIMfVY_Vc0)

Or save the text below, save as a .bat file and run.
```
start "" "%localappdata%\RuneLite\RuneLite.exe" --mode=OFF
exit
```

## 3. Disabling hardware acceleration on other platforms

If you downloaded the `.jar` version of the launcher, run this:

```
java -jar Location-of-RuneLite.jar --mode=OFF
```

In Windows, you would run cmd.exe (Windows Key + R) and paste this into the command prompt.
```
java -jar %localappdata%\RuneLite\RuneLite.jar --mode=OFF
```
