---
title: "Lab: Smart Home Skill"
date: 2019-09-05T23:06:51+08:00
draft: false
chapter: true
weight: 20
---

{{% notice note %}}
For the first time running this lab, please select **N.Virginia region (us-east-1)**.
{{% /notice %}}

{{% notice info %}}
本使用使用 Cloud9 开发环境，请确保您已经完成
<a href="/zh/getting-started/create-cloud9-env/" target="_blank">创建 Cloud 9 工作环境</a>. 这个链接会打开一个新的 tab, 请在完成
创建后回到当前页面。
{{% /notice %}}
    
In this lab, you will learn how to build a virtual Alexa-Enabled
Smart Lamp using various AWS Services.

![](/images/smart-home/alexa-workshop-arch.jpg)

The above is the overall architect of this Lab. In this lab, you will create:

* A virtual Alexa-Enabled Smart Home Lamp
* A device binding system using AppSync, Cognito User Pool, Lambda, DynamoDB
* An Alexa backend which handles directives from Alexa and control the power status 
of Lamp via IoT Core

## Steps

{{% children showhidden="false" %}}