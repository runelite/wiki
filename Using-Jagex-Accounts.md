### Using Jagex Accounts

If you have converted your account to a Jagex Account and can no longer login directly to RuneLite, but want to do RuneLite development, follow this guide:

1. Make sure your _RuneLite launcher_ is version 2.6.3 or newer
2. For Windows, run `RuneLite (configure)` from the start menu. Otherwise, pass `--configure` to the launcher, e.g. `/Applications/RuneLite.app/Contents/MacOS/RuneLite --configure` on Mac
    - On MacOS, if RuneLite was installed via the Jagex Launcher, it should be `~/Library/Application Support/Jagex Launcher/Games/Old School RuneScape/RuneLite/RuneLite.app/Contents/MacOS/RuneLite --configure`.
3. In the `Client arguments` input box add `--insecure-write-credentials`
4. Click Save
    - On MacOS, double check the terminal output - if you see `ERROR n.runelite.launcher.LauncherSettings - unable to save launcher settings!`, you need to grant whatever terminal app you're using (e.g. Terminal or iTerm or whatever) App Management permission under System Settings -> Privacy & Security -> App Management.
5. Launch RuneLite via the Jagex launcher. RuneLite will write your launcher credentials to `.runelite/credentials.properties`. These credentials can be used to login into your account directly, bypassing your password. **Do not share this file with anyone.**
6. Launch RuneLite client (eg. via the IDE) and it will use the saved credentials.

Once you've finished development you can delete the `credentials.properties` file to return your Runelite back to normal. If for any reason you need to invalidate the credentials, you can use the "End sessions" button under account settings on runescape.com.
