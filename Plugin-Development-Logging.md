New plugin hub projects will default to using the same logging configuration as the standard RuneLite client.
RuneLite uses logback-classic, with a configuration to log to both the console,
as well as `%userprofile%/.runelite/logs` on Windows, or `~/.runelite/logs` on macOS and Linux.
This configuration also only logs at the INFO level.

### DEBUG Level Logging
To enable DEBUG level logging, you can use the --debug CLI flag, as described in [[Using the client developer tools]].

### Using Logging
The @Slf4j annotation provided by Lombok will automatically generate a `log` field within your class.
You should use this method of instantiating a logger in most cases.
Logging statements can then be generated with `log.info`, `log.debug`, and similar.
Keep in mind that INFO level logging will be included in normal user logs,
so try to avoid excessive logging at this level.
Information that is only relevant to a developer working on the plugin should be logged at the DEBUG level.

### Changing the default logging behaviour - Plugin Hub only
If you prefer to use an entirely different logging configuration, 
you can create your own logback-test.xml within your project's src/test/resources folder.
This file __must__ be a test resource, so that it is not included in your plugin distribution.
As an example, the following logback-test.xml file would log only to console, with the INFO level,
excluding any specified packages that would log at DEBUG level:
```xml
<configuration>
    <appender name="STDOUT" class="ch.qos.logback.core.ConsoleAppender">
        <encoder>
            <pattern>%d{HH:mm:ss.SSS} [%thread] %-5level %logger{36} - %msg%n</pattern>
        </encoder>
    </appender>

    <!-- configure debug level packages here -->
    <logger name="my.plugin.package.here" level="DEBUG" />

    <root level="DEBUG">
        <appender-ref ref="STDOUT"/>
    </root>
</configuration>
```

More information on configuring logback-classic can be found in [the logback-classic docs](https://logback.qos.ch/manual/configuration.html).