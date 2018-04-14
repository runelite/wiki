# Challenge

When submitting pull requests, you may notice build errors in the Travis CI. Checkstyle errors may be the culprit because they are suppressed by default.

# Solution

## Checkstyle Build Configuration

To start, create a new build configuration to be used for checkstyle. Follow the instructions in the `Configuration` section in the [Building with IntelliJ-IDEA](https://github.com/runelite/runelite/wiki/Building-with-IntelliJ-IDEA#configuration) wiki article.

After the last step in the 'Configuration' section, click on the 'Runner' tab.
![alt](https://i.gyazo.com/b43761a4e744e515b6549511a4333b07.png)

Uncheck the 'use project settings' checkbox (red rectangle), and then press the plus button (blue square) to add a build property.

Add `checkstyle.skip` with the value `false` as the build property.

You can now run this configuration like the other build configuration. This configuration will give you checkstyle errors for not obeying the code convention.

## Automatic Checkstyle
You can also install the Checkstyle-IDEA plugin to automatically check the code style.

To install the plugin, go to File->Settings->Plugins. Click Browse Repositories, search for Checkstyle-IDEA, and install it.

After installing and restarting IDEA, then go to File->Settings->Other Settings->Checkstyle. Under Configuration File, click +, and select the checkstyle.xml from your RuneLite folder.

![checkstyle location](https://i.imgur.com/9gWqQjm.png)

