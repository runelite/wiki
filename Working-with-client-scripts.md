Client scripts are used by Jagex for building interfaces and also to handle input to interfaces. RuneLite uses these scripts to manipulate interfaces or to react to certain changes in interfaces. To facilitate this, RuneLite has tools to disassemble the scripts from the game's cache into an assembly-like language called `rs2asm`. When a script needs to be modified, the modified version is added to `runelite-client/src/main/scripts`, which is then used to overlay the cache and replace the script when the game attempts to run it. 

### rs2asm

`rs2asm` consists of a header and the body of the script, which consists of instructions and labels. 

The control flow instructions used in `rs2asm` are, for the most part, very similar to instructions used in the JVM bytecode. The client's script VM maintains two stacks (strings and integers), and the control flow instructions deal with pushing integers, strings, and local variables onto the stacks, pulling them off the stacks, and then conditional jumps that operate on variables on the stacks. Besides the control flow instructions, there are many game specific instructions that perform various operations in the engine and possibly return values for use in the script.

### Adding new scripts

Adding new scripts consists of adding the `rs2asm` and a hash of the unmodified script to `runelite-client/src/main/scripts`. The hash of the original script is used to prevent replacing the script if the original script has changed since the modified script was added. 

The `rs2asm` files can be obtained by running `DisassemblerTest` in the `cache` module, but this requires replacing the osrs cache with a current version, and also manually generating a hash file. A much simpler way to obtain them is to use Abextm's [cache dump repository](https://github.com/Abextm/osrs-cache/releases). This contains a dump of the entire osrs cache, but also all disassembled scripts and their respective hash files. 

Any changes to scripts require rebuilding with maven, as the scripts need to be reassembled with the changes. 

### runelite_callback

Besides editing the instructions of scripts, RuneLite can also interact with them by inserting a callback which calls back to Java with an event name. `runelite_callback` uses the last string placed onto the string stack as the event name.

An example of its use:

```
sconst               "eventName"
runelite_callback
```

In Java, this will post a `ScriptCallbackEvent` to the event bus, which can then be registered to in plugins. The stacks can be viewed and manipulated in Java with `client.getStringStack()`, `client.getIntStack()`, `client.getStringStackSize()`, and `client.getIntStackSize()`.

`runelite_callback` also provides a way to debug the stacks -

```
iconst               3
iconst               2
iconst               1
sconst               "string"
sconst               "%i, %s, %i, %i"
sconst               "debug"
runelite_callback
```

This would output `1, string, 2, 3` as a debug log. 

### RuneStar

As you may have gathered by now, `rs2asm` is not the most pleasant thing to read through. Another project, RuneStar, has created a decompiler for client scripts that can decompile them into a format similar to how they're written at Jagex. A repository is kept updated with all current decompiled scripts [here](https://github.com/RuneStar/cs2-scripts).