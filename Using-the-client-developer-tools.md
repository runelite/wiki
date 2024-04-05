###  Turning the developer tools on

To turn the developer tools on, we need to supply the program argument `--developer-mode` and the VM arguments `-ea`.

It is also recommended to add `--debug` to your program arguments to get extra logging output.

To do this in IntelliJ, you'll need to edit your run configuration:

![](img/using-the-dev-tools/intellij_edit_configurations.png)

You'll also need to click `Add VM options` to be given the the VM arguments box, to input `-ea`.

![](img/using-the-dev-tools/add_vm_options.png)

Specify the settings as follows:

![](img/using-the-dev-tools/configuration_settings.png)
