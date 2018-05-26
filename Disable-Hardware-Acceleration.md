**Important!** Before attempting the steps below, make sure you have installed the latest RuneLite Launcher! If you are unsure, simply reinstall the launcher.

As of RuneLite Launcher 1.5.1, RuneLite attempts to enable hardware acceleration based on your operating system. If you are having hardware-acceleration issues (such as artifacting) you can disable it by following one of the 3 instructions below.

## 1. Creating a shortcut, and then adding "--mode=OFF" (without quotes) at the end of the target box. (Video below)

[![Client View](https://thumbs.gfycat.com/DamagedWealthyKoalabear-size_restricted.gif)](https://gfycat.com/DamagedWealthyKoalabear)

## 2. Using the .bat file below to launch RuneLite. 

If you are on Windows using the official installer, download and run the link below:

* [Runelite-NoDDraw.bat | GitHub Download](files/runelite-no-ddraw.bat)
* [Runelite-NoDDraw.bat | Mega Mirror](https://mega.nz/#!xyYDgRYS!f6ShaNg6ULtuEsRdLk_Zm_QRzuU-x9SmihIMfVY_Vc0)

Or copy the text below, save as a .bat file and run.
```
start "" "%localappdata%\RuneLite\RuneLite.exe" --mode=OFF
exit
```

## 3. Disabling hardware acceleration on other platforms

If you downloaded the `.jar` version of the launcher, run this:

```
java -jar Location-of-RuneLite.jar --mode=OFF
```

***

### Windows
Run cmd.exe (Windows Key + R) and paste this into the command prompt.
```
java -jar %localappdata%\RuneLite\RuneLite.jar --mode=OFF
```

***

### Linux
**ARCH:**

If you downloaded the client via the Arch User Repository (AUR) execute this command:
```
echo " --mode=OFF" | sudo tee -a /usr/sbin/runelite
```

***

**Other Distro:**

**To create shortcut to run from launcher:**

If you're using another distribution and downloaded the `RuneLite.jar` file, you can add an entry to your launcher. Put this into `~/.local/share/applications/runelite.desktop`.
```
[Desktop Entry]
Encoding=UTF-8
Type=Application
Exec=java -jar path/to/RuneLite.jar --mode=off
Name=RuneLite
Comment=RuneLite launcher
```
Replace _path/to/RuneLite.jar_ with wherever you downloaded the file.


***


**To run RuneLite directly from the desktop:**

Open terminal and type:
```
nano /home/user/Desktop/RuneLite.sh
```
Replace `user` with your username, in my case I replaced `user` with `zetix`

![Desktop Shortcut](https://i.imgur.com/rbA5Ykk.png)

This should open up an empty terminal for the RuneLite.sh file we are going to create

In the terminal, type:

```
#!/bin/sh
java -jar /path/to/RuneLite.jar --mode=OFF
```

Press `ctrl+x` to exit, `y` if asked to save.

Replace `/path/to/RuneLite.jar` with the directory location your RuneLite.jar is located. In my case, RuneLite.jar was located in my `Documents` folder.

![Run Command](https://i.imgur.com/RvCXBTG.png)

If RuneLite.sh is opening in Text Editor, Open `Files > Preferences > Behavior >`

`Files` is your file manager

Under `Executable Text Files`, Select `Run them` to run all .sh files, or `Ask what to do` if you want to choose to run or view all .sh files.
