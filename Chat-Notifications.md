The Chat Notifications plugin can highlight and send notifications upon certain text appearing in chat messages, even from non-player chat messages.

![chat notifications example 1](img/chat-notifications/chat_notifications_example_1.png)
![chat notifications example 2](img/chat-notifications/chat_notifications_example_2.png)

## Settings

### Highlight own name

Highlights any instance of your username in chat

### Highlight words

Highlights a custom set of words. Entries in this field should be separated by commas. (`, `)

### Highlight regex

List of expressions to be highlighted using regex matching, separated by new lines. Matching is case-insensitive; enter the expression directly, without `/.../` delimiters or flags.

#### Example:
* **Highlight regex:** `(?:faded away|crumbles to dust)`
* **Message received:** `Your dodgy necklace crumbles to dust.`
  - `crumbles to dust` is highlighted

##### To learn more about regex matching rules see a [regex testing website.](https://regexr.com/)

### Notify on own name

Notifies you whenever your name is mentioned

### Notify on highlight

Notifies you whenever a highlighted word is matched

### Notify on trade

Notifies you whenever you are traded

### Notify on duel

Notifies you whenever you are challenged to a duel

### Notify on broadcast

Notifies you whenever you receive a broadcast message (e.g., Game update message, OSRS Twitch livestream, Last Man Standing chest location).
