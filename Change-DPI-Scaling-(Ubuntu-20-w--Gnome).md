# Ubuntu + Gnome Scaling
There is a fairly simple way to scale applications on Ubuntu 20 with Gnome. RuneLite, specifically, is a GDK application (QT applications use a different set of environment variables, and so forth)

Please note in my examples, I placed RuneLite.AppImage in `/usr/local/bin` and already gave it executable permissions (`chmod +x`)


# CLI Solution
There is a fairly simple way to run RuneLite individually scaled on hidpi screens

```
GDK_SCALE=2 GDK_DPI_SCALE=0.5 /usr/local/bin/RuneLite.AppImage
```


# .desktop Application solution

```
[Desktop Entry]
Name=RuneLite
Exec=env GDK_SCALE=2 GDK_DPI_SCALE=0.5 "/usr/local/bin/RuneLite.AppImage"
TryExec=/usr/local/bin/RuneLite.AppImage
StartupNotify=true
Terminal=false
Type=Application
Icon=/home/ccorbett/Downloads/runelite.svg
Comment=RuneLite ubuntu 20 with gnome scaled launcher
Categories=X-Runescape;Game;X-Scaled;X-GDK;RolePlaying;AdventureGame;
GenericName=RuneLite

```