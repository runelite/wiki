# Generating a plugin shell using the RuneLite Plugin Archetype

RuneLite uses Apache Maven as its build system, and provides a Maven Archetype for generating new plugin projects and its example code.

First, enable plugins in the client under Configuration -> RuneLite -> Enable loading of external plugins.

Then, to generate a new plugin using Netbeans:

* Hit File, New Project
* Select Maven, Project from Archetype
* Enter:
  * Group ID: net.runelite
  * Artifact ID: runelite-plugin-archetype
  * Version: *insert version of RuneLite you are using here. eg, 1.2.8*
  * Repository: http://repo.runelite.net
* Hit next
* Enter details as appropriate
* Hit finish

Or, to generate a new plugin using the command line:

```
$ mvn org.apache.maven.plugins:maven-archetype-plugin:2.4:generate -DarchetypeGroupId=net.runelite -DarchetypeArtifactId=runelite-plugin-archetype -DarchetypeVersion=$VERSION -DarchetypeRepository=http://repo.runelite.net
```

Replacing $VERSION with the version of RuneLite you have (eg. 1.2.8).

The generated plugin shell has some example usage of the Runelite API and can be compiled and installed into the client. When built, the plugin installs itself into ${user.home}/.runelite/plugins, at which point RuneLite installs it. When the plugin is modified and rebuilt, it will be automatically reloaded by RuneLite.

There is online Javadoc available for [runelite-api](http://static.runelite.net/api/runelite-api/) and [runelite-client](http://static.runelite.net/api/runelite-client/). Additionally, source and javadoc jars are deloyed to repo.runelite.net for releases by Travis CI, so your IDE will probably be capable of pulling them down.

Any changes that need to be made to runelite-api or runelite-client need to be pull requested following the procedure in the [contributing guide](https://github.com/runelite/runelite/blob/master/CONTRIBUTING.md).
Additionally, it is encouraged to contribute back plugins to the [core plugins](https://github.com/runelite/runelite/tree/master/runelite-client/src/main/java/net/runelite/client/plugins).
