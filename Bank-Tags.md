# Bank Tags Configuration

Enables tagging of bank items and searching of bank tags

## Settings

### Use Tag Tabs

Enable the ability to add tabs to your bank which allow fast access to tags.

---

### Setting Tags

When right-clicking items within the bank, an `Edit-tags` menu option is added, showing the number of associated tags (if any).

![The right-click options menu of a banked item, showing the added "Edit-tags" entry](img/bank-tags/bank_tags_setting_tags.png)

Upon selecting the `Edit-tags` option, the tags will be displayed in a text input in the chat box. Tags are stored as a comma-separated string (e.g., "tag1,tag2" will set the two tags, _`tag1`_ and _`tag2`_).

![The tags editing chatbox displayed after selecting the "Edit-tags" menu option](img/bank-tags/bank_tags_editing_tags.png)

You can tag and un-tag all variations of an item (e.g., all dosages of a particular type of potion, all charges of an Amulet of Glory, all degraded states of a piece of Barrows equipment or crystal equipment, etc.). To do so, drag the item onto a tag tab while holding `Shift` or add `*` to the end of the tag. 

![Tagging and un-tagging variations of items](img/bank-tags/bank_tags_unsetting_tags.gif)

### Searching Tags

When using the bank search feature, tags are automatically included in the search term. To search exclusively for bank tagged items, prefix the search term with `tag:`

![A bank search for the term "rune", displaying the player's runes, runite ore which is tagged "rune", and some rune equipment](img/bank-tags/bank_tags_reg_search.png) ![A bank search for the term "tag:rune", displaying only items tagged "rune"--the player's runes, and a runite ore which is tagged "rune"](img/bank-tags/bank_tags_tag_search.png)

## Using tag tabs

![bank tag tabs intro](img/bank-tags/bank_tags_creating_tag_tab.gif)

Tag tabs are a new tagging experience that allows for quick access to individual tags, organization similar to existing bank tabs, and easy tagging and un-tagging of individual items.

### Tag Tab Features

* Tag items by dragging them into a tag tab:

  ![bank tag tabs: tagging items by dragging](img/bank-tags/bank_tags_tagging_tag_tab.gif)

* Un-tag items with the added right-click menu option while viewing a tab.

  ![bank tag tabs: un-tagging items](img/bank-tags/bank_tags_untagging_tag_tab.gif)

* Scroll through tabs with the up and down buttons, by dragging tag tab icons above the up and down buttons, or by using the mouse scroll wheel (position is maintained between bank sessions).

  ![bank tag tabs: scrolling](img/bank-tags/bank_tags_scrolling_tag_tab.gif)

* Change tab icons via the right-click menu on tabs and typing in an item's name.

* Delete tag tabs (and optionally un-tag all items tagged with the tab's tag) via the right-click menu option and an option input.

  ![bank tag tabs: deleting tabs](img/bank-tags/bank_tags_deleting_tag_tab.gif)

* The tag tabs display will resize itself according to both your screen size (if using resizable mode) and whether the bank incinerator is open (this also reduces the size of the incinerator to allow as much space for tabs as possible).

  ![bank tag tabs: resizing around incinerator](img/bank-tags/bank_tags_tag_tab_incinerator_resizing.gif)  

  ![bank tag tabs: using space in a tall bank](img/bank-tags/bank_tags_tag_tab_height_resizing.png)
