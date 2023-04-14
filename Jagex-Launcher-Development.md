### Jagex Launcher Development

This applies if you have converted your account to a Jagex Account and can no longer log in without the Jagex Launcher. This will not work if you are using a regular account through the Jagex Launcher. Those use different environment variables, and are only usable for one log-in.

Run the following python script to get the appropriate environment variables. If the script prints nothing, log in and back out of the Jagex Launcher, or launch RuneLite from the Jagex Launcher, and re-run the script.
```python
import psutil
import sys

key1 = 'JX_CHARACTER_ID'
key2 = 'JX_SESSION_ID'
key3 = 'JX_DISPLAY_NAME'
dict = {};
for proc in psutil.process_iter():
  if "JagexLauncher.exe" in proc.name():
    env = proc.environ()
    if env.get(key1):
      dict[key1] = env.get(key1)
      dict[key2] = env.get(key2)
      dict[key3] = env.get(key3)
if (key1 in dict and key2 in dict and key3 in dict):
  s = ''
  for key in dict:
    s += key + "=" + dict[key] + ";";
  print(s)
else:
  print("could not find the environment variables. Make sure the jagex launcher is open; if it is try launching runelite from it once and re-run this script.")
```

Then, add these as environment variables in your IntelliJ run configuration. Remember to click "Modify options" if you don't see the "Environment variables" field.

```
JX_CHARACTER_ID=theid;JX_DISPLAY_NAME=thename;JX_SESSION_ID=theid
```

You shouldn't have to set new `JX_` values on every client launch. But it is possible that they will change eventually, and you will have to re-do this process.
