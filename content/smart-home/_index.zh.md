---
title: "实验: Smart Home Skill"
date: 2019-09-05T23:06:51+08:00
draft: false
chapter: true
weight: 20
---

{{% notice note %}}
如果是第一次运行这个实验，请务必选择**N.Virginia region (us-east-1)**区域.
{{% /notice %}}

{{% notice info %}}
本使用使用 Cloud9 开发环境，请确保您已经完成
<a href="/zh/getting-started/create-cloud9-env/" target="_blank">创建 Cloud 9 工作环境</a>. 这个链接会打开一个新的 tab, 请在完成
创建后回到当前页面。
{{% /notice %}}

在这个实验中，您将会学习到如何使用 AWS 的服务来构建一个 Alexa-Enabled 智能灯泡。
    
![](/images/smart-home/alexa-workshop-arch.jpg)

上图是这个实验的整体架构，在这个实验中，您将会创建如何资源:

* 一个虚拟的 Alexa-Enabled 智能家居灯泡
* 一个用于建立用户和设备绑定关系的系统，该服务基于 AppSync, Cognito User Pool, Lambda, DynamoDB 构建
* 一个 Alexa 的后端服务，该服务处理来自 Alexa 的指令，同时通过 IoT Core 操作灯泡的开关状态

## 步骤

{{% children showhidden="false" %}}