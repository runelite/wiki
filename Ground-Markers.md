# Ground Marker Configuration

The Ground Markers plugin allows user to mark tiles around the world. Marking tiles can be done by holding the **shift key** and right clicking the tile you want to mark and then click "Mark tile" in the menu.

Removing a marked tiles follows the same principle, shift right click the tile and select the menu option again to remove the tile.

Marked tiles can also be labeled by shift right clicking the desired previously marked tile.

![Shift-Right Click marked tile](https://user-images.githubusercontent.com/10778583/107615239-17f24600-6c4c-11eb-97c8-f746d48d12d4.png)

The plugin also remembers which tiles you have marked between sessions.


![Shift-Right Click](https://i.imgur.com/cq6SOzs.png)




## Settings
---

![](https://user-images.githubusercontent.com/41499327/225361180-c559d43c-bdfe-4079-8560-5eac26be69ef.PNG)
### Border width
In pixels.
### Draw tiles on the minimap
![](https://user-images.githubusercontent.com/41499327/225464164-87c58ce7-3bdc-403c-b18c-d9f54dcdd6e1.PNG)
### Fill Opacity
Makes marked tiles darker. 0 (fully transparent) - 255 (fully opaque).
### Remember color per tile
When this is on, changing the tile color will not change the color of existing ground markers, only new ones will use the current tile color.
### Show Import/Export/Clear options
Show these menu options when right-clicking the world map orb by the minimap.
### Tile color
The color of the ground markers. Supports transparency.

## Importing / Exporting
---
Right-click the World Map orb by the minimap to import or export ground markers. Importing will check your system clipboard for a ground marker import string. Exporting will copy the ground markers in the area around you to the system clipboard.

![](https://user-images.githubusercontent.com/10778583/107614852-63f0bb00-6c4b-11eb-9ddc-c0266bdc83f1.png)

Ground marker import strings look like this: `[{"regionId":12850,"regionX":22,"regionY":19,"z":0,"color":"#FF000000"},{"regionId":12850,"regionX":21,"regionY":19,"z":0,"color":"#FFDC8700"}]`.

To export all tile markers, sign in to runelite and enable cloud sync on the profile that has the tile markers, then visit https://runelite.net/account/tile-markers and click "Export Tile markers".
