---
title: "1. Companion App"
date: 2019-09-05T23:06:51+08:00
draft: false
chapter: false
weight: 31
---

{{% notice note %}}
Ensure you are using the **N.Virginia region (us-east-1)**.
{{% /notice %}}



In order to be able to control his/her own devices, a user has to claim the device to its account on your platform.
This is accomplished by using a companion app, and can be, in its most minimal form, be comprised of an API that allows the user to provide some identification information of the device he just purchased, and persist this information in a DB. For this task we will use AppSync, which is a GraphQL backend and DynamoDB. Moreover, we need a way to create the user accounts and subsequetly authenticated them, for which [Amazon Cognito User Pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html) provides an out-of-the-box managed solution.
We will use [AWS Amplify](https://aws-amplify.github.io/) toolchain to build this application and deploy it.
The architeture is as follow:

## Architecture
![](/images/smart-home/arch.jpg)

## Overview
The process is depicted in the seqeunce diagram below, after which the device will be associated to the user account. We are also providing a feature to "Unclaim" the device, in case we were to sell it to another user. The "Unclaim" process deletes the record from the DB.


### Associate a device to a user
In order to claim the device the userwill invoke the API and create an record in DynamoDB.

For a physical device, a serial number is usually being used to uniquely identify a device.
In this lab the serial number is used as query parameter to the URL of the companion app and for ease-of-use from mobile devices, 
it has been encoded into a QR code. Customers simply need to scan the QR code to bind the devices. In the real word, the QR Code could be printed on the device.

The following flow chart describes a proposed design of how to bind physical device to users.
![](/images/smart-home/device-bind-flow.png)

1. Customer scan the QR code with their mobile phone
1. A web page being rendered on the phone    
1. Redirect to the login page (skip to step 6 if authenticated)    
1. Submit login information and get **accessToken** and **idToken**    
1. Get user profile using **accessToken**    
1. Invoke device binding API
1. Create device and user relationship in database    

The integration between AWS AppSync and Amazon DynamoDB is taken care by AWS Amplify. 

For the curious, have a look in the [AppSync console](https://console.aws.amazon.com/appsync) at the `AlexaBackend-..` API, and in particular in the Schema and the **Mutation** and **Query** resolvers. These are written in [VTL (Velocity Templates)](https://docs.aws.amazon.com/appsync/latest/devguide/resolver-mapping-template-reference-programming-guide.html) and provide a fully serverless integration with DynamoDB.

{{% notice info %}}
This is just an example of how a device can be associated to a user account on your platform.
There are other ways to achieve this same goal to know which devices a user owns in order to allow the user to control them
{{% /notice %}}



## How to Run
You can choose either to [**Deploy this to Amplify console**]({{< ref "deploy_amplify_console">}}) (you'll need a GitHub account for this) or to [**develop via CLI**]({{< ref "deploy_amplify_cli">}}).
This is a [modern web application](https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html#what-are-modern-web-applications),
thus the easiest way for deployment is [AWS Amplify Console](https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html).

* [Deploy with Amplify Console]({{< ref "deploy_amplify_console">}})
* [Deploy from command line]({{< ref "deploy_amplify_cli">}})

 