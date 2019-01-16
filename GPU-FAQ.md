# Requirements
The GPU plugin requires Windows (7, 8, or 10) or Linux, a GPU with support for OpenGL 4.3 or newer, and 2GB of VRAM. This requires either a Nvidia GeForce 400 or newer, an AMD Radeon HD 5000 Series or newer, or Intel HD Graphics with an Intel Haswell processor or newer. Also, ensure that your GPU drivers are up to date.

There are possibly configurations it does not work correctly on. In particular, we recommend you do not enable it in dangerous situations ingame (HCIM!) until you sufficiently test that it is stable on your system.

#### How do I get GPU plugin?
Exit your client and launch it again to update. Ensure you are using a supported operating system and graphics card (see above). You can then enable the plugin "GPU" on the plugin sidebar.

#### The plugin keeps turning itself off!
The plugin will turn off automatically if it is not supported on your current setup. If you do meet the troubleshooting steps below.

#### The game crashes as soon as I turn on the plugin!
Try [disabling Hardware Acceleration](https://github.com/runelite/runelite/wiki/Disable-Hardware-Acceleration).

#### I meet the **ALL** the requirements, but it still won't turn on or is very laggy?
If you have a Nvidia GPU, make sure you are using the 32 or 64 bit version of RuneLite, not the For All Platforms Version. Then go into NVIDIA Control Panel -> Manage 3D settings -> Program settings. Click Add and find RuneLite on the list, add it. In the drop-down, select High-Performance. When finished, it should look something like this:
![](https://i.imgur.com/CwEcodJ.png)

#### When i turn on Anti Aliasing weird lines appear
If you have an AMD graphics card, roll back the driver to version 18.12.1

#### I'm getting incredibly high memory usage while using the GPU!
If you have an AMD graphics card, roll back the driver to version 18.12.1

#### My client turns black when I enable the plugin!
Try turning off compatibility mode on the RuneLite launcher, running in Administrator mode, turning off fullscreen optimization, or other Windows compatibility settings.

#### When will there be support for macOS?
The GPU plugin is Windows/Linux only for now. The RuneLite team wants it to be available to other operating systems, it is a work in progress with no ETA.

#### Why can't I click as far as I saw before?
Click distance has been limited to 45 tiles.

#### What is the maximum draw distance?
90 tiles.

#### Why can't I see all the way to 90 tiles?
The client will only display loaded regions regardless of draw distance settings.

#### Why doesn't RuneLite draw extra regions?
It is being considered as an improvement, no ETA.

#### Why can't my camera fly around?
The Orb of Oculus functionality is not part of the GPU plugin.