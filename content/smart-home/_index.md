---
title: "Lab 2: Smart Home Skill"
date: 2019-09-05T23:06:51+08:00
draft: false
chapter: true
weight: 20
---

{{% notice note %}}
For the first time running this lab, please select **N.Virginia region (us-east-1)**.
{{% /notice %}}

{{% notice info %}}
You will need to Cloud9 environment for this lab. Make sure you have finished 
<a href="/getting-started/create-cloud9-env/" target="_blank">Create a Cloud9 Environment</a>. This link will 
open a new tab, please do remember to return to current page.
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

{{% children %}}