# RuneLite Launcher Configuration

The RuneLite Launcher Configuration window was added in launcher version 2.6.3, released March 5, 2023.
To update your launcher please visit the [RuneLite website](https://runelite.net/) and select to download the setup file for your Operating System then install the launcher using that.

The Configure window can be then opened by selecting the `RuneLite (configure)` start menu entry, on Windows, or if using Mac/Linux by passing the command line argument `--configure` to the launcher

![](https://raw.githubusercontent.com/runelite/wiki/master/img/RuneLite_Configure_shortcut.png)

![](https://raw.githubusercontent.com/runelite/wiki/master/img/RuneLite_Launcher_Configuration.png)

The Configuration Window allows all launcher and client arguments to be configured and saved for use on any subsequent launch.
The configuration is also saved in such a way that when launching RuneLite through the Jagex Launcher they are also applied.

- [Debug](#Debug)
- [Disable TLS verification](#Disable-TLS-verification)
- [Safe mode](#Safe-mode)
- [Disable diffs](#Disable-diffs)
- [Disable updates](#Disable-updates)
- [Client arguments](#Client-arguments)
- [JVM arguments](#JVM-arguments)
- [Scale](#Scale)
- [Hardware acceleration](#Hardware-acceleration)
- [Launch mode](#Launch-mode)

### Debug
Runs the launcher and client in debug mode. Debug mode writes debug level logging to the log files.

cli: `--debug`

### Disable diffs
Downloads full artifacts for updates instead of diffs.

cli: `--nodiff`

### Disable TLS verification
Disables TLS verification.

cli: `--insecure-skip-tls-verification`

### Disable updates
Disables the launcher self updating.

cli: `--noupdate`

### Safe mode
Launches the client in safe mode.  This disables loading of plugins installed from the Plugin-Hub and disables the core GPU plugin.

cli: `--safe-mode`

### Client arguments
Various optional arguments passed to the client. One per line.

A popular client argument being `profile` to load a specific settings profile on launch.
The profile arg can be supplied with a profile name such as `--profile=ironman` to load on client launch the settings profile named "ironman".

cli: `--profile=<profile_name>`
### JVM arguments
Various optional arguments passed to the JVM. One per line.
Non exhaustive list: 

`-Xmx1536M` which will  increase the client memory size to 1536 MB.

### Scale
Scaling factor for Java 2D.  For use overriding scaling performed by your Operating System.
Values passed should be in the format of `#.#`, 1.0 for no scaling, 2.0 for scaled up to double size, 0.5 for scaling down to half size, and such.

cli: `--scale=<VALUE>`

### Hardware acceleration
Hardware acceleration mode for Java 2D.

- AUTO - lets the launcher set the mode to whatever is default for your operating system
- OFF (Linux default) - disables hardware acceleration
- DIRECTDRAW (Windows default) - enables Direct3D for hardware acceleration (Windows only)
- OPENGL (macOS default) - enables the OpenGL-based pipeline for hardware acceleration
- METAL - enables the Apple Metal API for hardware acceleration (macOS only)

cli: `--mode=<OPTION>`

### Launch mode

- AUTO
- JVM
- FORK
- REFLECT

cli: `--launch-mode=<OPTION>`

