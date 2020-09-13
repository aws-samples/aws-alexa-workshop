---
title: "总结 & 销毁 AWS 资源"
date: 2019-09-05T23:06:51+08:00
draft: false
chapter: false
weight: 211
---

恭喜您已经完成此实验中的所有内容！通过此实验，我们构建了一个Alexa Smart Home Skill。

如希望销毁本实验中创建的资源防止额外计费，请参考以下内容。


### 销毁设备绑定程序

1. 打开 [Cognito User Pool 控制台](https://console.aws.amazon.com/cognito/users/?region=us-east-1)

1. 选择之前创建的 User Pool

1. 左侧菜单栏点击 **Domain name**

1. 点击 **Delete domain**, 确认协议并删除域名

1. 打开 [AWS Amplify 控制台](https://console.aws.amazon.com/amplify/home?region=us-east-1#/)

1. 选择之前创建的 Amplify APP

1. 右上角点击 **Actions**， 然后选择 **delete app**
    ![](/images/smart-home/destroy-amplify-1.png)

1. 打开 [CloudFormation 控制台](https://console.aws.amazon.com/cloudformation/home?region=us-east-1)

1. 选择没有 *NESTED* 标签的 CloudFormation stack, 请确保选择了正确了 stack.
    ![](/images/smart-home/destroy-amplify-2.png)

1. 点击 **Delete**

1. 删除过程中，如果遇到以下错误则需要选中这个 template 并尝试再次销毁，在弹出的销毁确认框中，请**不要**选择任何资源
    ![](/images/smart-home/destroy-amplify-3.png)

### 删除 Lambda 和 Lambda 角色

1. 打开 [Lambda 控制台](https://console.aws.amazon.com/lambda/home?region=us-east-1#/functions)

1. 在 Lambda 方法前的单选框勾选

1. 点击 **Actions**, 然后选择 **Delete**

1. 打开 [AWS IAM Console](https://console.aws.amazon.com/iam/home?region=us-east-1), 左侧菜单栏点击 **Roles**

1. 搜索之前创建的 Lambda 角色，并删除

