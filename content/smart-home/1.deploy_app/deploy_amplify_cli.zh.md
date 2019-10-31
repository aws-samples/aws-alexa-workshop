---
title: "使用 Amplify CLI 部署"
date: 2019-09-05T23:06:51+08:00
draft: false
chapter: false
hidden: false
weight: 312
---

{{% notice warning %}}
**只有进行本地二次开发的时候，才执行以下步骤**. 如果是第一次使用这个 Lab, 强烈建议使用 Amplify Console 进行部署。
{{% /notice %}}

在这个开发过程中, 需要安装 **Yarn** 和 **node.js**。

#### 前提条件
1. 安装 [node.js](https://nodejs.org/en/). 安装 nodejs 最简单的方法是 is [NVM](https://github.com/nvm-sh/nvm). 
1. 安装 [Yarn](https://yarnpkg.com/en/)
1. 安装 [AWS Amplify CLI](https://github.com/aws-amplify/amplify-cli#install-the-cli) 或者运行 `npm i @aws-amplify/cli -g`
1. 把绑定程序的源代码拷贝到本地，如：

```
git clone {{% siteparam uiRepo %}} aws-alexa-workshop-ui
cd aws-alexa-workshop-ui
```

1. 在 Terminal 中运行 `amplify init` 初始化后端. 当提示输入环境名称时，请输入 **dev** , 保持其他设置默认
1. 选择您的 **default editor** 和 **AWS profile**. 等待初始化完成
![](/images/smart-home/amplify-init.png)
1. 运行 `amplify push` 并且输入 **Yes** 
1. 敲击回车按钮，其他设置保持默认
![](/images/smart-home/amplify-push.png)
1. 运行 `yarn install` 来安装依赖
1. 运行 `yarn start` 来启动这个 web 应用程序
1. Open [http://localhost:3000/device/xxxxx](http://localhost:3000/device/xxxxx) to view it in the browser.
1. 如果您是第一次运行Web应用程序。 您应该单击**创建帐户**按钮来创建一个帐户。

#### 发布 APP
如果你在 Cloud9 中运行了 `amplify` 命令，那么你只有等到 APP 发布后，才能正常访问。按照如下指令进行发布:

1. 运行 `amplify add hosting`
1. 运行 `amplify push`
1. 运行 `amplify publish`
1. 打开 Amplify Console 控制台，查看发布出来的地址，通过该地址访问 APP