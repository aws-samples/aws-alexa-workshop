---
title: "开始"
weight: 10
chapter: true
draft: false
---
在本章节中，我们会利用[Cloud9](https://aws.amazon.com/cloud9/)为此次workshop创建一个新的环境。
Cloud9为一个基于AWS云的IDE，可以在浏览器当中编写，运行，debug代码。

{{% notice tip %}}
我们设置Cloud9环境的原因是为了**防止在本地PC运行时可能出现的依赖冲突**等问题，并不是说此workshop或者是Alexa的开发只能运行在Cloud9环境中。
如果您的本地PC环境较为简单，或者是不在意在本地安装一些全局依赖，您可以跳过此章节。但为了保证此workshop的顺利进行，您不至于浪费时间在解决依赖环境上，我们强烈推荐您执行此步骤。
{{% /notice %}}

{{% notice warning %}}
应该使用一个管理员权限的IAM User建立Cloud9环境，而不是使用根账号创建。请确保您是以[IAM user](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users.html)身份登录控制台的。
判断方法为，IAM User的登录方式是账号ID+ 用户名+ 密码，而根账号则使用email+密码的登录方式。 
{{% /notice %}}



