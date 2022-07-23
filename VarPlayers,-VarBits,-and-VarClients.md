The var system is one of the tools that Jagex uses to store state.
VarPlayers and VarBits are set by the server, then sent to the client each tick.
VarClientInts and VarClientStrings are set by the client, and optionally persisted between
sessions. Vars can be used for many things, including changing UI state, transmogrifying game objects, and
usage in clientscripts as general purpose storage.

VarPlayers, or VarPs, are the simplest type of Var. They are 32 bit integers, set by the server,
and attached to the player's account. They are most often used in older content,
as newer content typically prefers to use VarBits. While only the server can permanently set a varbit,
the clientscripts can preemptively set a var that it expects to change, as a way of hiding latency.

VarBits are like VarPs, but they have a variable size. Each VarBit has a static size defined in the cache.
They are typically used in newer content, as they are more efficient in terms of size. They have most of the
same capabilities as VarPs, including client side prediction, as they are implemented ontop of VarPlayers.
See more in [How VarBits work internally](#how-varbits-work-internally)

VarClientInts and VarClientStrs are client side only variables, used almost exclusively by clientscripts.
They have the ability to be stored to disk, but only some do so. These are used for things like the current
chat message that is being typed, or the tooltip delay.

Finding Vars
-------
The easiest way to find a var is to use the Var inspector in DevTools. While the window is open it will log
all changes to vars. Simply open the window and do an action in game that should change the var. Keep in mind
that many things change, so always double check that your var is related to what you are doing. If nothing relevant
shows up it is possible that the var you are trying to find is not shared with the client, or is not a Var at all.
There are a number of other ways that the server communicates state with the client, such as ItemContainers, animations,
Actor state, etc.

If for some reason it is difficult to test with the var inspector, there are a few other ways of finding vars.
If the var controls a Game Object's transmogrification you can find the object ID in the cache, and it will have 
a VarBit or VarP, along with a table that maps the value of the var to the transmogrified object ID. You can also
try reading clientscripts from the cache, as they can get and set all types of var freely. This can be difficult
if you are not used to reading assembly or very knowledgeable about the game engine.

Using a Var in a plugin
-------------
If you have just found a new Var using the above methods you first need to add it to the appropriate enum:
 - [`VarClientStr`](https://github.com/runelite/runelite/blob/master/runelite-api/src/main/java/net/runelite/api/VarClientStr.java)
 - [`VarClientInt`](https://github.com/runelite/runelite/blob/master/runelite-api/src/main/java/net/runelite/api/VarClientInt.java)
 - [`Varbits`](https://github.com/runelite/runelite/blob/master/runelite-api/src/main/java/net/runelite/api/Varbits.java)
 - [`VarPlayers`](https://github.com/runelite/runelite/blob/master/runelite-api/src/main/java/net/runelite/api/VarPlayer.java)

Once the enum contains the value, you just need to call `Client.getVarcStrValue`, `Client.getVarcIntValue`, `Client.getVarbitValue` or `Client.getVarpValue` with the key you added to the enum.

How VarBits work internally
----------------
A VarBit ID (as seen in [`Varbits`](https://github.com/runelite/runelite/blob/master/runelite-api/src/main/java/net/runelite/api/Varbits.java)) is just a reference to a file in the cache which will contain an instance of this class:
```java
public class RSVarbit{
	public int index;
	public int leastSignificantBit;
	public int mostSignificantBit;
}
```
When the client wants to read a VarBit it will call this function with an instance of the above class. It reads
the VarP referenced, then shifts and masks to only return the bits between the LSB and MSB.
```java
public int getVar(RSVarbit varbit)
{
	int value = getVarp(varbit.getIndex());
	int lsb = v.getLeastSignificantBit();
	int msb = v.getMostSignificantBit();
	int mask = (1 << ((msb - lsb) + 1)) - 1;
	return (value >> lsb) & mask;
}
```
