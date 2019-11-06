---
title: "1. 用户绑定APP"
date: 2019-09-05T23:06:51+08:00
draft: false
chapter: false
weight: 31
---

{{% notice note %}}
请确保自己使用的是 **N.Virginia 区域 (us-east-1)**.
{{% /notice %}}

为了可以控制其自己拥有的设备，用户必须先声明该 device 属于平台上的哪个账号下。这一步是通过绑定 APP 来实现的，该 APP 提供了认证的接口，并且将设备与用户信息的绑定关系存储到数据库中。
我们将使用 AppSync，创建基于 GraphQL 和 DynamoDB 的后端；使用 [Amazon Cognito User Pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html) 做用户账号的授权；我们还将使用 [AWS Amplify](https://aws-amplify.github.io/)  创建应用。
架构图如下。

## 架构图
![](/images/smart-home/arch.jpg)

## 综述
下个章节的时序图叙述了整个交互流程。在完成之后，特定的设备会被关联到特定的用户账号下。
我们也有提供解绑的这一功能，用来处理设备转让给另外一个用户的情况，解绑按钮会从数据库中删除该调绑定记录。

### 建立设备与用户绑定关系
绑定设备，会触发API，在 DynamoDB 中创建一条 record。

对于一台实体设备，序列号常被认为是识别设备的唯一序号。在此实验中，我们将序列号用作是绑定 APP 的参数，为了方便输入，我们将此序列号统一编码为一个二维码。用户只需要扫描二维码，即可完成绑定过程。
在实际场景中，QR Code 可以印刷在设备上或者设备的外包装上。 

下图描述了我们的设计流。
![](/images/smart-home/device-bind-flow.png)

1. 用户使用手机扫描二维码
1. 页面加载
1. 页面完成加载，并跳转到登录页面 (如果已经登录，直接到步骤6)   
1. 提交登录信息，拿到 **accessToken** and **idToken**   
1. 使用 **accessToken** 拿到 user profile
1. 通过绑定的 API 唤醒设备   
1. 在数据库中，建立设备与用户的绑定关系 

AWS AppSync 和 Amazon DynamoDB 的整合，统一由 AWS Amplify 来完成。

如果感兴趣，可以查看 [AppSync console](https://console.aws.amazon.com/appsync) 中 `AlexaBackend-..` 的 API，尤其是 Schema，**Mutation** 和 **Query**，他们由 [VTL (Velocity Templates)](https://docs.aws.amazon.com/appsync/latest/devguide/resolver-mapping-template-reference-programming-guide.html) 编写并且
提供了与 DynamoDB 之间无服务器的整合。 

{{% notice info %}}
这这是绑定用户账号和设备关系的一种示例方法，也可以通过其他的方式来实现类似的绑定过程。
{{% /notice %}}

## 运行方式
您既可以选择 [**使用 Amplify Console 部署**]({{< ref "deploy_amplify_console">}}) (需要有 GitHub 账号)，也可以选择 [**通过 Amplify CLI 部署**]({{< ref "deploy_amplify_cli">}})，选择一种部署方式即可。
这是一个[现代应用程序](https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html#what-are-modern-web-applications)，因此最简单的方式是 [**使用 Amplify Console 部署**](https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html)。

* [**使用 Amplify Console 部署**]({{< ref "deploy_amplify_console">}})
* [**通过 Amplify CLI 部署**]({{< ref "deploy_amplify_cli">}})

 