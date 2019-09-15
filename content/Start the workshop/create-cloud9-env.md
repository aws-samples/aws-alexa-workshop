---
title: "Create a Workspace"
weight: 11
chapter: false
draft: false
---


{{% notice info %}}
So far, this workshop was designed to run in the **Virginia (us-east-1)** region. **Please don't
run in any other region.** 
{{% /notice %}}


### Launch Cloud9 :
- [Create a Cloud9 Environment](https://us-east-1.console.aws.amazon.com/cloud9/home?region=us-east-1)
- Select **Create environment**
- Name it **alexaworkshop**, and take all other defaults
- When it comes up, customize the environment by closing the **welcome tab**
and **lower work area**, and opening a new **terminal** tab in the main work area:
![c9before](/images/ask/cloud9_welcome.png)
- Your workspace should now look like this:
![c9after](/images/ask/cloud9after.png)

- If you like this theme, you can choose it yourself by selecting **View / Themes / Solarized / Solarized Dark**
in the Cloud9 workspace menu.

- Cloud9 manages IAM credentials dynamically so you don't have to configure any further credentials.

{{% notice tip %}}
Ad blockers, javascript disablers, and tracking blockers should be disabled for
the cloud9 domain, or connecting to the workspace might be impacted.
Cloud9 requires third-party-cookies. You can whitelist the [specific domains]( https://docs.aws.amazon.com/cloud9/latest/user-guide/troubleshooting.html#troubleshooting-env-loading).
{{% /notice %}}