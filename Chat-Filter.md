# Chat Filter Configuration
![Client View](https://i.imgur.com/Nfo01SQ.png)

## Settings

### Filter Type
* **Censor Words:** Censors Filtered Words and matching items to Filtered Regex to become asterisks.
* **Censor Message:** Replaces message with "Hey, everyone, I tried to say something very silly!"
* **Remove Message:** Removes entire message.

### Filtered Words
List of words to be filtered, separated by commas. 

#### Example: 
* **Filtered Words:** `Blah,word`
* **Phrase Typed:** `Blah is my favorite word!`
  - **Censor Words:** `**** is my favorite ****!`
  - **Censor Message:** `Hey, everyone, I tried to say something very silly!`
  - **Remove Message:** _(Message does not appear)_

### Filtered Regex
List of words to be filtered using regex matching, separated by new lines.

#### Example: 
* **Filtered Words:** `Blah.\+`
* **Phrase Typed:** `Blah + Blah = 2Blah`
  - **Censored Words:** `****** ****** 2Blah`
  - **Censored Message:** `Hey, everyone, I tried to say something very silly!`
  - **Remove Message:** _(Message does not appear)_

##### To learn more about regex matching rules see a [regex testing website.](https://regexr.com/)

### Filtered Names
List of names to be filtered, separated by new lines.

#### Example:
* **Filtered Names:** `GAMBLE`
* **Typed:** `GAMBLE 5819: Rigged dice games! Lose your money today!`
  - **Censored Words:** `GAMBLE 5819: ******** **** ****** **** **** ***** *******`
  - **Censored Message:** `GAMBLE 5819: Hey, everyone, I tried to say something very silly!`
  - **Remove Message:** _(Message does not get posted)_

### Filter Friends
Filter your friends' messages.

### Filter Clan Chat Members
Filter your clan chat members' are filtered.

### Filter Logged In/Out Messages
Filter your private chat to remove logged in/out messages.

### Collapse Game Chat
Collapses repeated game chat messages.

**Disabled:**

![](https://i.imgur.com/5O0BVLq.png)

**Enabled:**

![](https://i.imgur.com/hF49xkN.png)

### Collapse Player Chat
Collapses repeated player chat messages.

**Disabled:**

![](https://i.imgur.com/yOAF1Ns.png)

**Enabled:**

![](https://i.imgur.com/PwxLCT9.png)

### Max repeated public chats:
Block player chat message if repeated this many times. `0` to disable.