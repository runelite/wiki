# Chat Filter Configuration
![Client View](https://user-images.githubusercontent.com/14265490/58444243-4a998b00-80c5-11e9-99e9-8fb415c778c8.PNG)

## Settings

### 1. Filter Type
* Censor Words (Default) - Censors Filtered Words and matching items to Filtered Regex to become asterisks
* Censor Message - Replaces message with 'Hey, everyone, I tried to say something very silly!'
* Remove Message - Removes entire message

### 2. Filtered Words
List of words to be filtered, separated by commas. 

#### Example: 
* Filtered Words: Blah,word
* Phrase Typed: Blah is my favorite word!
  - Censor Words: **** is my favorite ****!
  - Censor Message: Hey, everyone, I tried to say something very silly!
  - Remove Message: (Message does not get posted)

### 3. Filtered Regex
List of words to be filtered using regex matching, separated by new lines.

### Example: 
* Filtered Words: Blah.\+
* Phrase Typed: Blah + Blah = 2Blah
  - Censored Words: ****** ****** 2Blah
  - Censored Message: Hey, everyone, I tried to say something very silly!
  - Remove Message: (Message does not get posted)

To learn more about regex matching rules see a [regex testing website.](https://regexr.com/)