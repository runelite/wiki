#  Snapshot Build
The snapshot build is a work-in-progress build of the RuneLite client that incorporates features, fixes and enhancements that are not in the most recent stable release.  
As the snapshot is work-in-progress, be aware that it can have unexpected bugs. If you want a more stable experience, you may prefer using the latest stable release available on the [RuneLite Homepage](https://runelite.net). 
If you still want to try out the latest build of the client (and help test things), follow the instructions below.  

## Using the snapshot build
To set up your launcher to use the latest build, you will need to add the snapshot build parameter at the end of the client launch path.  
**The latest snapshot build is:** `--version=1.2.19-SNAPSHOT`  

On Windows:
* Right-click the shortcut
* Click 'Properties'
* Find the "Target:" field
* Add the snapshot build parameter to the end of the path **with a space between RuneLite.exe and --version**

The target path should then look something like this:  
`C:\Users\Username\AppData\Local\RuneLite\RuneLite.exe --version=x.x.x-SNAPSHOT`  

You can check if you are currently on the snapshot build by ensuring the "Info panel" plugin is enabled, and opening it ![info panel icon](https://i.imgur.com/BwtpNPb.png)  
At the top of the panel you will see the current RuneLite version:  
![info panel snapshot build](https://i.imgur.com/a75eLql.png)



## Bugs
If you encounter a bug and would like to report it, first search the [GitHub issue page](https://github.com/runelite/runelite/issues) to check that the bug has not already been reported. If it hasn't, report the issue on GitHub by clicking the green 'New Issue' button. **Be sure to check the [Submission Guidelines](https://github.com/runelite/runelite/blob/master/CONTRIBUTING.md#submit) before reporting your issue.** Be as descriptive as possible!