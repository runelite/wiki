# Idle Notifier Configuration

Sends a notification when going idle, or when your hp/prayer reaches a certain threshold. To change whether notifications are sent even when the client is focused (and other settings related to notifications), see the settings for RuneLite.

## Settings

### 1. Idle Animation Notification

Toggles notifying you when stopping skilling animations such as mining, fletching, or creating battlestaves.

### 2. Idle Interaction Notifications

Toggles notifying you when you stop interacting with an NPC which includes combat and fishing.

### 3. Idle Movement Notifications

Toggles notifying you when your character stops moving and stays idle there

### 4. Idle Logout Notifications

Toggled notifying you when you don't interact with the client for too long.

### 5. Idle Notification Delay

Choose how long your animation or interaction has to be stopped before sending a notification. Don't set it too low as some animations have long delays.

### 6. Hitpoints Notification Threshold 

Choose hp threshold to send a notification. NOTICE! By default you will only get notifications when the client is out of focus, to change this see RuneLite.

### 7. Prayer Notification Threshold

Choose prayer threshold to send a notification.

### 8. Oxygen Notification Threshold

Choose oxygen threshold (during underwater activities) below which to send a notification.

### 9. Special Attack Energy Notification Threshold

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

 - **Native**: Use default system notification sound
 - **Custom**: The custom notification sound can be placed in `%userprofile%\.runelite` on Windows or `~/.runelite/` on Linux/MacOS. The notification must be called notification.wav and be in .wav format.

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
