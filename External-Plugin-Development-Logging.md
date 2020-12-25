New plugin hub projects will default to using the same logging configuration as the standard RuneLite client.
RuneLite uses logback-classic, with a configuration to log to to `%userprofile%/.runelite/logs` on Windows, or `~/.runelite/logs` on macOS and Linux.
This configuration also only logs at the INFO level.

### Changing the default logging behaviour
To enable DEBUG level logging, you can use the --debug CLI flag, as described in [[Using the client developer tools]].

If you prefer to use an entirely different logging configuration, 
you can create your own logback-test.xml within your project's src/test/resources folder.
This file __must__ be a test resource, so that it is not included in your plugin distribution.
As an example, the following logback-test.xml file would log only to console, with the DEBUG level:
```xml
<configuration>
    <appender name="STDOUT" class="ch.qos.logback.core.ConsoleAppender">
        <encoder>
            <pattern>%d{HH:mm:ss.SSS} [%thread] %-5level %logger{36} - %msg%n</pattern>
        </encoder>
    </appender>
    <root level="INFO">
        <appender-ref ref="STDOUT"/>
    </root>
</configuration>
```

More information on configuring logback-classic can be found in [the logback-classic docs](http://logback.qos.ch/manual/configuration.html).