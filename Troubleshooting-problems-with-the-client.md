If your client or launcher is not launching or is misbehaving, try one of the steps below to try to resolve the issue. Also make sure to check logs for presence of any `Exception` or `ERROR:`.

To find logs, do one of the following things:
* Open the screenshot directory (if you have access to client by right-clicking "Camera" button) and navigate 1 directory up and then open logs folder
* Navigate to `%userprofile%\.runelite\logs` on **Windows** or `$HOME/.runelite/logs` on **Linux** and **macOS**.

# Table Of Contents
- [Table Of Contents](#table-of-contents)
  - [Client not launching](#client-not-launching)
  - [Adding an exception to the Windows firewall](#adding-an-exception-to-the-windows-firewall)
  - [Lag with interacting with the side panel](#lag-with-interacting-with-the-side-panel)
  - [Client bouncing up and down in macOS tray](#client-bouncing-up-and-down-in-macos-tray)
  - [Client stuck at "Loaded update list" (Linux))](#client-stuck-at-loaded-update-list-linux)
  - [PulseAudio forcibly taken over by client (Linux)](#pulseaudio-forcibly-taken-over-by-client-linux)
  - [Client crashing on login](#client-crashing-on-login)
  - [Client is outdated](#client-is-outdated)
  - [`javax.net.ssl.SSLHandshakeException: PKIX path building failed`](#javaxnetsslsslhandshakeexception-pkix-path-building-failed)
  - [Notifications don't work on linux](#notifications-dont-work-on-linux)
  - [Cannot find drive when installing](#cannot-find-drive)
  - [`Socket Exception - Permission Denied: Connect` while using Mullvad VPN](#socket-exception-permission-denied-connect-mullvad)

## Client not launching

If you see `error fetching bootstrap` in `launcher.log` you are unable to connect to RuneLite servers to get the bootstrap for startup.
The error will be accompanied by an exception
- `ConnectException: Connection timed out` - this is caused by either a firewall blocking the connection or a routing issue, try adding an exception in your firewall for runelite, reseting/changing your current network, or use a VPN. See [this](https://github.com/runelite/runelite/wiki/Troubleshooting-problems-with-the-client#adding-an-exception-to-the-windows-firewall) for Windows Firewall.
- `IOException: Server returned HTTP response code: 403` - this means the server has seen your request but is denying you, in our case that would be cloudflare intentionally blocking your connection for whatever reason.  Try changing networks, using a VPN, or contacting cloudflare to ask why you are getting blocked.
- `SignatureException: Signature length not correct: got 0 but was expecting 512` - this is caused by your router or some other software middle manning the connection to the RL server, try logging into your router to disable that "feature" or contact your isp to ask what they are doing.

If you see `Error loading RS!` in the `client.log` you are unable to get the osrs client from jagex.
The error will be accompanied by an exception
- `SocketTimeoutException: timeout` - this means the connection took too long to either connect or receive any data, most of the time caused by a slow or inconsistent internet connection, you can try resetting your network or maybe using a VPN.

In some cases, having certain environment variables set such as `JAVA_OPTS` can prevent RuneLite from launching.

## Adding an exception to the Windows firewall

In case the log file contains the `ConnectException: Connection timed out` error you can try adding an exception to the Windows firewall for RuneLite:
Open the `Windows Security` app and Select `Firewall & network protection`:

![](https://user-images.githubusercontent.com/7499230/90973578-8f5bde00-e523-11ea-8259-fc2343e3b7b8.png)

Click `Allow an app through the firewall`:

![](https://user-images.githubusercontent.com/7499230/90973579-8f5bde00-e523-11ea-82e5-427fcd01df65.png)

Click `Change Settings` followed by `Allow another app...` and select `Browse...` in the window that opens. Select your RuneLite shortcut on your desktop or select RuneLite.exe in `"%localappdata%/runelite/`. Click Add and press `OK` and RuneLite will be whitelisted in the Windows Firewall.

## Lag with interacting with the side panel

Try [disabling hardware acceleration](https://github.com/runelite/runelite/wiki/Disable-Hardware-Acceleration).

## Client bouncing up and down in macOS tray

This is caused by missing software for OpenGL in your system. You can either [disable hardware acceleration](https://github.com/runelite/runelite/wiki/Disable-Hardware-Acceleration) or install required software.

To install the software, open your terminal and install homebrew (https://brew.sh/) and then type:

```
brew install glfw3
brew install glew
```

Now the client should launch properly. [Related issue is here](https://github.com/runelite/launcher/issues/17).

## Client stuck at "Loaded update list" (Linux))

This is caused by PulseAudio not being supported for Java. A workaround for this is to use Alsa instead. This can be done by adding the following line to the sound.properties file which is located at $JAVA_HOME/conf/sound.properties:

```
javax.sound.sampled.Clip=com.sun.media.sound.DirectAudioDeviceProvider
javax.sound.sampled.Port=com.sun.media.sound.PortMixerProvider
javax.sound.sampled.SourceDataLine=com.sun.media.sound.DirectAudioDeviceProvider
javax.sound.sampled.TargetDataLine=com.sun.media.sound.DirectAudioDeviceProvider
```

Your JAVA_HOME is by default located at /usr/lib/jvm/<Java install here>.

## PulseAudio forcibly taken over by client (Linux)

If RuneLite is taking over your entire PulseAudio, then you're likely missing "pulseaudio-alsa". Getting that package should resolve any sound conflicts, you can now listen to sounds and play music on your browser again.

## Client crashing on login

This is probably caused by a 3rd party plugin from the pluginhub. Try launching the client in *safe mode* with `"%localappdata%\RuneLite\RuneLite.exe" --safe-mode` to confirm this.
If it does not crash when in safe mode, uninstall your pluginhub plugins until the problem goes away.

## Client is outdated

Usually this means that the game has just updated and RuneLite hasn't yet been updated. Sometimes it can mean RuneLite can't write to the cache directory. Try deleting `%userprofile%\.runelite\cache`

## `javax.net.ssl.SSLHandshakeException: PKIX path building failed`

Some software or certificate installed on your computer is interrupting the secure connection to download the launcher bootstrap. This may be caused by antivirus software, a root certificate (such as those which may be installed on computers used for work), or any number of other sources. To circumvent this, you can try adjusting your antivirus settings or disabling them temporarily or, if no other workaround will work, by using the `--insecure-skip-tls-verification` launcher flag. (see our page on [disabling hardware acceleration](https://github.com/runelite/runelite/wiki/Disable-Hardware-Acceleration) to see how to add a launcher flag)

## Notifications don't work on linux

RuneLite calls `notify-send` for notifications, which is installed via the `libnotify-bin` package. Be sure to have this package installed for desktop notifications to work.

## Cannot find drive

This can happen from manually deleting the installed directory, or having the hard drive its currently installed to become accessible.
If you are receiving an error when attempting to run the installer/uninstaller such as:
 - The drive or UNC share you selected does not exist or is not accessible.  Please select another.
 - D:\Games\RuneLite\unins000.exe The system cannot find the drive specified.
 - C:\Users\user\RuneLite\unins000.dat file is corrupted. Cannot uninstall.
 
Delete the `Computer\HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\RuneLite Launcher_is1` registry key.

## `Socket Exception - Permission Denied: Connect` while using Mullvad VPN

Some issues have issues loading Runelite while using Mullvad VPN, while this issue does effect users with various other VPNs, the following fix is only known to resolve issues for Mullvad users.
 - Open [Runelite (configure)](https://github.com/runelite/runelite/wiki/RuneLite-Launcher-Configuration)
 - Copy paste `-Djava.net.preferIPv4Stack=true` into the `JVM arguments` box and Save
 - Make sure your Mullvad does not have ___ANY___ applications being split tunneled
If both steps are done correctly, Runelite should open normally while Mullvad is enabled.
