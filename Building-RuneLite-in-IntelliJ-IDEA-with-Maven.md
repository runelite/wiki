If you've tried to build RuneLite with IntelliJ, you may be getting this error:
 
 ![](http://i.imgur.com/YfGXjOQ.png)
 
 This is caused by IntelliJ's build system being unable to find some of the ASM libraries that RuneLite uses.
 
 Luckily, there is a fairly quick fix for this.
 
 When checking out from GitHub or manually opening the project in IntelliJ, make sure to select 'Import Project'
 and select 'Maven' under 'Import project from external model'.

![](http://i.imgur.com/sjDPeMB.png)

 You'll be met with additional menus like this one:
 
![](http://i.imgur.com/v6PRPOO.png)
 
 Just click 'Next' on all of them - assuming you have Java's JDK already installed, there should be
 no issues.
 
 Now that the project is loaded into IntelliJ, go to the right hand corner and select 'Edit Configurations' 
 from the drop-down.
 
 ![](http://i.imgur.com/FFYVYMR.png)
 
 You'll need to create a new Maven configuration, so click on the green + sign and select Maven in the drop-down.
 
 ![](http://i.imgur.com/iUjpRW8.png)
 
 Set your 'Working directory' to the project directory, and enter 'install -DskipTests' in the 'Command line' box.
 
 ![](http://i.imgur.com/DDdpQ37.png)
 
  Alternatively, instead of using -DskipTests, in the 'Runner' tab, you can uncheck 'Use Project Settings' and then 
 check 'Skip Tests'.
 
 Now that the Maven configuration is set up, simply press the green play button next to the configuration dropdown to
 build the project using Maven.
 
 ![](http://i.imgur.com/FFYVYMR.png)
 
 ![](http://i.imgur.com/pIU2PnT.png)
 
 Success! The project should build correctly. If not, make sure you didn't forget the -DskipTests command line argument
 in the configuration.
 
 You should now be able to compile the client. Click the 'Build Project' button to the left of the configuration dropdown,
 or select Build > Build Project.
 
 To run the client, all you need to do is find RuneLite.class in the runelite-client folder. Right click on the class and
 select 'Run RuneLite.main()'.
 
 ![](http://i.imgur.com/w2K9lCH.png)
 
 The client should boot up.
 
 ![](http://i.imgur.com/fqoxCXS.png)
 
 Success! You can switch between running the client and building the Maven project by switching between the 'RuneLite' configuration
 and whatever you name your custom Maven configuration before(by default 'Untitled').
 
 Happy development!
 
 
 
 