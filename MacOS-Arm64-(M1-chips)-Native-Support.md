Native support for the newer Apple chips is still a work in progress that isn't fully under RuneLite's hands, having said that it is currently possible to run RuneLite natively on this new architecture with a few caveats.

## Known Issues
* GPU plugin is not functional

## Notes

Currently there are no pre-compiled binary offerings, the only way is to install a JVM manually and use **RuneLite's jar launcher**, which is available on the [main page](https://runelite.net), by clicking the arrow on the `Download` button and selecting `Download for all platforms`. Because of this, getting this setup working **might require some technical skills**.

## Installing Azul's JVM

1. Head to [Azul's site](https://www.azul.com/downloads/zulu-community/?version=java-11-lts&os=macos&architecture=arm-64-bit&package=jdk), download the `.dmg` package and install it.
2. Ensure that `/usr/libexec/java_home` points to `/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home` (if not, a restart should do the trick).
3. This should be it, if for some reason MacOS isn't using the correct JVM when double clicking the jar file, try restarting your computer or double check if it is using the correct JVM by using the `java --version` command on the terminal.
