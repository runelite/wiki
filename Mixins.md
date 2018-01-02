Mixins are automatically implemented by the Injector and are used to provide high level wrappers around fields, commonly enums instead of ints.

# Mixin example

runelite.api:

```java
public interface Client {
	...
	List<NPC> getNpcs();
}
```

And add the implementation into net.runelite.mixins package:

```java
@Mixin(RSClient.class)
public abstract class RSClientMixin implements RSClient
{
	...
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
```
