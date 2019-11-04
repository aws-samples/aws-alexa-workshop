---
title: "Deploy with Console"
date: 2019-09-05T23:06:51+08:00
draft: false
chapter: false
hidden: false
weight: 32
---

1. Click on the button below. 

    [![amplifybutton](https://oneclick.amplifyapp.com/button.svg)](https://console.aws.amazon.com/amplify/home?region=us-east-1#/deploy?repo={{% siteparam uiRepo %}})

2. This will open the AWs Amplify Console, and should look as below

    ![](/images/smart-home/connect_to_github.png)

3. Click **Connect to GitHub**. You'll need a Github account for this step. The [source code repo]({{% siteparam uiRepo %}}) will be forked in your account

    ![](/images/smart-home/amplify-role.png)

4. Click on the link **Create a new service role**. Just press the **Next** button to accept the defaults. 

5. Click on the refresh button when done and select the role you just created (eg _amplifyconsole-backend-role).

6. Click **Save and deploy**


It might takes few minutes for the deployment to complete, so let's proceed with the next step. When you will come back to the Amplify Console later, you will be see the URL for the web application.
    ![](/images/smart-home/amplify-url.png)