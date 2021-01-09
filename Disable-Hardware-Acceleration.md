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

### Method 4: Removing external programs that interfere with RL

Recently it seems that GPU overlay programs can now cause this as well. We recommend removing any of the following you have installed: (please note, this list is not exhaustive--be aware of other installed programs you have which add GPU overlays)

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

## macOS

### Method 1: Terminal
Run Terminal.app and paste this into the command prompt:

```
/Applications/RuneLite.app/Contents/MacOS/RuneLite --mode=OFF
```


### Method 2: Creating an Automator App shortcut
1. Launch `Automator` (in the Applications folder).
2. Choose `Application` as the document type.

     ![Application](https://user-images.githubusercontent.com/54762282/83567067-02d6ec00-a4ef-11ea-8dea-8343bd3515b1.png)

3. Type `shell script` into the search field and double-click on `Run Shell Script` to add a shell script to the application.

![Search Field](https://user-images.githubusercontent.com/54762282/83567464-990b1200-a4ef-11ea-94f2-1d06817d7319.png)

4. Within the text box on the right, type:
```
/Applications/RuneLite.app/Contents/MacOS/RuneLite --mode=OFF
```

![Script](https://user-images.githubusercontent.com/54762282/83567622-dc658080-a4ef-11ea-82b3-bb8159a0cca6.png)

5. Save the file with `⌘+S` and name it. You can now launch it from your Applications folder.
6. (Optional) To add an icon to your newly created shortcut, find the original `RuneLite.app` in your Applications folder, right click and select `Get Info`.
7. Click on the icon at the top of the info window and copy with `⌘+C`.

![](https://user-images.githubusercontent.com/54762282/83567805-32d2bf00-a4f0-11ea-9ef4-91f6a33cb810.png)

8. Find the Automator script you just saved, right click and select `Get Info`.
9. Click on the icon at the top of the info window and paste with `⌘+V`.

     ![](https://user-images.githubusercontent.com/54762282/83570848-c1e1d600-a4f4-11ea-9da2-453ba22d88ab.png)
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
On some Linux distributions, the AppImages can be automatically handled/moved/renamed to a known location once they are opened. If the AppImage has already been opened in the past, it is possible the .desktop file already exists in ~/.local/share/applications/ directory and points to the AppImage in the known location. To guarantee results download the AppImage and repeat the steps above except replace the printf command with the following (single '>' rather than '>>):

```
printf '[Desktop Entry]\nEncoding=UTF-8\nType=Application\nExec=/usr/bin/RuneLite.AppImage --mode=OFF\nName=RuneLite\nComment=RuneLite launcher' > ~/.local/share/applications/runelite.desktop
```

At this point, the .desktop file should have been correctly generated and placed in the correct directory. Now, you should be able to open the program as normal. To verify the file is correct, run the following:

```
tail ~/.local/share/applications/runelite.desktop
```

and verify it looks like the following:
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

## Without the launcher (for development)

Add `-Dsun.java2d.noddraw=true -Dsun.java2d.opengl=false` to the JVM arguments. [Check here](https://github.com/runelite/launcher/blob/master/src/main/java/net/runelite/launcher/HardwareAccelerationMode.java#L57) to make sure these flags are up to date.

In intellij this can be done by editing your configuration, and adding those flags to the "VM options" text field.