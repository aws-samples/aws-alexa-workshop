---
title: "实验 1: Alexa Custom Skill"
chapter: false
draft: false
weight: 15
---

此实验将会以一个可以提供余额以及贷款查询功能的银行skill为例，将教您如何构建一个自定义的 Alexa Skill。

## Architecture

![](/images/ask/architecutre.png)

{{% notice tip %}}
此workshop的所有代码[点击此处获取](https://github.com/lab798/aws-alexa-workshop-ask/tree/master/workshop).
{{% /notice %}}

## Table of Contents

此lab涵盖两部分的内容。第一部分是[Amazon Lex](https://aws.amazon.com/lex/)的开发；第二部分为 Alexa 的上手实验。
我们之所以会把这两个服务放在一起，是因为他们是高度相关的。 Lex使用的深度学习技术，跟用于 Amazon Alexa 的是一样的。他们的开发过程也是高度类似的。您可以轻松的将Lex的设置配置文件导入到Alexa当中，用于Alexa的开发。
但这并不代表，Alexa 的开发必须要用到 Lex，您也可以直接用 Alexa 开发控制台进行开发。 

{{% children %}}
