## Coding Format
A full code formatting example is available [at the end of this page](#example).

We follow standard Java conventions with the following notable exceptions:
* Tabs, not spaces.
* Brace placement is always next line.

The following are some common mistakes not covered by the code style check:
* Add the copyright header to the beginning of every new text file.
* Imports in a single logical block.
* A single blank line separating logical blocks.
* An extra tab on multi line annotations.

## IntelliJ Integration

The easiest way to follow our style is to use IntelliJ's formatter. To install it, simply download [this xml](http://ix.io/1jNP) and [follow this guide](https://www.jetbrains.com/help/idea/2017.1/code-style.html) to import it into your IDE. Then you can press `Ctrl+Alt+L` to format the current document.

If you don't like tools formatting your code for you, you can add a maven run configuration that runs checkstyle.
Simply create a new `Maven` run configuration, and set the command line to `-Dcheckstyle.skip=false checkstyle:check`

You can also install the Checkstyle-IDEA plugin, and it will checkstyle as you type. To install the plugin, go to File->Settings->Plugins. Click Browse Repositories, search for Checkstyle-IDEA, and install it.

After installing and restarting IDEA, then go to File->Settings->Other Settings->Checkstyle. Under Configuration File, click +, and select the checkstyle.xml from your RuneLite folder. Make sure you check the Active box next to your checkstyle to enable it.
![checkstyle location](https://i.imgur.com/9gWqQjm.png)

## Imports

We also don't like overhaul of wildcard imports, so please turn those off
1. By changing `Class count to use import with '*'` to 999
2. By changing `Names count to use static imports with '*'` to 10 (static imports for f.e. ItemIDs with wildcards are preferred)

See screenshot below for correct values for mentioned 2 fields.

IntelliJ's default Code Style will optimize and re-order imports. To disable the re-ordering of imports, remove the section in the Import Layout list. 

Also remove the entries in `Packages to Use Import with '*'` to stop the replacement of i.e `import java.awt.Canvas` with `import java.awt.*`.

![screenshot](https://i.imgur.com/XlJzIKv.png)

## Example

The following gives an example of well formatted code:

```java
/*
 * Copyright (c) 2018, Tomas Slusny <slusnucky@gmail.com>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice, this
 *    list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
package net.runelite.client.plugins.tileindicators;

import com.google.inject.Provides;
import javax.inject.Inject;
import net.runelite.client.config.ConfigManager;
import net.runelite.client.plugins.Plugin;
import net.runelite.client.plugins.PluginDescriptor;
import net.runelite.client.ui.overlay.OverlayManager;

@PluginDescriptor(
	name = "Tile Indicators",
	description = "Highlight the tile you are currently moving to",
	tags = {"highlight", "overlay"},
	enabledByDefault = false
)
public class TileIndicatorsPlugin extends Plugin
{
	@Inject
	private OverlayManager overlayManager;

	@Inject
	private TileIndicatorsOverlay overlay;

	@Provides
	TileIndicatorsConfig provideConfig(ConfigManager configManager)
	{
		return configManager.getConfig(TileIndicatorsConfig.class);
	}

	@Override
	protected void startUp() throws Exception
	{
		overlayManager.add(overlay);
	}

	@Override
	protected void shutDown() throws Exception
	{
		overlayManager.remove(overlay);
	}
}
```