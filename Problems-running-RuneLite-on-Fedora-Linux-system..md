## It's known that RuneLite does not run out-of-box well on any Fedora installation.
As of Fedora 18 release regular OpenJDK Java was split up into two different programs:
* Regular OpenJDK
* "headless" version of OpenJDK

Fedora defaults to the headless version of OpenJDK Java. "Headless" implementation of OpenJDK is meant for server operating systems which does not need any X Server libraries. In order to have RuneLite to work, you have to install the full version of OpenJDK

``$ sudo dnf install java-1.8.0-openjdk``

After installing full OpenJDK package you should be able to again use RuneLite on your Fedora installation.