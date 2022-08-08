# Requirements
The GPU plugin requires Windows (7, 8, or 10), MacOS, or Linux, a GPU with support for OpenGL 4.3 or newer, and 2GB of VRAM. This requires either a Nvidia GeForce 400 or newer, an AMD Radeon HD 5000 Series or newer, or Intel HD Graphics with an Intel Haswell processor or newer. Ensure your GPU drivers are up to date.

It is possible there are configurations on which the GPU plugin does not work correctly. In particular, we recommend you do not enable it in dangerous situations ingame (HCIM!) until you sufficiently test whether the plugin is stable on your system.

## How do I get GPU plugin?
Exit your client and launch it again to update. Ensure you are using a supported operating system and graphics card (see above). You can then enable the plugin "GPU" on the plugin sidebar.

## The plugin keeps turning itself off!
The plugin will turn off automatically if it is not supported on your current setup. If your system meets the requirements, but the plugin still turns itself off, see the troubleshooting steps below.

## The game crashes as soon as I turn on the plugin!
Try [disabling Hardware Acceleration](https://github.com/runelite/runelite/wiki/Disable-Hardware-Acceleration). Otherwise, make sure your system meets the requirements.
 
## I meet the **ALL** the requirements, but it still won't turn on or is very laggy?
If you have a Nvidia GPU, make sure you are using the 32 or 64 bit version of RuneLite, not the For All Platforms Version. Then go into NVIDIA Control Panel -> Manage 3D settings -> Program settings. Click Add and find RuneLite on the list, add it. In the lower section, find the OpenGL rendering GPU option, and set it to your NVIDIA GPU. When finished, it should look something like this:

![](https://i.imgur.com/eVk7HNB.png)

## When I turn on Anti Aliasing weird lines appear
If you have an AMD graphics card, roll back the driver to version 18.12.1

## I'm getting incredibly high memory usage while using the GPU!
If you have an AMD graphics card, roll back the driver to version 18.12.1

## The client crashes when I enter a new location
If you have an AMD graphics card, roll back the driver to version 18.12.1

## My client turns black when I enable the plugin!
Try turning off compatibility mode on the RuneLite launcher, running in Administrator mode, turning off fullscreen optimization, or other Windows compatibility settings.

## There are two mouse cursors when GPU is on
If you have a program called playstv, turn it off.

## Client is freezing after enabling GPU plugin
If you are on Linux, update Mesa to version 19.1.3 or later.

If you are on Windows, open task manager and kill any `jogamp_exe_tst` processes **twice** (they will have random numbers after the `tst`).  This may need to be done during RuneLite startup if the GPU plugin is still set to enabled.

## Why can't I click as far as I saw before?
Click distance has been limited to 45 tiles.

## What is the maximum draw distance?
90 tiles.

## Why can't I see all the way to 90 tiles?
The client will only display loaded regions regardless of draw distance settings.

## Why doesn't RuneLite draw extra regions?
It is being considered as an improvement, no ETA.

## Why can't my camera fly around?
The Orb of Oculus functionality is not part of the GPU plugin.

## I have weird lines all over the screen
Try disabling anti-aliasing in your GPU properties and in RuneLite, or reset your GPU properties to default.
You can also try disabling any driver settings which override application-specific AA settings, such as those in Nvidia Control Panel.

## How can I disable GPU plugin if the client does not open?

### Windows

Run cmd.exe (Windows Key + R) and paste the following into the command prompt:

```
%localappdata%\runelite\runelite.exe --clientargs --safe-mode
```
Once RuneLite fully loads, you can close the client and relaunch as normal; GPU will be disabled.

### macOS

Run Terminal.app and paste the following into the Terminal window:

```
/Applications/RuneLite.app/Contents/MacOS/RuneLite --clientargs "--safe-mode"
```
Once RuneLite fully loads, you can close the client and relaunch as normal; GPU will be disabled.

### Linux
If you are using the AppImage version, open Terminal and run the following, edited as appropriate:

```
./path/to/RuneLite.AppImage --clientargs "--safe-mode"
```
Once RuneLite fully loads, you can close the client and relaunch as normal; GPU will be disabled.

### All Platforms

If you downloaded the `.jar` version of the launcher, run this:
```
java -jar Location-of-RuneLite.jar --clientargs "--safe-mode"
```
Once RuneLite fully loads, you can close the client and relaunch as normal; GPU will be disabled.

### Windows (old method)

In Windows Powershell run the following command:

```
(Get-Content $env:userprofile\.runelite\settings.properties).replace('runelite.gpuplugin=true', 'runelite.gpuplugin=false') | Set-Content $env:userprofile\.runelite\settings.properties
```

## Green stripes are appearing on my screen
This bug seems to be caused by changes in the Intel graphics drivers. the `27.20.100.xxxx` drivers can produce green lines at the time of writing. Downgrading back to the `26.20.100.xxxx` drivers seems to be resolving this problem.

## Client has low FPS during background compute operations
Disable Compute Shaders from the GPU plugin options and toggle the plugin off and back on. Use of mining software or video rendering are common GPU compute loads.

## My game is flickering

Open the Nvidia Control Panel, open "Manage 3D Settings" under the 3D settings group, select "Program Settings", add RuneLite (it can be easily found under your recently-opened programs), apply the following settings, and relaunch RuneLite:

* Monitor Technology: Fixed Refresh Rate
* OpenGL Rendering GPU: _Set to your graphics card_
* Vertical Sync: Off

## Text/Game ui is slightly blurry or weird looking

This can be caused by multiple things

### DPI scaling
Launcher versions 2.0+ are dpi aware and will scale with your system scaling settings, these issues can by fixed by doing one of the following
* On windows these settings are called `Scale and Layout` under the `Display` tab of the control panel, you can set this to 100%
* Download and run the [1.6 version of the launcher](https://github.com/runelite/launcher/releases/tag/1.6.0) (not recommended since there are stability fixes in the 2.0+ version)
* Launch the client with `"%localappdata%/Runelite/jre/bin/javaw.exe" -Xmx512m -Xss2m -Dsun.java2d.uiScale=1.0 -jar "%localappdata%/Runelite/RuneLite.jar" --nojvm` to set the uiscale to 1.  As of launcher versions 2.4+ this can be accomplished instead by running the much more simple `%localappdata%/RuneLite/RuneLite.exe --scale=1`.

### Graphics drivers forcing AntiAliasing
Drivers can force certain AA levels or types, and when the GPU plugin is on it will be forced to use those, making the ui look different than normal.

For Nvidia drivers go into `NVIDIA Control Panel -> Manage 3D settings` for managing its settings
* Set `Antialiasing - FXAA` to off 
* Set `Antialiasing  - Mode` to Application-controlled

# Card Specific Issues

## AMD Radeon RX 5700 XT

Symptom: GPU driver crash (black screen) when turning on or using the GPU plugin

Solution: Disable hardware acceleration using method 2 found here https://github.com/runelite/runelite/wiki/Disable-Hardware-Acceleration#method-2-starting-the-launcher-with-hw-accel-disabled-from-cmd
