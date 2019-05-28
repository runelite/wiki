**Important!** Before attempting the steps below, make sure you have installed the latest RuneLite Launcher! If you are unsure, simply reinstall the launcher.

As of RuneLite Launcher 1.5.1, RuneLite attempts to enable hardware acceleration based on your operating system. If you are having hardware-acceleration issues (such as artifacting) you can disable it by following one of the instructions below.

# Table Of Contents
- [Windows](#windows)
- [macOS](#macos)
- [Linux](#linux)
- [All Platforms](#all-platforms)
- [Unofficial Distributions](#unofficial-distributions)

## Windows

### Method 1: Creating a shortcut

You can create desktop shortcut with "--mode=OFF" (without quotes) at the end of the target box. (Video below)

[![Client View](https://thumbs.gfycat.com/DamagedWealthyKoalabear-size_restricted.gif)](https://gfycat.com/DamagedWealthyKoalabear)

### Method 2: Creating .bat file

If you are on Windows using the official installer, download and run the link below:

* [Runelite-NoDDraw.bat | GitHub Download](files/runelite-no-ddraw.bat)
* [Runelite-NoDDraw.bat | Mega Mirror](https://mega.nz/#!xyYDgRYS!f6ShaNg6ULtuEsRdLk_Zm_QRzuU-x9SmihIMfVY_Vc0)

Or copy the text below, save as a .bat file and run.
```
start "" "%localappdata%\RuneLite\RuneLite.exe" --mode=OFF
exit
```

### Method 3: Starting the launcher with HW accel disabled from CMD

Run cmd.exe (Windows Key + R) and paste this into the command prompt:
```
java -jar %localappdata%\RuneLite\RuneLite.jar --mode=OFF
```

## macOS

Run Terminal.app and paste this into the command prompt:

```
/Applications/RuneLite.app/Contents/MacOS/RuneLite --mode=OFF
```

## Linux

### Method 1: Creating shortcut for the launcher

If you're using another distribution and downloaded the `RuneLite.AppImage` file, you can add an entry to your launcher to disable hardware acceleration.

Open a terminal where you downloaded RuneLite.AppImage and type: 

```
mv RuneLite.AppImage /usr/bin
```

Then you can run the following command to automatically add the shortcut.

```
printf '[Desktop Entry]\nEncoding=UTF-8\nType=Application\nExec=/usr/bin/RuneLite.AppImage --mode=OFF\nName=RuneLite\nComment=RuneLite launcher' >> ~/.local/share/applications/runelite.desktop
```

Now you you can run RuneLite and hardware acceleration should be disabled.

If the command above does not work you can do the following:

From your home directory navigate to .local/share/applications/

open a terminal and type:

```
touch runelite.desktop
```

then put this into the file:

```
[Desktop Entry]
Type=Application
Exec=/usr/bin/RuneLite.AppImage --mode=OFF
Name=RuneLite
Comment=RuneLite Launcher;
```

### Method 2: Running launcher directly from the desktop

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
./path/to/RuneLite.AppImage --mode=OFF
```

Press `ctrl+x` to exit, `y` if asked to save.

Replace `/path/to/RuneLite.AppImage` with the directory location your RuneLite.jar is located. In my case, RuneLite.jar was located in my `Documents` folder.

If RuneLite.sh is opening in Text Editor, Open `Files > Preferences > Behavior >`

`Files` is your file manager

Under `Executable Text Files`, Select `Run them` to run all .sh files, or `Ask what to do` if you want to choose to run or view all .sh files.

## All platforms

If you downloaded the `.jar` version of the launcher, run this:

```
java -jar Location-of-RuneLite.jar --mode=OFF
```

## Unofficial Distributions

### `runelite-launcher` AUR package

If you downloaded the client via the `runelite-launcher` package in Arch User Repository (AUR) execute this command:

```
`sudo sed -i 's/"$@"/--mode=OFF \0/g' $(which runelite-launcher)`
```

### Flatpak

Open Terminal and go to `/var/lib/flatpak/app/net.runelite.RuneLite/current/active/files/bin`

Use you favorite code editor (Vim, Nano etc.) and edit the file with SUDO `sudo vi runelite`

Add `--mode=OFF` at the end of second line and save it, result should look like this:

```
#!/bin/sh
exec $JAVA_HOME/bin/java -jar /app/share/RuneLite.jar --mode=OFF
```