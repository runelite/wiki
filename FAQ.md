# Table of Contents
- [Common Bugs](#common-bugs)
- [Feature Requests](#feature-requests)
- [How do I enable XP drops and zoom unlimiter?](#how-do-i-enable-xp-drops-and-zoom-unlimiter)
- [How do I use inventory tags?](#how-do-i-use-inventory-tags)
- [How can I configure shift click or swap menu entries?](#how-can-i-configure-shift-click-or-swap-menu-entries)
- [What is open source?](#what-is-open-source)
- [Will using RuneLite get me banned?](#will-using-runelite-get-me-banned)
- [How often is RuneLite updated?](#how-often-is-runelite-updated)
- [Where can I find the logs, screenshots, or configurations?](#where-can-i-find-the-logs-screenshots-or-configurations)
- [How do I sync local settings to my RuneLite account?](#how-do-i-sync-local-settings-to-my-runelite-account)
- [How do I build RuneLite?](#how-do-i-build-runelite)
- [Will there be a Runelite mobile client?](#will-there-be-a-runelite-mobile-client)
- [Why does the GPU plugin do X?](#why-does-the-GPU-plugin-do-X)
- [How do I use the Linux AppImage](#Linux-AppImage)

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

## How do I sync local settings to my RuneLite account?
See [[Account]].

## How do I build RuneLite?
See [[Building with IntelliJ IDEA]].

## Will there be a Runelite mobile client?
No. [See this.](https://twitter.com/RuneLiteClient/status/1057301530569777154)

## Why does the GPU plugin do X?
See [[GPU FAQ]].

## Linux AppImage
The Linux AppImage contains a bundled up combination of Java and RuneLite, that has been established to work well together. It is preferred to running a native Java installation. The AppImage allows most Linux systems, including Intel powered ChromeOS devices running the Linux Beta/Crostini to play RuneLite.

Running the following script in a terminal should be enough to download RuneLite and set up the AppImage to appear in your start menu or application trays, from where it should work like any other app.
```
bash -- << EOF
mkdir -p ~/.icons ~/.local/share/applications
wget https://github.com/runelite/launcher/releases/download/2.1.0/RuneLite.AppImage -O ~/.local/RuneLite.AppImage
chmod +x ~/.local/RuneLite.AppImage
wget https://raw.githubusercontent.com/runelite/launcher/master/appimage/runelite.png -O ~/.icons/RuneLite.png
echo "\
[Desktop Entry]
Name=RuneLite
Comment=An opensource third party client for Old School RuneScape
Exec=$HOME/.local/RuneLite.AppImage
Terminal=false
Type=Application
Icon=RuneLite.png
Categories=Games;
" > ~/.local/share/applications/RuneLite.desktop
EOF
```