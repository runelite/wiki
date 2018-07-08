# FAQs

- [Common Bugs](#common-bugs)
  - [Troubleshooting problems with the client](#troubleshooting-problems-with-the-client)
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

## [[Troubleshooting problems with the client]]

# Feature Requests

## [[Rejected or Rolled Back Features]]

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