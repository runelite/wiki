### Coding Format

See [contributing.md](https://github.com/runelite/runelite/blob/master/CONTRIBUTING.md#format) for the latest suggested format, which at the time is:
* Tabs, not spaces.
* Brace placement is always next line.

See [Checkstyle with IntelliJ IDEA](https://github.com/runelite/runelite/wiki/Checkstyle-with-IntelliJ-IDEA) on how to set up an IntelliJ build configuration with automatic checkstyle.

# Imports

We also don't like wildcard imports, so please turn those off
1. By changing `Class count to use import with '*'` to 999
2. By changing `Names count to use static imports with ''*'` to 999

See screenshot below for correct values for mentioned 2 fields.

IntelliJ's default Code Style will optimize and re-order imports. To disable the re-ordering of imports, remove the section in the Import Layout list. 

Also remove the entries in `Packages to Use Import with '*'` to stop the replacement of f.e `import java.awt.Canvas` with `import java.awt.*`.

![screenshot](https://i.imgur.com/XlJzIKv.png)


