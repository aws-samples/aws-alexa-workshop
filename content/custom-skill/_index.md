---
title: "Lab: Alexa Custom Skill"
chapter: false
draft: true
weight: 15
---

{{% notice info %}}
Use **N.Virginia(us-east-1)** region for this lab, the CloudFormation template used resources in us-east-1.
Choosing other regions is ok if you skip [Bring Lex Bot to Web](/custom-skill/5.bring-lex-to-web/).
{{% /notice %}}

{{% notice note %}}
The code for this lab is located at [here](https://github.com/lab798/aws-alexa-workshop-ask), 
please download the code to start this lab.
{{% /notice %}}


## Architect

![](/images/ask/architecutre.png)

##	Overview

In general, the lab covers two parts. The first part is to about Lex, **step 1-6 is to demo the usage of Lex together with other services like lambda function, cognito etc. Step 7-10 is the hands on lab on Alexa**. The reason why we introduces these two services together is they are highly relative. Amazon Lex uses the same deep learning technologies that power Amazon Alexa and we could export Lex settings directly to enable Alexa skills.

**Amazon Lex**

Amazon Lex is a service for building conversational interfaces into any application using voice and text. Amazon Lex provides the advanced deep learning functionalities of automatic speech recognition (ASR) for converting speech to text, and natural language understanding (NLU) to recognize the intent of the text, to enable you to build applications with highly engaging user experiences and lifelike conversational interactions. With Amazon Lex, the same deep learning technologies that power Amazon Alexa are now available to any developer, enabling you to quickly and easily build sophisticated, natural language, conversational bots (“chatbots”). This lab is designed to demonstrate how to create a new bot including defining intents and slots. This lab will walk you through the following:

*	Creating a Lex bot
*	Adding intents
*	Adding slot types
*	Using Lambda as the back-end logic for Lex

## Steps

{{% notice info %}}
Step 1 and step 2's function is the same, the only difference is whether to create the intents manually or not. 
Choose your preferred one is ok. But if you are interested, you could experience both steps and compare the difference.
{{% /notice %}}

{{% children showhidden="false" %}}
