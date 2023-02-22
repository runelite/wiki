# Table of Contents
- [Table of Contents](#table-of-contents)
  - [Common Bugs](#common-bugs)
  - [Feature Requests](#feature-requests)
  - [How do I enable XP drops and zoom unlimiter?](#how-do-i-enable-xp-drops-and-zoom-unlimiter)
  - [How do I use inventory tags?](#how-do-i-use-inventory-tags)
  - [How can I configure shift click or swap menu entries?](#how-can-i-configure-shift-click-or-swap-menu-entries)
  - [What is open source?](#what-is-open-source)
  - [Will using RuneLite get me banned?](#will-using-runelite-get-me-banned)
  - [How often is RuneLite updated?](#how-often-is-runelite-updated)
  - [Where can I find the logs, screenshots, or configurations?](#where-can-i-find-the-logs-screenshots-or-configurations)
  - [How do I build RuneLite?](#how-do-i-build-runelite)
  - [Will there be a Runelite mobile client?](#will-there-be-a-runelite-mobile-client)
  - [Why does the GPU plugin do X?](#why-does-the-gpu-plugin-do-x)
  - [Linux AppImage](#linux-appimage)
  - [I want to run RuneLite from a USB drive](#i-want-to-run-runelite-from-a-usb-drive)
  - [I get the error: "This program can only be installed on versions of Windows designed for the following processor architectures"](#i-get-the-error-this-program-can-only-be-installed-on-versions-of-windows-designed-for-the-following-processor-architectures)

## Common Bugs
See [[Troubleshooting problems with the client]]

## Feature Requests
See [[Rejected or Rolled Back Features]]

## How do I enable XP drops and zoom unlimiter?
We use the game's xp drops and zoom system, so enable those in the game. The zoom unlimiter plugin works by unlimiting the game's zoom feature.  
See [[XP Drop]] and [[Camera Zoom]]

## How do I use inventory tags?
See [[Inventory Tags]]

## How can I configure shift click or swap menu entries?
See [[Menu Entry Swapper]]

## What is open source?
RuneLite being open source means that the code can be inspected by anybody.  
Changes to our software, that anyone can submit, are passed through an audit and acceptance process, where we make sure that the changes don't contain any malicious or rule-breaking code. This makes sure that you won't be running such code.

## Will using RuneLite get me banned?
No. However, you must be using the official RuneLite client. Be careful of unofficial and malicious clients.  
Jagex stance on 3rd party clients: https://clips.twitch.tv/AbnegateAbstemiousDogeDatBoi  
Jagex official statement: http://services.runescape.com/m=news/third-party-client-update?oldschool=1  

## How often is RuneLite updated?
If you're using the launcher, count on seeing updates every week on Thursday. These Thursday releases are done after the game has updated, and can take a few hours if there has been an engine change in the game.

## Where can I find the logs, screenshots, or configurations?
To find logs, either open screenshot directory (by right-clicking "Camera" button) and navigate 1 directory up and then open logs folder, or navigate to `%userprofile%\.runelite\logs` on Windows or `$HOME/.runelite/logs` on Linux and macOS.

## How do I build RuneLite?
See [[Building with IntelliJ IDEA]].

## Will there be a Runelite mobile client?
No. [See this.](https://twitter.com/RuneLiteClient/status/1057301530569777154)

## Why does the GPU plugin do X?
See [[GPU FAQ]].

## Linux AppImage
The Linux AppImage contains a bundled up combination of Java and RuneLite, that has been established to work well together. It is preferred to running a native Java installation. The AppImage allows most Linux systems, including ChromeOS devices running the Linux Beta/Crostini to play RuneLite.

We currently offer AppImages for x86_64 and aarch64 architectures. Run `uname -p` to see which architecture you have. 

Running the following script in a terminal should be enough to download RuneLite and set up the AppImage to appear in your start menu or application trays, from where it should work like any other app.
```
bash -- << EOF
mkdir -p ~/.icons ~/.local/share/applications
curl -L -o ~/.local/RuneLite.AppImage https://github.com/runelite/launcher/releases/download/2.6.1/RuneLite.AppImage
# OR use this for aarch64 systems
#curl -L -o ~/.local/RuneLite.AppImage https://github.com/runelite/launcher/releases/download/2.6.1/RuneLite-aarch64.AppImage
chmod +x ~/.local/RuneLite.AppImage
curl -L -o ~/.icons/RuneLite.png https://raw.githubusercontent.com/runelite/launcher/master/appimage/runelite.png
echo "\
[Desktop Entry]
Name=RuneLite
Comment=An opensource third party client for Old School RuneScape
Exec=$HOME/.local/RuneLite.AppImage
Terminal=false
Type=Application
Icon=RuneLite.png
Categories=Game;
" > ~/.local/share/applications/RuneLite.desktop
EOF
```

If your system is aarch64 architecture, you will need to additionally install `zlib1g-dev` due to an appimage [bug](https://github.com/AppImage/AppImageKit/issues/964)

## I want to run RuneLite from a USB drive

* Download the latest AdoptOpenJDK JRE version 11 from https://adoptopenjdk.net/ and unzip it onto the drive
* Download the latest all-platforms jar launcher from https://runelite.net onto the drive
* Make a .bat file which includes `java -Duser.home=client-home -Djava.io.tmpdir=client-tmp -jar RuneLite.jar --nojvm`. You will probably have to replace `java` with the full path to `java.exe` that was unzipped on the drive.

Now run the .bat file to launch the client.

## I get the error: "This program can only be installed on versions of Windows designed for the following processor architectures"

If you have an ARM laptop running Windows, you need to install Microsoft OpenJDK from https://github.com/microsoft/openjdk-aarch64/releases/download/jdk-11.0.12-ga/microsoft-jdk-11.0.12.7.1-windows-aarch64.msi and then download and run the `All Platforms` version of RuneLite from https://runelite.net. This also requires the Microsoft Visual C++ Redistributables be installed, which if you do not already have, can be downloaded from https://aka.ms/vs/17/release/vc_redist.arm64.exe

## How do I convert the previous multi session/setting file to a profile?

On the side panel navigate to the profile section, and select Import Profile

![image](https://user-images.githubusercontent.com/14265490/220759603-be614ade-022d-4b5f-bf91-8d40e62159ac.png)

Navigate to .runelite (Easy way is to click the HOME icon then go into your windows name and then click into .runelite)

![image](https://user-images.githubusercontent.com/14265490/220759924-c004f0e7-4efb-4c1d-9ea1-b3d4005a82c2.png)

If you used to use `--config=<filename>` ex. `--config=iron.properties`, use that file as your import, make sure the profile is named correctly (as seen in first screen shot) with the rename profile button.

If you are signed in to a RL account, or used to use the new depricated `--session` parameter to sign in to one automatically, to sync settings; the settings for the account will be found in `.runelite\profiles\<email>` and you will need to import each one from each email.  Then only ever sign in to a single RL account that holds every profile.

If you want the client to load a specific profile on startup use `--profile=<profilename>` ex. `--profile=iron` like below

![image](https://user-images.githubusercontent.com/14265490/220760950-786855be-af35-425b-a7bd-63e76a9db478.png)
