# Why would I want to do this?

In order to work on the Runelite HTTP API and Service you're going to want to run a local copy on your machine so you can test the changes you make. Please note this guide will assume you're running Windows; the major steps should be the same no matter what platform you're on but the specifics will vary.

# Installing Software

## MySQL Server

We're going to need a copy of MySQL installed on our dev machine to run the database the HTTP Service uses. Start by [downloading the MySQL installer](https://dev.mysql.com/downloads/windows/installer/). Run the installer, agree to the license, and you should arrive at a screen like this:

![](https://i.imgur.com/MFgufkk.png)

The "Developer Default" preset includes more than we strictly need, but for the sake of simplicity we'll go with the default option. Click next, the installer may warn you if some of the subpackages require software you don't have installed. None of those should be things we need, so continue until you arrive at this screen (may look different if you downloaded the full installer instead of the smaller web installer):

![](https://i.imgur.com/yN6GfV7.png)

Click "Execute" and the installer will begin downloading and installing the subpackages we have selected. Don't worry if some packages report there was an error, just wait for the others to finish installing and then click "Try again". Once everything is installed, click next until you arrive at this screen:

![](https://i.imgur.com/FxeXnXd.png)

On this screen, we're going to choose the MySQL root password and create a user for Runelite to connect to the database with. The passwords can be whatever you like, just make sure to remember what you set them to. If you're planning to actually expose this server to the internet it's a good idea to follow the guide on [securing the initial MySQL accounts](https://dev.mysql.com/doc/refman/5.7/en/default-privileges.html) in the official documentation. Once you've created the accounts, click next until the installer is finished.

## Apache Tomcat 7

Next up is Tomcat, we'll install the Windows Service installer from the [Tomcat project site](https://tomcat.apache.org/download-70.cgi). For this installer, just click next until it's finished.

## MySQL Connector/J

The JDBC driver that the HTTP Service will use to connect to our database. Download from the [MySQL project website](https://dev.mysql.com/downloads/connector/j/). Theoretically this can be anywhere on the `CLASSPATH` environment variable but I had better luck simply putting it in `C:\Program Files\Apache Software Foundation\Tomcat 7.0\lib\` (assuming a default Tomcat install).

# Configuration

## MySQL
Most of the MySQL configuration was taken care of in the installer, but there are a couple items left. Open up MySQL Workbench, create new databases named "runelite" and "runelite-cache", and make sure that the "runelite" user we created durning the install is able to modify it. The easiest way to do this is by copying and pasting the following SQL statements into the SQL file in the center of the window and clicking the lightning bolt to execute them. Make sure you substitute the password you chose earlier during the install.

    create database runelite;
    create database `runelite-cache2`;
    create database `runelite-tracker`;
    grant all on runelite.* to 'runelite'@'localhost' identified by '<PASSWORD_GOES_HERE>';
    grant all on `runelite-cache2`.* to 'runelite'@'localhost' identified by '<PASSWORD_GOES_HERE>';
    grant all on `runelite-tracker`.* to 'runelite'@'localhost' identified by '<PASSWORD_GOES_HERE>';
    flush privileges;

![](https://i.imgur.com/vQLEiwO.png)

We're done with MySQL until it's time to verify the database connection is working.

## Tomcat
To start off, we'll be editing some configuration files located in the Tomcat installation directory. Since these files are in `C:\Program Files\` you'll need to launch your text editor with administrator permissions to modify the files, the installer defaults to `C:\Program Files\Apache Software Foundation\Tomcat 7.0\conf\`. First up is `context.xml`, copy and paste the following into the `<context><context/>` tags. Don't forget to substitute your MySQL database user password!

    <Resource name="jdbc/runelite" auth="Container" type="javax.sql.DataSource"
            maxActive="50" maxIdle="30" maxWait="10000"
            username="runelite" password="<PASSWORD_GOES_HERE>"
            driverClassName="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost:3306/runelite"
            testOnBorrow="true"
            validationQuery="/* ping */"
    />

    <Resource name="jdbc/runelite-cache2" auth="Container" type="javax.sql.DataSource"
            maxActive="50" maxIdle="30" maxWait="10000"
            username="runelite" password="<PASSWORD_GOES_HERE>"
            driverClassName="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost:3306/runelite-cache2"
            testOnBorrow="true"
            validationQuery="/* ping */"
    />

    <Resource name="jdbc/runelite-tracker" auth="Container" type="javax.sql.DataSource"
            maxActive="50" maxIdle="30" maxWait="10000"
            username="runelite" password="<PASSWORD_GOES_HERE>"
            driverClassName="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost:3306/runelite-tracker"
            testOnBorrow="true"
            validationQuery="/* ping */"
    />

    <Environment name="oauth.client-id" value="moo" type="java.lang.String"/>
    <Environment name="oauth.client-secret" value="moo" type="java.lang.String"/>
    <Environment name="minio.endpoint" value="http://10.96.22.171:9000" type="java.lang.String"/>
    <Environment name="minio.accesskey" value="AM54M27O4WZK65N6F8IP" type="java.lang.String"/>
    <Environment name="minio.secretkey" value="/PZCxzmsJzwCHYlogcymuprniGCaaLUOET2n6yMP" type="java.lang.String"/>
    <Environment name="minio.bucket" value="runelite" type="java.lang.String"/>
    <Environment name="runelite.twitter.consumerkey" value="moo" type="java.lang.String"/>
    <Environment name="runelite.twitter.secretkey" value="cow" type="java.lang.String"/>
    <Environment name="runelite.twitter.listid" value="968949795153948673" type="java.lang.String"/>

![](https://i.imgur.com/iz0Dq5V.png)

Next up is `tomcat-users.xml` in the same folder. Copy and paste the following into the `<tomcat-users><tomcat-users/>` tags:

    <user username="runelite" password="runelite" roles="manager-gui,admin-gui,manager-script"/>

![](https://i.imgur.com/4KlKpNW.png)

Next, you'll want to start/restart the Tomcat service to reload its configuration. The easiest way to do this is by right-clicking on the Tomcat icon in the Taskbar. Once the service has been restarted you can navigate to <http://localhost:8080> and you should see the Tomcat welcome page:

![](https://i.imgur.com/5evGidk.png)

Click on the link to the "Manager app" and authenticate as "runelite" with password "runelite". This is the page that will allow you to deploy the HTTP Service .war file. Click on "Browse..." and select the .war file generated by compiling the http-service module (if you haven't done that yet you'll want to do that first):

![](https://i.imgur.com/JYob0SU.png)

Click deploy and if everything works correctly you should get a message saying so! If you get an error message, more troubleshooting data can be found in the Tomcat logs located in `C:\Program Files\Apache Software Foundation\Tomcat 7.0\logs\`.

![](https://i.imgur.com/gYQBHPM.png)

You should be able to see the tables created in MySQL Workbench if you refresh the Schemas list and expand the runelite database:

![](https://i.imgur.com/1suOX57.png)

You can also test making requests to your local instance with a request like <http://localhost:8080/runelite-1.2.4-SNAPSHOT/hiscore?username=zezima> (make sure you substitute the right version number for Runelite):

![](https://i.imgur.com/ty4wqnN.png)

# Configuring Runelite to use the local API

In order to test your changes to the HTTP Service module with the Runelite client, you'll need to change the base API URL. This is (currently) found in [`net.runelite.http.api.RuneliteAPI`](../blob/0cdac95b534f6a16ea0a9d87109d5793479e4bc3/http-api/src/main/java/net/runelite/http/api/RuneliteAPI.java#L45-46). For example:

![](https://i.imgur.com/UxPaPLp.png)