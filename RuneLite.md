# RuneLite Configuration

<img width="241" alt="" src="img/runelite/runelite_config.png">

## Window Settings

### Game size

Allows you to resize your client.

### Resize type

The way the game should open and close the sidebar.

### Lock Window Size

Don't allow window to resize.

### Contain in screen

Makes the client stay contained in the screen when attempted to move out of it.

### Remember client position

Save the position and size of the client after exiting.

### Enable custom window chrome

Whether or not Runelite should use custom title and border.

### Window opacity

Set the windows opacity.

### Enable client always on top

The client will stay visible in front of other windows.

### Display warning on exit

A confirmation box will prevent you from accidentally closing the client. Can be configured to only apply when logged in.

### Show display name in title

Show display name of last logged-in account in the title bar.

### Sidebar Toggle Key

The key that will toggle the sidebar. Accepts modifiers.

### Plugin Panel Toggle Key

The key that will toggle the current or last opened plugin panel. Accepts modifiers.

## Notification Settings

### Enables icon in system tray.
Disabling this may limit your ability to receive tray notifications.
Please restart your client after changing this setting.

### Enable tray notifications

Enables tray notifications.

### Request focus on notification

Configures the window request type on notification.
* **Request:** Requests user attention. Brings window to the front (Windows); Bounces RuneLite dock icon (MacOS).
* **Force:** Forces window to the front.

### Notification sound

Determines what sound to use for system notifications triggered by RuneLite.

* **Native:** Use default system notification sound
* **Custom:** The custom notification sound can be placed in `%userprofile%\.runelite` on Windows or `~/.runelite/` on Linux/MacOS. The notification must be called `notification.wav` and be in .wav format.

Additional custom notification sounds can be placed in the associated `.runelite/notifications/` directory. These sounds must be in .wav format and will appear in the dropdown as the name of the sound file.

### Notification volume

Configures the volume of custom notifications (does not control native volume).

### Notification timeout

How long notification will be shown in milliseconds. A value of 0 will make it use the system configuration. (Linux only)

### Enable game message notifications

Notifications will put a message in the chatbox.

### Flash notification

Flashes the gameframe when a notification is triggered.

### Send notifications when focused

Toggles whether to send notification if you have the client focused.

### Notification Flash Color

Sets the color of the notification flashes.

## Overlay Settings

### Dynamic Overlay Font

Choose which font to use for in-game overlays such as player names, ground items, etc. Can be customized, see [Custom Cursor/Font/Sound/Login Screen](https://github.com/runelite/runelite/wiki/General-Features#Custom-Cursor/Font/Sound/Login-Screen)

### Tooltip Font

Choose which font is used for in-game tooltips such as food stats and NPC names. Can be customized, see [Custom Cursor/Font/Sound/Login Screen](https://github.com/runelite/runelite/wiki/General-Features#Custom-Cursor/Font/Sound/Login-Screen)

### Interface font

Choose which font is used for in-game interface overlays such as opponent info, clue scrolls etc. Can be customized, see [Custom Cursor/Font/Sound/Login Screen](https://github.com/runelite/runelite/wiki/General-Features#Custom-Cursor/Font/Sound/Login-Screen)

### Infobox font

Configures what font is used for infoboxes. Can be customized, see [Custom Cursor/Font/Sound/Login Screen](https://github.com/runelite/runelite/wiki/General-Features#Custom-Cursor/Font/Sound/Login-Screen)

### Tooltip Position

Configures whether to show the tooltip above or below the cursor.

### Display infoboxes vertically

Deprecated: use the flip option in the menu when Shift + right clicking an infobox

### Infobox size(px)

Configures the size of infoboxes in pixels.

### Outline infobox text

Draw a full outline instead of a simple shadow for infobox text.

### Overlay Color

Configures the background color of infoboxes and overlays.

## Other

### Block Extra Mouse Buttons

Blocks extra mouse buttons (4 and above).

### Use actively traded price

Use actively traded prices, sourced from the RuneScape wiki, for item prices.

### Drag Hotkey

Configures the hotkey used to drag UI elements around. default: <kbd>Alt</kbd>
