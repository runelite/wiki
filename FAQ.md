# FAQs

- [Common Bugs](#common-bugs)
  - [Screen Flickering or Artifacts](#screen-flickering-or-artifacts)
  - [Launcher stuck at 0%](#launcher-stuck-at-0)
  - [Can't sync RuneLite](#cant-sync-runelite)
  - [Client freezing](#client-freezing)
- [Feature Requests](#feature-requests)
  - [Rejected or Rolled Back Features](#rejected-or-rolled-back-features)
- [How do I enable XP drops and zoom unlimiter?](#how-do-i-enable-xp-drops-and-zoom-unlimiter)
- [How do I use inventory tags?](#how-do-i-use-inventory-tags)
- [How can I configure shift click or swap menu entries?](#how-can-i-configure-shift-click-or-swap-menu-entries)
- [What is open source?](#what-is-open-source)
- [Will using RuneLite get me banned?](#will-using-runelite-get-me-banned)
- [How often is RuneLite updated?](#how-often-is-runelite-updated)
- [Where can I find the logs, screenshots, or configurations?](#where-can-i-find-the-logs-screenshots-or-configurations)
- [Is there a "Beta" version of RuneLite?](#is-there-a-beta-version-of-runelite)
- [How do I build RuneLite?](#how-do-i-build-runelite)

# Common Bugs

## Screen Flickering or Artifacts
See https://github.com/runelite/runelite/wiki/Disable-Hardware-Acceleration.

## Launcher stuck at 0%
There can be several reasons why the launcher is stuck. Try each suggestion before asking for #support in the Discord.
- If this issue has started recently, try downloading a newer version of the launcher.
- Try restarting your computer. (These odd issues is why after installing an application, they sometimes ask you to restart your computer.)
- Check to see if your anti-virus is blocking the launcher from running, or quarenteening the files the launcher is trying to download.
- Can you access http://static.runelite.net/bootstrap.json, http://repo.runelite.net/, https://oldschool.runescape.com/? If not, then either your firewall, anti-virus, or your ISP is blocking those sites for some reason.

## Can't sync RuneLite
When you try to click the green door icon on top of the client, it does nothing.  
If you are on Linux, you can try running the command below:
```
printf '\xfe\xed\xfe\xed\x00\x00\x00\x02\x00\x00\x00\x00\xe2\x68\x6e\x45\xfb\x43\xdf\xa4\xd9\x92\xdd\x41\xce\xb6\xb2\x1c\x63\x30\xd7\x92' | sudo tee /etc/ssl/certs/java/cacerts
sudo /var/lib/dpkg/info/ca-certificates-java.postinst configure
```
([source](https://stackoverflow.com/a/50103533))  
If you are on Windows, we don't know how to fix it at the moment. Try running with Java 8 if you are using the All Platforms version of RuneLite.  
See https://github.com/runelite/runelite/issues/2603

## Client freezing
This seems to be an issue with Java 10 when users are using the All Platform version of RuneLite. Try using Java 8 instead.  
See https://github.com/runelite/runelite/issues/3999

# Feature Requests

## Rejected or Rolled Back Features
See https://github.com/runelite/runelite/wiki/Rejected-or-Rolled-Back-Features.

# How do I enable XP drops and zoom unlimiter?
We use the game's xp drops and zoom system, so enable those in the game. The zoom unlimiter plugin works by unlimiting the game's zoom feature.  
See https://github.com/runelite/runelite/wiki/XP-Drop  
See https://github.com/runelite/runelite/wiki/Camera-Zoom

# How do I use inventory tags?
See https://github.com/runelite/runelite/wiki/Inventory-Tags

# How can I configure shift click or swap menu entries?
See https://github.com/runelite/runelite/wiki/Menu-Entry-Swapper

# What is open source?
RuneLite being open source means that the code can be inspected by anybody.  
Changes to our software, that anyone can submit, are passed through an audit and acceptance process, where we make sure that the changes don't contain any malicious or rule-breaking code. This makes sure that you won't be running such code.

# Will using RuneLite get me banned?
No. However, you must be using the official RuneLite client. Be careful of unofficial and malicious clients.  
Jagex stance on 3rd party clients: https://clips.twitch.tv/AbnegateAbstemiousDogeDatBoi  
Jagex official statement: http://services.runescape.com/m=news/third-party-client-update?oldschool=1  

# How often is RuneLite updated?
If you're using the launcher, count on seeing updates every week on Thursday. These Thursday releases are done after the game has updated, and can take a few hours if there has been an engine change in the game.

# Where can I find the logs, screenshots, or configurations?
To find logs, either open screenshot directory (by right-clicking "Camera" button) and navigate 1 directory up and then open logs folder, or navigate to `%userprofile%\.runelite\logs` on Windows or `$HOME/.runelite/logs` on Linux and macOS.

# Is there a "Beta" version of RuneLite?
Yes there is. It's called a SNAPSHOT release.  
Before using it, PLEASE keep in mind that it's essentially a BETA. THIS ASSUMES YOU KNOW WHAT YOU ARE DOING! Things are always subject to change! There can be bugs. We'd prefer if players use the snapshot only for reporting issues with new features or to find bugs. If you use the snapshot, and find a bug, please check if the bug exists in the current release of RuneLite and if the bug has already been reported. If not, you can report the bug, but PLEASE mention that you were using the snapshot.  
Anyways, similar to [disabling hardware acceleration](https://github.com/runelite/runelite/wiki/Disable-Hardware-Acceleration), use the option `--version=x.x.x-SNAPSHOT`, where `x` is to be replaced with the next version of RuneLite. Typically, the third `x` will be incremented by 1. You will have to manually update this number after every update, or else RuneLite will be broken.  
If you have issues with this, this is one of the few cases where we avoid giving support, since using the snapshot version ASSUMES YOU KNOW WHAT YOU ARE DOING!

# How do I build RuneLite?
See the sidebar for "Developer's Guide".