# Idle Notifier Configuration

Sends a notification when going idle, or when your hp/prayer reaches a certain threshold. To change whether notifications are sent even when the client is focused (and other settings related to notifications), see the settings for RuneLite.

## Settings

### Idle Animation Notification

Toggles notifying you when stopping skilling animations such as mining, fletching, or creating battlestaves.

### Idle Interaction Notifications

Toggles notifying you when you stop interacting with an NPC which includes combat and fishing.

### Idle Movement Notifications

Toggles notifying you when your character stops moving and stays idle there

### Idle Logout Notifications

Toggled notifying you when you don't interact with the client for too long.

### Idle Notification Delay

Choose how long your animation or interaction has to be stopped before sending a notification. Don't set it too low as some animations have long delays.

### Six hour logout notification

Toggled notifying you when you're about to be logged out due to being online for too long.

### Hitpoints Notification

Toggled notifying you when your hitpoints hits the **Hitpoints Notification Threshold**.

NOTICE! By default you will only get notifications when the client is out of focus, to change this see RuneLite settings or customize this notification by clicking the cogwheel next to the checkbox. See further down the page for those settings.

### Hitpoints Notification Threshold

Choose hp threshold to send a notification.

### Prayer Notification

Toggled notifying you when your prayer hits the **Prayer Notification Threshold**.

### Prayer Notification Threshold

Choose prayer threshold to send a notification.

### Low Energy Notification

Toggled notifying you when your run energy hits the **Low Energy Notification Threshold**.

### Low Energy Notification Threshold

The amount of run energy remaining to send a notification at.

### High Energy Notification

Toggled notifying you when your run energy hits the **High Energy Notification Threshold**.

### High Energy Notification Threshold

The amount of run energy reached to send a notification at.

### Oxygen Notification

Toggled notifying you when your oxygen (during underwater activities) hits the **Oxygen Notification Threshold**.

### Oxygen Notification Threshold

Choose oxygen threshold (during underwater activities) below which to send a notification.

### Special Attack Energy Notification

Toggled notifying you when your special attack percentage hits the **Special Attack Energy Notification Threshold**.

### Special Attack Energy Notification Threshold

Choose special attack percentage regeneration threshold at which send a notification.

## Notification Customization

After enabling one of the notifications, a cogwheel will appear next to the checkbox where you can check **Customize notification**, allowing you to customize how the specific notification will show up.

### Tray notification

Enables tray notifications.

### Request focus

Configures the window focus request type on notification.

 - **Request**: Requests user attention. Brings window to the front (Windows); Bounces RuneLite dock icon (MacOS).
 - **Taskbar**: Flash the taskbar.
 - **Force**: Forces window to the front.

### Notification sound

Determines what sound to use for system notifications triggered by RuneLite.

* **Native:** Use default system notification sound
* **Custom:** The custom notification sound can be placed in `%userprofile%\.runelite` on Windows or `~/.runelite/` on Linux/MacOS. The notification must be called `notification.wav` and be in .wav format.

Additional custom notification sounds can also be added following the same rules as the **Custom** sound but may use any name. These sounds will appear in the dropdown as their associated file name.


### Notification volume

Configures the volume of custom notifications (does not control native volume).

### Notification timeout

How long notifications will be shown in milliseconds. A value of 0 will make it use the system configuration. (Linux only)

### Game message notification

Adds a notification message to the chatbox.

### Flash

Flashes the game frame as a notification.

### Flash color

The color of the notification flashes.

### Send notifications when focused

Send the notification even when the client is focused.
