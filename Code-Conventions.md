### Coding Format

See [contributing.md](https://github.com/runelite/runelite/blob/master/CONTRIBUTING.md#format) for the latest suggested format, which at the time is:
* Tabs, not spaces.
* Brace placement is always next line.

See [Checkstyle with IntelliJ IDEA](https://github.com/runelite/runelite/wiki/Checkstyle-with-IntelliJ-IDEA) on how to set up an IntelliJ build configuration with automatic checkstyle.

# Imports

We also don't like wildcard imports, so please turn those off:

IntelliJ's default Code Style will optimize and re-order imports. To disable the re-ordering of imports, remove the section in the Import Layout list. 

Also remove the entries in _Packages to Use Import with '*'_ to stop the replacement of java.awt.Canvas with java.awt.*.

![alt](https://i.gyazo.com/a0fb2c64a5f6858a4bda117539671c99.png)


