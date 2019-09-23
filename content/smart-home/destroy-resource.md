---
title: "Conclusion & Destroy AWS Resources"
date: 2019-09-05T23:06:51+08:00
draft: false
chapter: false
weight: 211
---

Congratulations! Now you have finished all the contents for lab2: How to build a Smart home Skill.

For destroying resources, please check the below.

### Destroy Device Binding UI

1. Go to [Cognito User Pool Console](https://console.aws.amazon.com/cognito/users/?region=us-east-1)

1. Select the User Pool created

1. Click **Domain name** on the left side bar

1. Click **Delete domain**, select the checkbox and confirm to delete

1. Go to [AWS Amplify Console](https://console.aws.amazon.com/amplify/home?region=us-east-1#/)

1. Select the Amplify APP

1. Select **Actions** in the top right corner and click **delete app**
    ![](/images/smart-home/destroy-amplify-1.png)

1. Go to [CloudFormation Console](https://console.aws.amazon.com/cloudformation/home?region=us-east-1)

1. Select the CloudFormation stack without *NESTED* tag, please make sure you have
selected the right CloudFormation stack
    ![](/images/smart-home/destroy-amplify-2.png)

1. Click **Delete**

1. If you have the following error while delete the CloudFormation template, select the template and **delete again**,
on the popup window, do **NOT** select resource
    ![](/images/smart-home/destroy-amplify-3.png)

### Destroy Lambda & Lambda Execution Role

1. Go to [Lambda Console](https://console.aws.amazon.com/lambda/home?region=us-east-1#/functions)

1. Tick the radio box before the lambda function

1. Click **Actions**, and then select **Delete**

1. Go to [AWS IAM Console](https://console.aws.amazon.com/iam/home?region=us-east-1), click **Roles** on the left 
side bar

1. Search for the lambda execution role and delete

