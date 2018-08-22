If your client or launcher is not launching or is misbehaving, try one of the steps below to try to resolve the issue. Also make sure to check logs for presence of any `Exception` or `ERROR:`.

To find logs, either open screenshot directory (if you have access to client by right-clicking "Camera" button) and navigate 1 directory up and then open logs folder, or navigate to `%userprofile%\.runelite\logs` on **Windows** or `$HOME/.runelite/logs` on **Linux** and **macOS**.

# Table Of Contents
- [Launcher stuck at 0%](#launcher-stuck-at-0)
- [Client bouncing up and down in macOS tray](#client-bouncing-up-and-down-in-macos-tray)
- [Problems with accessing API](#problems-with-accessing-api)
- [Launcher immediatelly closing](#launcher-immediatelly-closing)
- [Settings being reset](#settings-being-reset)
- [Client freezing](#client-freezing)
- [Client closing when loading](#client-closing-when-loading)
- [FPS problems, screen flickering or artifacts](#fps-problems-screen-flickering-or-artifacts)
- [Corrupt image on macOS](#corrupt-image-on-macos)
- [Client not launching on Linux(#client-not-launching-on-linux)

## Launcher stuck at 0%

If you downloaded launcher before July 7th (before version 1.6.0), redownload it from https://runelite.net. [Related issue is here](https://github.com/runelite/launcher/issues/18).

## Client bouncing up and down in macOS tray

This is caused by missing software for OpenGL in your system. You can either [disable hardware acceleration](https://github.com/runelite/runelite/wiki/Disable-Hardware-Acceleration) or install required software.

To install the software, open your terminal and install homebrew (https://brew.sh/) and then type:

```
brew install glfw3
brew install glew
```

Now client should launch properly. [Related issue is here](https://github.com/runelite/launcher/issues/17).

## Problems with accessing API

If you see `SSLException` in `application.log` this probably means that you do not have your Java certificates properly set-up. Workaround is [here](https://stackoverflow.com/a/50103533).
TLDR:

```
printf '\xfe\xed\xfe\xed\x00\x00\x00\x02\x00\x00\x00\x00\xe2\x68\x6e\x45\xfb\x43\xdf\xa4\xd9\x92\xdd\x41\xce\xb6\xb2\x1c\x63\x30\xd7\x92' | sudo tee /etc/ssl/certs/java/cacerts
sudo /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

[Related issue is here](https://github.com/runelite/runelite/issues/2603).

## Launcher immediatelly closing

If you see `ConnectionException` in `launcher.log` this most likely means that launcher is trying to use Ipv6 instead of Ipv4 when connecting to RuneLite repository. If you downloaded launcher before July 7th, redownload it from https://runelite.net.

## Settings being reset

If you see something like `IllegalArgumentException: Malformed \uxxxx` in `application.log` and your client is not launching (launcher closing immediately but nothing opens) open `%userprofile%\.runelite\settings.properties` on **Windows** or `$HOME/.runelite/settings.properties` on **macOS** and **Linux** and check if it contains weird `\u0000` symbols at bottom. If yes, delete them and save the file.

## Client freezing

This seems to be an issue with Java 10 when users are using the All Platform version of RuneLite. Try using Java 8 instead. [Related issue is here](https://github.com/runelite/runelite/issues/3999).

## Client closing when loading

This looks like corrupted jagex cache issue. Try to delete `%userprofile%\jagexcache` on **Windows** or `$HOME/jagexcache` on **macOS** and **Linux**.

## FPS problems, screen flickering or artifacts

Be sure to check out this [guide on how to disable Hardware Acceleration](https://github.com/runelite/runelite/wiki/Disable-Hardware-Acceleration).

## Corrupt image on macOS

This means that your OS is simply preventing the downloaded .dmg to open. Usually just right-click and pressing open works. Otherwise OS update is required. Alternative is to use "Download for all platforms" from official RuneLite website.

## Client not launching on Linux

This looks like bug with JDK 10+. The solution is either to downgrade to JDK 8 (or 9) or to delete `/usr/lib/jvm/java-11-openjdk-amd64/conf/accessibility.properties` (for JDK 11 on Ubuntu, for 10 the path should be similar). See [related issue](https://github.com/runelite/runelite/issues/5040#issuecomment-414883721) and [related JDK bug](https://bugs.openjdk.java.net/browse/JDK-8204862).