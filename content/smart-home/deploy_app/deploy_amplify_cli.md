---
title: "Deploy with CLI"
date: 2019-09-05T23:06:51+08:00
draft: false
chapter: false
hidden: false
weight: 312
---

{{% notice warning %}}
**You should ONLY run this if you would like to develop locally**.
{{% /notice %}}

In this application, **Yarn** and **node.js** are used to build the application.

#### Prerequisites
1. Install [node.js](https://nodejs.org/en/). The easiest way to install NodeJS is [NVM](https://github.com/nvm-sh/nvm). 
1. Install [Yarn](https://yarnpkg.com/en/)
1. Install [AWS Amplify CLI](https://github.com/aws-amplify/amplify-cli#install-the-cli) or `npm i @aws-amplify/cli -g`

1. Clone the Github repo on your local machine

```
git clone {{% siteparam uiRepo %}} aws-alexa-workshop-ui
cd aws-alexa-workshop-ui
```

1. Run `amplify init` to init the backend. When prompted enter **dev** for environment name, leave the rest as their default.
1. Choose your **default editor** and **AWS profile**. Wait for the initialization finished
![](/images/smart-home/amplify-init.png)
1. Run `amplify push` and type **Yes** when asked to confirm
1. Click **Enter** button to keep the all the rest default settings
![](/images/smart-home/amplify-push.png)
1. Run `yarn install` to install dependencies
1. Run `yarn start` to start the web application
1. Open [http://localhost:3000/?thingName=xxxxxxxx](http://localhost:3000/?thingName=xxxxxxxx) to view it in the browser.
1. If you are the first time to run the web application. You should click the **Create account** button to create an account.

#### Publishing the app
If you have run the `amplify` commmands on **Cloud9** you will not be able to access the environment from your browser without publishing the app:

1. Run `amplify add hosting`
1. Run `amplify push`
1. Run `amplify publish`
1. Open the Amplify console when done to retrieve the URL for the frontend.