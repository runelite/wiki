If your client or launcher is not launching or is misbehaving, try one of the steps below to try to resolve the issue. Also make sure to check logs for presence of any `Exception` or `ERROR:`.

To find logs, do one of the following things:
* Open the screenshot directory (if you have access to client by right-clicking "Camera" button) and navigate 1 directory up and then open logs folder
* Navigate to `%userprofile%\.runelite\logs` on **Windows** or `$HOME/.runelite/logs` on **Linux** and **macOS**.

# Table Of Contents
- [Launcher stuck at 0%](#launcher-stuck-at-0)
- [Client not launching](#client-not-launching)
- [Problems with accessing API](#problems-with-accessing-api)
- [Launcher immediately closing](#launcher-immediately-closing)
- [Settings being reset](#settings-being-reset)
- [Client freezing](#client-freezing)
- [Client closing when loading](#client-closing-when-loading)
- [Adding an exception to the Windows Firewall](#adding-an-exception-to-the-windows-firewall)
- [FPS problems, screen flickering or artifacts](#fps-problems-screen-flickering-or-artifacts)
- [Client .dmg or .app not opening on macOS](#client-dmg-or-app-not-opening-on-macos)
- [Client bouncing up and down in macOS tray](#client-bouncing-up-and-down-in-macos-tray)
- [Corrupt image on macOS](#corrupt-image-on-macos)
- [Client stuck at "Loaded update list" on Linux](#client-stuck-at-loaded-update-list-on-linux)
- [Client not launching on Linux](#client-not-launching-on-linux)
- [PulseAudio forcibly taken over by client](#pulseaudio-forcibly-taken-over-by-client)
- [Client crashing on login](#client-crashing-on-login)
- [java.net.ProtocolException on Mac OSX](#javanetprotocolexception-on-mac-osx)
- [UnsatisfiedLinkError: javaaccessbridge-32.dll: Can't find dependent libraries](#unsatisfiedlinkerror-javaaccessbridge-32dll-cant-find-dependent-libraries)
- [Misaligned tooltips](https://github.com/runelite/runelite/wiki/Troubleshooting-problems-with-the-client#misaligned-tooltips)
- [Client is outdated](https://github.com/runelite/runelite/wiki/Troubleshooting-problems-with-the-client#client-is-outdated)
- [SSLHandshakeException: PKIX path building failed](#javaxnetsslsslhandshakeexception-pkix-path-building-failed)
- [Notifications don't work on linux](#notifications-dont-work-on-linux)

## Launcher stuck at 0%

If you downloaded launcher before July 7th 2018 (before version 1.6.0), redownload it from https://runelite.net. [Related issue is here](https://github.com/runelite/launcher/issues/18). Otherwise, see below

## Client not launching

If Launcher.log only displays launcher version and setting hardware accel type
- Windows 10 update `KB4515384` is known to cause issues with Java applications, try uninstalling it
- `RivaTuner Statistics` apparently also causes this so try disabling that, [related issue here](https://github.com/runelite/runelite/issues/10192).

If you see `error fetching bootstrap` in `launcher.log` you are unable to connect to RL servers to get the bootstrap for startup.
The error will be accompanied by an exception
- `ConnectException: Connection timed out` - this is caused by either a firewall blocking the connection or a routing issue, try adding an exception in your firewall for runelite, reseting/changing your current network, or use a VPN. See [this](https://github.com/runelite/runelite/wiki/Troubleshooting-problems-with-the-client#adding-an-exception-to-the-windows-firewall) for Windows Firewall.
- `IOException: Server returned HTTP response code: 403` - this means the server has seen your request but is denying you, in our case that would be cloudflare intentionally blocking your connection for whatever reason.  Try changing networks, using a VPN, or contacting cloudflare to ask why you are getting blocked.
- `SignatureException: Signature length not correct: got 0 but was expecting 512` - this is caused by your router or some other software middle manning the connection to the RL server, try logging into your router to disable that "feature" or contact your isp to ask what they are doing.

If you see `Error loading RS!` in the `client.log` you are unable to get the osrs client from jagex.
The error will be accompanied by an exception
- `SocketTimeoutException: timeout` - this means the connection took too long to either connect or receive any data, most of the time caused by a slow or inconsistent internet connection, you can try resetting your network or maybe using a VPN.

In some cases, having special rules in your environment settings that affect `java_options` can prevent your runelite launcher from launching.

## Problems with accessing API

If you see `SSLException` in `client.log` this probably means that you do not have your Java certificates properly set-up. Workaround is [here](https://stackoverflow.com/a/50103533).
TLDR:

```
printf '\xfe\xed\xfe\xed\x00\x00\x00\x02\x00\x00\x00\x00\xe2\x68\x6e\x45\xfb\x43\xdf\xa4\xd9\x92\xdd\x41\xce\xb6\xb2\x1c\x63\x30\xd7\x92' | sudo tee /etc/ssl/certs/java/cacerts
sudo /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

[Related issue is here](https://github.com/runelite/runelite/issues/2603).

## Launcher immediately closing

If you see `ConnectionException` in `launcher.log` this most likely means that launcher is trying to use Ipv6 instead of Ipv4 when connecting to RuneLite repository. If you downloaded launcher before July 7th 2018, redownload it from https://runelite.net.

## Settings being reset

If you see something like `IllegalArgumentException: Malformed \uxxxx` in `client.log` and your client is not launching (launcher closing immediately but nothing opens) open `%userprofile%\.runelite\settings.properties` on **Windows** or `$HOME/.runelite/settings.properties` on **macOS** and **Linux** and check if it contains weird `\u0000` symbols at bottom. If yes, delete them and save the file.

## Client freezing

A [Java bug](https://bugs.java.com/bugdatabase/view_bug.do?bug_id=8202580) can result in freezes when users are using the All Platform version of RuneLite (.jar) with Java 10. Try using Java 8, *or* Java 11 and newer. [Related issue is here](https://github.com/runelite/runelite/issues/3999).

Ubuntu 18.04 users should install openjdk-8-jre. Arch Linux users should install jre8-openjdk or jre-openjdk.

## Client closing when loading

This looks like corrupted jagex cache issue. Try to delete `%userprofile%\jagexcache` on **Windows** or `$HOME/jagexcache` on **macOS** and **Linux**.

## Adding an exception to the Windows firewall

In case the log file contains the `ConnectException: Connection timed out` error you can try adding an exception to the Windows firewall for RuneLite:
Open the `Windows Security` app and Select `Firewall & network protection`:

![](https://user-images.githubusercontent.com/7499230/90973578-8f5bde00-e523-11ea-8259-fc2343e3b7b8.png)

Click `Allow an app through the firewall`:

![](https://user-images.githubusercontent.com/7499230/90973579-8f5bde00-e523-11ea-82e5-427fcd01df65.png)

Click `Change Settings` followed by `Allow another app...` and select `Browse...` in the window that opens. Select your RuneLite shortcut on your desktop or select RuneLite.exe in `"%localappdata%/runelite/`. Click Add and press `OK` and RuneLite will be whitelisted in the Windows Firewall.

## FPS problems, screen flickering or artifacts

Be sure to check out this [guide on how to disable Hardware Acceleration](https://github.com/runelite/runelite/wiki/Disable-Hardware-Acceleration).

## Client .dmg or .app not opening on macOS

If .dmg or .app is not opening when double clicked (because of unknown publisher or some other issue) try right-click open.

## Client bouncing up and down in macOS tray

This is caused by missing software for OpenGL in your system. You can either [disable hardware acceleration](https://github.com/runelite/runelite/wiki/Disable-Hardware-Acceleration) or install required software.

To install the software, open your terminal and install homebrew (https://brew.sh/) and then type:

```
brew install glfw3
brew install glew
```

Now client should launch properly. [Related issue is here](https://github.com/runelite/launcher/issues/17).

## Corrupt image on macOS

Update to launcher 1.6.1. Launcher versions before 1.6.1 required OSX 10.11+. Alternatively use the "Download for all platforms" from the official RuneLite website.

## Client stuck at "Loaded update list" on Linux

This is caused by PulseAudio not being supported for Java. A workaround for this is to use Alsa instead. This can be done by adding the following line to the sound.properties file which is located at $JAVA_HOME/conf/sound.properties:

```
javax.sound.sampled.Clip=com.sun.media.sound.DirectAudioDeviceProvider
javax.sound.sampled.Port=com.sun.media.sound.PortMixerProvider
javax.sound.sampled.SourceDataLine=com.sun.media.sound.DirectAudioDeviceProvider
javax.sound.sampled.TargetDataLine=com.sun.media.sound.DirectAudioDeviceProvider
```

Your JAVA_HOME is by default located at /usr/lib/jvm/<Java install here>.

## Client not launching on Linux

This looks like bug with JDK 10+. The solution is either to downgrade to JDK 8 (or 9) or to delete `/usr/lib/jvm/java-11-openjdk-amd64/conf/accessibility.properties` (for JDK 11 on Ubuntu, for 10 the path should be similar). See [related issue](https://github.com/runelite/runelite/issues/5040#issuecomment-414881841) and [related JDK bug](https://bugs.openjdk.java.net/browse/JDK-8204862).

## PulseAudio forcibly taken over by client

If RuneLite is taking over your entire PulseAudio, then you're likely missing "pulseaudio-alsa". Getting that package should resolve any sound conflicts, you can now listen to sounds and play music on your browser again.

## Client crashing on login

This is probably related to some versions of vanilla client, there are few possible solutions

- Login to vanilla (OSRS) client and move (try teleporting to Lumbridge for example) and then login back to RuneLite
- Try installing the 32-bit version instead of the 64-bit version
- Try running the .jar (all platforms) version with latest Java version
- See [Client closing when loading](#client-closing-when-loading)

## java.net.ProtocolException on Mac OSX

This is caused by having SOCKS proxy enabled on your network settings

## UnsatisfiedLinkError: javaaccessbridge-32.dll: Can't find dependent libraries

Updating to Launcher version 2.1.7 should resolve this problem. Otherwise, delete the `accessibility.properties` file in your home directory (this is found at `C:/Users/<user>/` or `%userprofile%`)

## Misaligned Tooltips
If your mouseover tooltips are misaligned, confirm whether or not you are using a [RuneLite Account](https://github.com/runelite/runelite/wiki/Account), and then follow the appropriate steps:

### Logged in to a [RuneLite Account](https://github.com/runelite/runelite/wiki/Account) ![LOGOUT_IMAGE](https://i.imgur.com/LxvaOEL.png)
1. Close RuneLite.
2. Open the `Windows Powershell` application and run the following:

```
Invoke-webrequest -Method DELETE -Uri ("https://api.runelite.net/runelite-" + (Invoke-Webrequest -Method GET -Uri "https://static.runelite.net/bootstrap.json" | ConvertFrom-Json).client.version + "/config/runelite.TooltipOverlay_preferredPosition") -Headers @{ 'RUNELITE-AUTH' = (Get-Content -Raw -Path $env:userprofile\.runelite\session | ConvertFrom-Json).uuid }
```
3. Reopen RuneLite.

### Not logged in to a [RuneLite Account](https://github.com/runelite/runelite/wiki/Account) ![login_icon](https://user-images.githubusercontent.com/54762282/87227341-564b1e00-c368-11ea-958f-a924ee11fa6c.png)
1. Close RuneLite.
2. Open the `Windows PowerShell` application and run the following:
```
(Get-Content $env:userprofile\.runelite\settings.properties) -notmatch "runelite.TooltipOverlay_preferredPosition" | Set-Content $env:userprofile\.runelite\settings.properties
```
3. Reopen RuneLite.

## Client is outdated

Usually this means that the game has just updated and RuneLite hasn't yet been updated. Sometimes it can mean RuneLite can't write to the cache directory. Try deleting `%userprofile%\.runelite\cache`

## `javax.net.ssl.SSLHandshakeException: PKIX path building failed`

Some software or certificate installed on your computer is interrupting the secure connection to download the launcher bootstrap. This may be caused by antivirus software, a root certificate (such as those which may be installed on computers used for work), or any number of other sources. To circumvent this, you can try adjusting your antivirus settings or disabling them temporarily or, if no other workaround will work, by using the `--insecure-skip-tls-verification` launcher flag. (see our page on [disabling hardware acceleration](https://github.com/runelite/runelite/wiki/Disable-Hardware-Acceleration) to see how to add a launcher flag)

## Notifications don't work on linux

RuneLite calls `notify-send` for notifications, which is installed via the `libnotify-bin` package. Be sure to have this package installed for desktop notifications to work.