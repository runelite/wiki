# Importing and Exporting Fields and Methods

Field and method mappings are stored as annotations on the runescape-client project, which is a deobfuscated and decompiled version of the RuneScape client.

For example, the field isMembers:

```java
@Implements("Client")
@ObfuscatedName("client")
public final class Client extends GameEngine {
	...
	@ObfuscatedName("v")
	@Export("isMembers")
	static boolean isMembers;
	...
}
```

We can see the orginal "obfuscated name" of the field: client.v, and the deobfuscated name, which is exported as isMembers.

In order to have a method to get the value of this field injected into our client, we need to add an import on the respective interface in runescape-api, such as:

```java
public interface RSClient extends RSGameEngine, Client {
	...
	@Import("isMembers")
	boolean isMembers();
	...
}
```

This pair of Import and Export is what causes the injector to inject a method into class client to get the value of isMembers.

Then, to expose it to runelite-api, so that runelite-client can see it, add the method to its interface Client too. Generally, runelite-api is a subset of runescape-api, with the majority of its methods implemented automatically by the injector. However, it is also mixed with the runelite-mixins which can provide some higher level wrappers around things (commonly enums instead of ints). runescape-api is meant to be 1:1 with the deobfuscated client.

The injector is run when the project named Injector is built. It takes the vanilla gamepack, the annotations on runecsape-client and runescape-api, and injects methods and hooks as appropriate.
It then produces the injected jar, which is an artifact of the build. This artifact is what runelite-client has a dependency on, which is the client that it loads on startup.

runelite-client does not download the gamepack from the RuneScape servers, or inject it at runtime.

# How the update pipeline works

All builds are run on [Travis CI](https://travis-ci.org/). This includes the CI/CD for every commit, as well as the upgrade pipeline to perform releases when a new RuneScape version is released.
The [updater project](https://github.com/runelite/updater) performs the updates on Travis, which is a fairly simple bash script that mostly invokes various entrypoints in the RuneLite deobfuscator.

First, the updater takes the vanilla jar and runs the deobfuscator on it. This produces the deobfuscated jar, which has most of the obfuscation removed, and can be easily de-compiled, re-compiled, and runs correctly.

Next, the updater takes the old runescape-client, with its annotations, and passes it and the deobfuscated jar to the mapper. The mapper maps the common fields and methods between the two jars and copies the annotations to the correct methods/fields/classes in the new jar, and renames them according to the exported name. This produces the mapped jar.

Then, the updater runs [FernFlower](https://github.com/runelite/fernflower) on the mapped jar to decompile it, and commits the new code to the runescape-client project in the RuneLite repository.

Finally the updater performs a release using the maven release plugin, which builds the resulting project and deploys it to the artifactory. This includes the injected client, due to building of the Injector. Now the client is updated.
