# Plugin Config Panel

<!-- TOC -->
* [Plugin Config Panel](#plugin-config-panel)
  * [Creating a Basic Config](#creating-a-basic-config)
    * [Creating the Config Class](#creating-the-config-class)
    * [Adding a Config Item](#adding-a-config-item)
    * [Writing to a Config Item](#writing-to-a-config-item)
    * [Hiding a Config Item](#hiding-a-config-item)
    * [Censoring a Config Item](#censoring-a-config-item)
    * [Creating Config Sections](#creating-config-sections)
    * [Ordering Sections and Config Items](#ordering-sections-and-config-items)
    * [Putting It All Together](#putting-it-all-together)
  * [Accessing the Config](#accessing-the-config)
  * [Config Option Data Types](#config-option-data-types)
<!-- TOC -->

## Creating a Basic Config

### Creating the Config Class
Creating a basic config file begins with creating an interface that extends the Config interface. The name of this file is the same name as the name of your plugin with Config added at the end, such as `ExampleConfig`. This class should have the `@ConfigGroup` annotation and a unique string key of where to store your config values.

```java
@ConfigGroup("example")
public interface ExampleConfig extends Config
{
    
}
```

### Adding a Config Item

Config options are expressed by using `@ConfigItem` annotations within the config class. These config items allow for a wide variety of data types, and can provide a default value. This default value is used upon first install and when the reset button is clicked.

In this example, a method with `boolean` return type will create a checkbox in its associated config panel. A more detailed list of all the allowable data types can be found in the [config option data types](#config-option-data-types) section.

```java
@ConfigItem(keyName = "uniqueKey", name = "Display text", description = "Hover text")
default boolean myCheckbox()
{
    return true;
}
```

### Writing to a Config Item

Config items also allow you to write values into them. This can be done by creating an abstract setter, along with giving it a `@ConfigItem` annotation with the same keyName as the corresponding getter.

In this example, we will build on the example used earlier and add a setter method.

```java
@ConfigItem(keyName = "uniqueKey", name = "", description = "")
void myCheckbox(boolean myCheckbox);
```

### Hiding a Config Item

Not every config option is one that you want to expose to the plugin user. An example of this is when you want to keep track of some state in your plugin and dynamically update it from within the plugin itself. This would typically be done by adding `hidden = true` to the `@ConfigItem` annotation on the getter, along with implementing the corresponding setter.

### Censoring a Config Item

Sometimes a config item may be confidential, such as having an API token config field (see the Twitch plugin.) In cases like these, you can opt to make your String config item censored like a password field to prevent shoulder surfing. This can be expressed by adding `secret = true` to the `@ConfigItem` annotation.

### Creating Config Sections

When your plugin has a lot of config items, it may be worthwhile to group related settings under sections. You can utilize the `@ConfigSection` annotation to implement this.

```java
@ConfigSection(
    name = "Example Section", 
    description = "Here is an example section"
)
String exampleSection = "exampleSection";
```

With this section created, add `section = exampleSection` to the ConfigItem annotation of the config item you want under this section

### Ordering Sections and Config Items

Sometimes you may want to display sections or config items in a very specific way. You can set the priority of a section or item by using `position = 10` for example. Be aware that this is not explicitly setting its index, but rather assigning it a priority level. This means that two config items in the same section with positions 1 and 2 may not necessarily be the 1st and second item if there are other config items with a lower number/higher priority.

### Putting It All Together

With everything put together, this basic example plugin should look like this:
```java
@ConfigGroup("example")
public interface ExampleConfig extends Config
{
    // Section with highest priority
    @ConfigSection(
        name = "Example Section",
        description = "Here is an example section.",
        position = -1 // highest priority
    )
    String exampleSection = "exampleSection";

    // Config Item in section with highest priority
    @ConfigItem(
        keyName = "uniqueKey",
        name = "Display text",
        description = "Hover text",
        section = exampleSection,
        position = -1
    )
    default boolean myCheckbox()
    {
        return true;
    }
	
    // Secret config item
    @ConfigItem(
        keyName = "secretToken",
        name = "API Token",
        description = "My secret API token",
        secret = true
    )
    default String secretToken()
    {
        return "";
    }
	
    // Hidden config item 
    @ConfigItem(
        keyName = "hiddenState",
        name = "",
        description = "",
        hidden = true
    )
    default String hiddenState()
    {
        return "";
    }
	
    // Setter for hidden config item
    @ConfigItem(
        keyName = "hiddenState",
        name = "",
        description = ""
    )
    void hiddenState(String hiddenState);
}
```

## Accessing the Config

To get your config to be accessible from the RuneLite settings panel, you will need to flag a getter in your main plugin class with `@Provides`:

```java
public class MyCoolPlugin extends Plugin
{
	@Inject
	private MyCoolConfig config;

	@Provides
	MyCoolConfig getConfig(ConfigManager configManager)
	{
		return configManager.getConfig(MyCoolConfig.class);
	}
}
```

Now you can `@Inject YourConfigClass config` elsewhere and call `config.myCheckbox()` to obtain its current value. RuneLite stores the config settings automatically.

## Config Option Data Types

 Several input widgets are supported for specific types. There are a range of different types and each type serves a distinct purpose. Refer to the table below to see what visual component a given data type is rendered as.

|      Data Type      |        UI Component        |                                                    Purpose                                                    |
|:-------------------:|:--------------------------:|:-------------------------------------------------------------------------------------------------------------:|
|         Int         |          JSpinner          |        Accepts integer config values. Supports use of @Range to constrain input between a min and max.        |
|       Double        |          JSpinner          |                                     Accepts decimal number config values.                                     |
|      Dimension      |        2x JSpinners        |                            Two side-by-side JSpinners, usually for width x height.                            |
|       Boolean       |          Checkbox          |                                 Allows toggling of config options on or off.                                  |
|       String        |          Textbox           |                    Allows free-form text input, useful for things like usernames or notes.                    |
|        Color        |        Color picker        | Allow configuration of overlays with a color picker. Supports use of @Alpha to provide opacity customization. |
|        Enum         |          ComboBox          |                    Allow single selection from a list of predefined options in a dropdown.                    |
| ModifierlessKeybind |          JButton           |                                      Allow selecting single-key hotkeys.                                      |
|       Keybind       |          JButton           |      Allow selecting keybinds that make use of modifier keys such as Ctrl, Alt, Shift + some other key.       |
|    Notification     | Checkbox + Cog Icon Button |                   Allow granular Notification config options specific to this notification.                   |
|    Set<SomeEnum>    |           JList            |                Allows multi-selection from a list of pre-configured options, shown in a list.                 |

<img width="235" height="443" alt="image" src="https://github.com/user-attachments/assets/a214133b-cba1-4563-890f-c698d4c6b727" />

<details>
<summary>Code Examples</summary>

```java
/**
 * Boolean example
 * @return
 */
@ConfigItem(
    keyName = "boolean",
    name = "Boolean",
    description = ""
)
default boolean basicBoolean() {
    return true;
}

/**
 * Int example
 * @return
 */
@ConfigItem(
    keyName = "basicInt",
    name = "Basic Int",
    description = ""
)
@Range(min = 1, max = 10) // optional range
default int basicInt() {
    return 1;
}

/**
 * Double example
 * @return
 */
@ConfigItem(
    keyName = "basicDouble",
    name = "Basic Double",
    description = ""
)
default double basicDouble() {
    return 0.5d;
}

/**
 * String example
 * @return
 */
@ConfigItem(
    keyName = "basicString",
    name = "Basic String",
    description = ""
)
default String basicString() {
    return "Some default";
}

/**
 * Color picker example, with optional alpha annotation
 * @return
 */
@ConfigItem(
    keyName = "basicColor",
    name = "color",
    description = ""
)
@Alpha // Optional alpha
default Color basicColor() {
    return Color.BLACK;
}

/**
 * Dimension example
 * @return
 */
@ConfigItem(
    keyName = "basicDimension",
    name = "Basic Dimension",
    description = ""
)
default Dimension basicDimension() {
    return new Dimension();
}

/**
 * Enum examples
 */
enum BASIC_ENUM {
    ENUM_ONE,
    ENUM_TWO,
    ENUM_THREE
}

/**
 * Dropdown
 * @return
 */
@ConfigItem(
    keyName = "basicEnum",
    name = "Basic Enum",
    description = ""
)
default BASIC_ENUM basicEnum() {
    return BASIC_ENUM.ENUM_ONE;
}

/**
 * Multi-select list
 * @return
 */
@ConfigItem(
	keyName = "parameterizedType",
	name = "ParameterizedType",
	description = ""
)
default Set<BASIC_ENUM> parameterizedType()
{
	return Collections.emptySet();
}

/**
 * Basic Keybind example
 * @return
 */
@ConfigItem(
    keyName = "basicKeybind",
    name = "Basic Keybind",
    description = ""
)
default ModifierlessKeybind basicKeybind() {
    return new ModifierlessKeybind(KeyEvent.VK_B, 0);
}

/**
 * Keybind with modifier example
 * @return
 */
@ConfigItem(
    keyName = "modifierKeybind",
    name = "Modifier Keybind",
    description = ""
)
default Keybind modifierKeybind() {
    return new Keybind(KeyEvent.VK_M, InputEvent.CTRL_DOWN_MASK);
}

/**
 * Notification example
 * @return
 */
@ConfigItem(
    keyName = "notification",
    name = "Notification",
    description = ""
)
default Notification notification() {
    return Notification.ON;
}
```
</details>


<sup><sub>Somebody write this page properly!</sub><sup>
