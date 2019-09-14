---
title: "Getting Started"
weight: 10
chapter: true
draft: false
---

In this chapter, we will create a new workspace for this workshop using [Cloud9](https://aws.amazon.com/cloud9/).
AWS Cloud9 is a cloud-based integrated development environment (IDE) that lets you write, run, and debug your code 
with just a browser.

{{% notice tip %}}
The reason for setting up of a Cloud9 environment is to **prevent dependencies conflicting with your local 
environment**. It doesn't mean that we have to use Cloud9 for Alexa development.
You could also skip this session to use your local development environment. But to guarantee the success of this 
workshop, we **highly recommend following these instructions**.
{{% /notice %}}

{{% notice warning %}}
The Cloud9 workspace should be built by an IAM user with Administrator privileges,
not the root account user. Please ensure you are logged in as an 
**[IAM user](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users.html) (account id + username + password)**, 
not the root account (email + password).
{{% /notice %}}



