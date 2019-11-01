---
title: "Use Alexa App on Device Farm (optional)"
date: 2019-09-26T13:29:22+08:00
draft: false
chapter: false
weight: 14
---

If you can not download or use the Alexa App due to network or region, you can use [AWS Device Farm](https://aws.amazon.com/device-farm/) to start a real, physical phone hosted by AWS, onto which you can install and use the Alexa App. You can interact with this device by using a remote access session.  

{{% notice info %}}
In this section we will show you how to add Google account and install Alexa App on a remote Android device using AWS Device Farm. You can also start an IOS device, but you can not use Apple Store to install Apps or add your Apple ID to this device due to security reasons. You can only use the upload option to upload and install your apps. So we can not install Alexa app on IOS devices.
{{% /notice %}}

{{% notice info %}}
AWS Device Farm comes with a one-time free trial of 1000 device minutes. After that you are charged $0.17 per device minute. For more information about pricing, see [AWS Device Farm Pricing](https://aws.amazon.com/device-farm/pricing/). 
{{% /notice %}}

## Start Device Farm
1. Go to [AWS Device Farm](https://us-west-2.console.aws.amazon.com/devicefarm/home?region=us-east-1#/projects).

1. Enter project name `alexaworkshop`, select **Create project**.

1. After the creation you will access to the project's console, on the **Remote access** tab, select **Create project**.
    ![deviceFarmConsole](/images/getting-started/device-farm-console.png)

1. Under **Choose a device**, you can choose any Android device whose status is **AVAILABLE**, here we choose `Google Pixel 2`. After the creation of session, you will see the Device requested dialog box, then you can interact with this device.

    {{% notice info %}}
The duration of a remote access session is 150 minutes, after that the session will be closed and can not be used again.
If you close the browser or browser tab without stopping the session or if the connection between the browser and the internet is lost, the session remains active for five minutes. After that, Device Farm ends the session. 
    {{% /notice %}}

    ![deviceFarmSession](/images/getting-started/device-farm-create-session.png)

1. At this time, you can not see the Alexa App in Google Play. You need to add a Google account so that you can see all the apps in Google Play. To add a Google account, you need to go to the phone's **Settings - Accounts**. After the addition, go to Google Play and switch to your account, and then you can search and download Alexa App. 
    ![deviceFarmAddAccount](/images/getting-started/device-farm-add-account.png)

