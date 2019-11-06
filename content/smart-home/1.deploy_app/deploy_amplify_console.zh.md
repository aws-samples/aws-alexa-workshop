---
title: "使用 Amplify Console 部署"
date: 2019-09-05T23:06:51+08:00
draft: false
chapter: false
hidden: false
weight: 32
---

1. 点击以下这个按钮. 

    [![amplifybutton](https://oneclick.amplifyapp.com/button.svg)](https://console.aws.amazon.com/amplify/home?region=us-east-1#/deploy?repo={{% siteparam uiRepo %}})

2. 这将直接打开 AWS Amplify Console 控制台，如下所示:

    ![](/images/smart-home/connect_to_github.png)

3. 点击 **Connect to GitHub**. 该步骤需要您拥有一个 [GitHub](https://github.com) 账号. 您需要将[源代码仓库]({{% siteparam uiRepo %}}) Folk到您自己的 GitHub 账户中

    ![](/images/smart-home/amplify-role.png)

4. 点击 **Create a new service role**. 选择 **Next** 按钮，保持默认设置. 

5. 完成后点击刷新按钮，并且选择刚才创建的角色 (例如. amplifyconsole-backend-role).

6. 点击 **Save and deploy**

部署可能需要几分钟的时间，因此让我们继续下一步。 当您稍后返回放大控制台时，将看到该Web应用程序的URL。
    ![](/images/smart-home/amplify-url.png)