# NOTE: The Mixins are public, but the injector is not, and so it is not possible to build a client with modified mixins at this time.

Mixins tell the application that modifies the game's code, the injector, to add, edit and proxy methods and fields according to what the mixins say.

They are often used to wrap the game's classes into more useful classes. For example, the game uses arrays for containing the NPCs, and `getNpcs()` in RSClientMixin provides a way to get the NPCs in a more user friendly way.

Mixins are located in the `net.runelite.mixins` package in the runelite-mixins module.

## Method injection
```java
package net.runelite.mixins;

@Mixin(RSClient.class)
public abstract class RSClientMixin implements RSClient
{
	@Inject
	@Override
	public List<NPC> getNpcs()
	{
		int validNpcIndexes = getNpcIndexesCount();
		int[] npcIndexes = getNpcIndices();
		NPC[] cachedNpcs = getCachedNPCs();
		List<NPC> npcs = new ArrayList<NPC>(validNpcIndexes);

		for (int i = 0; i < validNpcIndexes; ++i)
		{
			npcs.add(cachedNpcs[npcIndexes[i]]);
		}

		return npcs;
	}
}
```

The game's `Client` class will implement this class, that has access to methods in the game's code:

```java
package net.runelite.rs.api;

public interface RSClient extends Client 
{
	@Import("npcIndexesCount")
	int getNpcIndexesCount();

	@Import("npcIndices")
	int[] getNpcIndices();

	@Import("cachedNPCs")
	RSNPC[] getCachedNPCs();
}
```

The plugins will be able to access this high level class - this Client is separate from the Game's Client:

```java
package net.runelite.api;

public interface Client 
{
	List<NPC> getNpcs();
}
```

## Method replacing

If you would like to "proxy" a method, by for example returning execution when a parameter is a certain value, you'll want to make use of method replacing.

If we want to invoke the original method in the new code, we'll have to `@Copy` it too. 

`rl$` is prepended to replaced method names as a convention.

```java
@Mixin(RSClient.class)
public abstract class RSClientMixin implements RSClient
{
	@Copy("getItemDefinition")
	abstract RSItemComposition getItemDefinition(int itemId);

	@Replace("getItemDefinition")
	public RSItemComposition rl$getItemDefinition(int itemId)
	{
		if (itemId != 500)
		{
			getItemDefinition(itemId);
		}
	}
}
```

## Field injection

```java
@Mixin(RSClient.class)
public abstract class RSClientMixin implements RSClient
{
	@Inject
	public static int foo;

    @Inject
	@Override
	public Actor bar()
	{
        // this injected method "bar()" has access to the injected field "foo"
		foo = 1; 
		System.out.println(foo);
    }
}
```

Static fields always have their default value injected. Non-static fields will only have their default values
injected if there is a constructor annotated with `@Inject`

## Field shadowing

If you would like to use fields injected by other mixins, you can use shadowing.

```java
@Mixin(RSClient.class)
public abstract class RSClientMixin implements RSClient
{
	@Inject
	public static int foo;
}
```

```java
@Mixin(RSActor.class)
public abstract class RSActorMixin implements RSActor
{
	@Shadow("foo")
	public static int foo; // this field is equal to the "foo" injected by RSClientMixin
}
```

## How they work

The injector makes it so the game's classes implement the classes in ` net.runelite.rs.api`. For example there is a game class called `Client`, which has this signature before the injector has done it's job:
```java
public final class Client extends GameEngine
``` 
After injection, the signature is:
```java
public final class Client extends GameEngine implements RSClient
``` 

So if we have a mixin annotated with `@Mixin(RSClient.class)`, the mixin operations in the mixin class will be done on  `Client`.

More specifically, for method injection, the injector will add the the mixin's `public List<NPC> getNpcs()` implementation to the game's `Client` class so that we have an implementation that we can call.