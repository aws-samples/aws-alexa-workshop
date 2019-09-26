---
title: "Device Farm 安装 Alexa App (可选)"
date: 2019-09-26T09:45:48+08:00
draft: false
chapter: false
---

若您处于中国地区，无法安装或使用 Alexa App，您可以使用 AWS Device Farm 启动一台由 AWS 托管的实际物理手机，并在其之上安装使用 Alexa App。您可以通过远程访问会话的方式实现与该设备进行交互。

{{% notice info %}}
本教程将向您演示如何在 Device Farm 的安卓设备上添加 Google 账号并安装 Alexa App。您同样可以在 Device Farm 启动 IOS 设备。但由于安全原因，您将无法使用 Apple Store，并且无法添加您的 Apple ID 到该设备上，只能通过上传文件的方式安装应用。因此我们无法在 IOS 设备上安装 Alexa App。
{{% /notice %}}

{{% notice info %}}
AWS Device Farm 附带 1000 分钟的一次性设备免费试用时间。此后，将按照 0.17 USD 每设备分钟计费。具体定价信息，请参阅 [AWS Device Farm 定价](https://aws.amazon.com/cn/device-farm/pricing/)
{{% /notice %}}

## 启动 Device Farm
1. 打开 [AWS Device Farm](https://us-west-2.console.aws.amazon.com/devicefarm/home?region=us-east-1#/projects)

1. 输入项目名称 `alexaworkshop`, 选择 **Create project**

1. 在创建完项目后会进入控制台界面，我们在 **Remote access** 中选择 **Start a new session**
    ![deviceFarmConsole](/images/getting-started/device-farm-console.png)

1. 在 **Choose a device** 中，我们任意选择一台状态为 **AVAILABLE** 的安卓机型，在这里我们选择 `Google Pixel 2`。等待设备创建完成后我们就会进入与该手机进行远程访问会话的界面。

    {{% notice info %}}
此次远程会话的默认持续时间是 150 分钟，时间到后会话会关闭，并且不可再用。在您网络连接中断或者浏览器关闭的情况下，会话会保持 5 分钟，中间若无重连则会话自动关闭。
    {{% /notice %}}

    ![deviceFarmSession](/images/getting-started/device-farm-create-session.png)

1. 此时系统中是没有 Google 账号的，我们需要在添加谷歌账号之后才能完整地看到 Google Play 中所有应用。添加 Google 账号，我们需要进入手机的 **Settings - Accounts** 界面中进行账号添加。添加完之后我们进入 Google Play 中切换账户后，即可搜索下载 Alexa App。
    ![deviceFarmAddAccount](/images/getting-started/device-farm-add-account.png)

