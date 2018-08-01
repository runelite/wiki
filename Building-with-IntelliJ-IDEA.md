## Getting started

For working with this project, [IntelliJ IDEA](https://www.jetbrains.com/idea/download) is our recommended IDE and the one used by most collaborators. The free community edition has everything you'll need to start testing and contributing real improvements to the project.

You can build RuneLite locally using [JDK 8](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) (or above) as the codebase supports language features up to Java 8. [RuneLite mixins](https://github.com/runelite/runelite/wiki/Using-RuneLite's-mixins) are the exception - these are are limited to Java 6.

## Importing the project

After launching IntelliJ IDEA, create a new project by clicking on **Check out from Version Control** and select **Git**. You'll be prompted to enter the repository URL.

You can either checkout the RuneLite repository `https://github.com/runelite/runelite` or your own GitHub fork, if you've created one.

**NOTE**: If you plan to make a Pull Request, you must fork the the RuneLite repository, and clone from your fork.

![](https://user-images.githubusercontent.com/37604308/38454682-0fad8f26-3aaf-11e8-9ca3-327ebd667675.png)

Now hit **Clone** and wait for IntelliJ to download the project files.

After checking out from GitHub (or manually opening the project in IntelliJ), make sure to select **Import Project**
and choose **Maven** under **Import project from external model**:

![](http://i.imgur.com/gSuqzAY.png)

You'll be met with additional menus, just click **Next** on all of them - there shouldn't be any issues assuming you have the JDK installed.

## Installing Lombok

When first viewing the project in IntelliJ IDEA you may come across this error:

![](https://i.imgur.com/a1YDonV.png)

This is because you do not have the [Lombok Plugin](https://plugins.jetbrains.com/plugin/6317-lombok-plugin) installed.

Navigate to the **Plugins** tab under the **File > Settings** menu (**IntelliJ IDEA > Preferences** for Mac). Click the **Browse repositories...** button and search for **Lombok Plugin** to find it. Install the plugin and restart IntelliJ IDEA.

Success! You should no longer be getting ``Cannot resolve symbol`` or ``Cannot resolve method`` errors.

## Configuration

Now that the project is loaded into IntelliJ, go to the toolbar and select **Edit Configurations...** from the drop-down arrow:

![](http://i.imgur.com/MmKople.png)

You'll need to create a new Maven configuration, so click on the green plus sign and select **Maven** in the drop-down:

![](http://i.imgur.com/iUjpRW8.png)

Set your **Working directory** to the project directory by clicking the folder button on the right-hand side and selecting **runelite-parent**. 

Enter `install -DskipTests -U` in the **Command line** box:

![](http://i.imgur.com/ekzfg2c.png)

## Building

Now that the Maven configuration is set up, simply click the green play button next to the configuration dropdown to
build the project using Maven:

![](http://i.imgur.com/85YnqXB.png)

Success! Your Maven build should run correctly:

![](http://i.imgur.com/pIU2PnT.png)

**NOTE**: Many users have reported issues where RuneLite fails to run after the next step. Running the Maven build a second time should make it work.

## Running

Now, to run the client, all you need to do is find RuneLite.class in the runelite-client folder. Right click on the class and select **Run RuneLite.main()**:

![](http://i.imgur.com/w2K9lCH.png)

The client should boot up:

![](http://i.imgur.com/fqoxCXS.png)

**NOTE**: If the client fails to boot or if the applet does not appear, try to rebuild the project by running the Maven builder again. If that also doesn't work, feel free to ask for help in the discord server.

Example error when client does not boot:

![](https://i.imgur.com/KSf3evR.png)

## Conclusion

Success! You can switch between running the client and building the Maven project by switching between the **RuneLite** configuration and your custom Maven configuration.

Happy development!