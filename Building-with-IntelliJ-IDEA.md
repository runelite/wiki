# Challenge

When building RuneLite in IntelliJ IDEA, you might get this error:
 
![](http://i.imgur.com/YfGXjOQ.png)

# Solution
 
This is because you did not import the project as a Maven project. 

Luckily, there is a fairly straight-forward fix for this, divided into a few steps:

## Importing

When checking out from GitHub or manually opening the project in IntelliJ, make sure to select 'Import Project'
and select 'Maven' under 'Import project from external model':

![](http://i.imgur.com/gSuqzAY.png)

You'll be met with additional menus, just click 'Next' on all of them - there shouldn't be any issues assuming you have the JDK installed.

## Configuration

Now that the project is loaded into IntelliJ, go to the right hand corner and select 'Edit Configurations...' from the drop-down:

![](http://i.imgur.com/MmKople.png)

You'll need to create a new Maven configuration, so click on the green plus sign and select Maven in the drop-down:

![](http://i.imgur.com/iUjpRW8.png)

Set your 'Working directory' to the project directory by pressing the folder button on the right-hand side and selecting 'runelite-parent'. 

Enter `install -DskipTests` in the 'Command line' box:

![](http://i.imgur.com/ekzfg2c.png)

## Building

Now that the Maven configuration is set up, simply press the green play button next to the configuration dropdown to
build the project using Maven:

![](http://i.imgur.com/85YnqXB.png)

Success! Your Maven build should run correctly:

![](http://i.imgur.com/pIU2PnT.png)

## Running

Now, to run the client, all you need to do is find RuneLite.class in the runelite-client folder. Right click on the class and select 'Run RuneLite.main()':

![](http://i.imgur.com/w2K9lCH.png)

The client should boot up:

![](http://i.imgur.com/fqoxCXS.png)

## Conclusion

Success! You can switch between running the client and building the Maven project by switching between the 'RuneLite' configuration and your custom Maven configuration.

Happy development!