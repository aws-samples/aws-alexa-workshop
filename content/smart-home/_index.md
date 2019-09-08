---
title: "Lab: Smart Home Skill"
date: 2019-09-05T23:06:51+08:00
draft: true
chapter: true
weight: 20
---

{{% notice info %}}
For the first time rung this lab, please select **N.Virginia region (us-east-1)**.
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