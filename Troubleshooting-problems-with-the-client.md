If your client or launcher is not launching or is misbehaving, try one of the steps below to try to resolve the issue. Also make sure to check logs for presence of any `Exception` or `ERROR:`. To find logs, either open screenshot directory (if you have access to client by right-clicking "Camera" button) and navigate 1 directory up and then open logs folder, or navigate to `%userprofile%\.runelite\logs` on **Windows** or `$HOME/.runelite/logs` on **Linux** and **macOS**.

### Launcher stuck at 0%

First check your logs if it do not contains any **403** errors. If yes, you are out of luck, that means that CloudFlare potentionally marked you as dangerous entity and is trying to present captcha to you, but this captcha cannot be filled from launcher.

If above does not apply to you and you downloaded launcher before July 7th, redownload it from https://runelite.net. [Related issue is here](https://github.com/runelite/launcher/issues/18).

### Client bouncing up and down in macOS tray

This is caused by missing software for OpenGL in your system. You can either [disable hardware acceleration](https://github.com/runelite/runelite/wiki/Disable-Hardware-Acceleration) or install required software.

To install the software, open your terminal and install homebrew (https://brew.sh/) and then type:

```
brew install glfw3
brew install glew
```

Now client should launch properly. [Related issue is here](https://github.com/runelite/launcher/issues/17).

### SSLException in `application.log`

This probably means that you do not have your Java certificates properly set-up.
Workaround is [here](https://stackoverflow.com/a/50103533).
TLDR:

```
printf '\xfe\xed\xfe\xed\x00\x00\x00\x02\x00\x00\x00\x00\xe2\x68\x6e\x45\xfb\x43\xdf\xa4\xd9\x92\xdd\x41\xce\xb6\xb2\x1c\x63\x30\xd7\x92' | sudo tee /etc/ssl/certs/java/cacerts
sudo /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

[Related issue is here](https://github.com/runelite/runelite/issues/2603).

### ConnectionException in `launcher.log`

This most likely means that launcher is trying to use Ipv6 instead of Ipv4 when connecting to RuneLite repository. If you downloaded launcher before July 7th, redownload it from https://runelite.net. 

## Client freezing

This seems to be an issue with Java 10 when users are using the All Platform version of RuneLite. Try using Java 8 instead. [Related issue is here](https://github.com/runelite/runelite/issues/3999).

### FPS is low or client has weird artifacts

Be sure to check out this [guide on how to disable Hardware Acceleration](https://github.com/runelite/runelite/wiki/Disable-Hardware-Acceleration).