# It's known that RuneLite does not run out-of-box well on any Fedora installation.
## Problems with OpenJDK Java on Fedora Linux
As of Fedora 18 release regular OpenJDK Java was split up into two different programs:
* Regular OpenJDK
* "headless" version of OpenJDK

Fedora defaults to the headless version of OpenJDK Java. "Headless" implementation of OpenJDK is meant for server operating systems which does not need any X Server libraries. In order to have RuneLite to work, you have to install the full version of OpenJDK

``$ sudo dnf install java-1.8.0-openjdk``

After installing full OpenJDK package you should be able to again use RuneLite on your Fedora installation.
## Double-clicking on RuneLite .jar file opens archive manager, instead of the client itself

![](https://https://imgur.com/a/2hJKWCM)
*nix (MacOS & Linux included) systems use MIME (Multipurpose Internet Mail Extensions) to determine what file actually is, using MIME eliminates the need to have file extensions. OpenJDK package on Fedora does not register itself to MIME list & does not create .desktop file association, so you can't traditionally double-click file and suppose for it to open.

Firstly we create a .desktop file. 

1. Create text file with such contents:
```
[Desktop Entry]
Encoding=UTF-8
Type=Application
NoDisplay=true
Exec=java -jar %f
# You can change name to whatever you want
Name=OpenJDK
Comment=Java Programs
```
2. Save the file ``OpenJDK.desktop``
3. Place the file in one of the locations:
* ``~/.local/share/applications`` to create ``.desktop`` entry for current user only. 
* ``/usr/share/applications`` to create ``.desktop`` entry for all users.

3. And finally make OpenJDK desktop file association as default
![](https://imgur.com/a/j6PUHWG) 

Note: you may need to clear cache or (and) reboot your system

