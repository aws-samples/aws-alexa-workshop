---
title: "2. Setup AWS Cloud9"
weight: 21
chapter: false
draft: false
---

{{% notice info %}}
This workshop is designed to run in the **N.Virginia (us-east-1)** region. Please don't run in any other region.
{{% /notice %}}

{{% notice warning %}}
If you are running this workshop in **your own account** ensure to be logged in with an IAM user with Administrator privileges and
not the root account user. Refer to  
**[the documentation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users.html)** on how to create IAM users.
{{% /notice %}}


When logging in with an IAM user you'll have to provide an **account id** or **account alias** and then a username and  password.

When logging in as **root** you use an email and a password.



## Launch Cloud9
1. Go to [AWS Cloud9 Console](https://us-east-1.console.aws.amazon.com/cloud9/home/product?region=us-east-1#)

1. Select **Create environment**

1. Name it `alexaworkshop`, and leave all the defaults 

1. When it comes up, customize the environment by closing the **Welcome tab**, **lower work area**, 
and opening a new **terminal** tab in the main work area:
    ![c9before](/images/getting-started/cloud9_welcome.png)

1. Your workspace should now look like this:
    ![c9after](/images/getting-started/cloud9after.png)

1. Cloud9 manages IAM credentials dynamically so you don't have to configure any further credentials.


## Troubleshooting
{{% notice note %}}
Ad blockers, javascript disablers, and tracking blockers should be disabled for
the Cloud9 domain, or connecting to the workspace might be impacted.
Cloud9 requires third-party-cookies. You can whitelist the [specific domains]( https://docs.aws.amazon.com/cloud9/latest/user-guide/troubleshooting.html#troubleshooting-env-loading).
{{% /notice %}}