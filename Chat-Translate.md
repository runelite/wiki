# Overview
1. Setting up Google Account
2. Enabling FREE translate quota
3. Getting a JSON project file
4. Enabling Translation API
5. Configuring the plugin
6. Warnings

## Setting up Google Account
If you have a Google account you can go to the next step.
1. Go to [Google Cloud Console](https://console.cloud.google.com)
2. Click "**Create Account**"
3. Supply your **valid** information 
4. **Agree** to the "Privacy and Terms"

## Enabling FREE translate quota
1. **Wait** for redirection to [Google Cloud Console](https://console.cloud.google.com/getting-started?pli=1)
2. **Agree** to Google Cloud Platform Terms of Service
3. Start free trial by clicking "[Try for Free](https://console.cloud.google.com/freetrial)"
4. **Agree** to Google Cloud Platform Free Trial Terms of Service
> * $300 credits for free (Over 12 months)
> * No autocharge after trial ends
5. Enter in _your billing information_ and press "**Start My Free Trial**"

## Getting a JSON keyfile
1. Go to create [credentials](https://console.cloud.google.com/apis/credentials/serviceaccountkey)
2. Click **Create**
3. **Type** a project name
2. From the **Service account** drop-down list, select **New service** account.
3. Enter a name into the **Service account name** field.
4. From the **Role** drop-down list, select **Project** > **Owner**.
5. Click **Create**. A JSON file that contains your key downloads to your computer.

## Enabling Translation API
1. **Enable** [Cloud Translation API](https://console.cloud.google.com/apis/library/translate.googleapis.com)

## Configuring the plugin
1. Add path to your downloaded JSON file from **Step 5** of "Getting a JSON keyfile" to `Google JSON Keyfile path`

`C:\Users\**yourname**\Downloads\**filename**.json`

![Google JSON Keyfile path plugin input](https://i.imgur.com/LoGPvoc.png)

2. Disable plugin
3. Enable plugin

### Plugin Options
`Translate To Language` - The language you want to read.

`Translate From Language` - The language you do not understand.

`Translate From Users` - White-list; Applies only to Private Messages.

`Translate Private Chat` - Messages from people in white-list will be translated.

`Translate Clan Chat` - All clan chat messages will be translated.

`Translate Examine messages` - All in-game examines will be translated.

`Translate Game messages` - All messages from the server or by interaction will be translated.

`Translate Public Chat` - All public chat messages will be translated.

## Warnings
At current [quota prices](https://cloud.google.com/translate/pricing?csw=1), $300 is 15 million **characters** or 41k per day over a year.

Enabling public chat translation can KILL your quota.
