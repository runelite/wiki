Config options are expressed by using `@ConfigItem` annotations within a subclass of `Config`.

In this example, a method with `boolean` return type will create a checkbox in its associated config panel, which will be checked by default:

```
@ConfigItem(keyName = "uniqueKey", name = "Display text", description = "Hover text")
default boolean myCheckbox()
{
    return true;
}
```
Now you can `@Inject YourConfigClass config` elsewhere and call `config.myCheckbox()` to obtain its current value. RuneLite stores the config settings automatically. Several input widgets are supported for specific types:

![image](https://user-images.githubusercontent.com/37604308/38452524-20cd7d50-3a89-11e8-99dd-2bb3f1d868a2.png)

<sup><sub>Somebody write this page properly!</sub><sup>