---
title: "创建 Cloud9 环境"
weight: 11
chapter: false
draft: false
---

{{% notice info %}}
这个 Workshop 是按照 AWS **N.Virginia (us-east-1)** 区域设计。请不要在其他区域尝试。
{{% /notice %}}

## 启动 Cloud9
1. 打开 [AWS Cloud9 控制台](https://us-east-1.console.aws.amazon.com/cloud9/home/product?region=us-east-1#)

1. 选择 **Create environment**

1. 输入名称 `alexaworkshop`, 其他所有设置保持默认

1. 当 Cloud9 环境启动之后, 关闭 **Welcome tab**, **下方工作区域**, 打开一个新的 **terminal**
    ![c9before](/images/getting-started/cloud9_welcome.png)

1. 您的 Cloud9 工作区显示如下
    ![c9after](/images/getting-started/cloud9after.png)

1. Cloud9 会动态管理 IAM 授权，您无需管理权限设置

## 故障排查
{{% notice note %}}
对于 Cloud9 的域名，应禁用广告拦截器，javascript禁用程序和跟踪拦截器，否则可能会影响连接到工作区. Cloud9 需要第三方Cookie。
你可以将[这些资源](https://docs.aws.amazon.com/cloud9/latest/user-guide/troubleshooting.html#troubleshooting-env-loading)列入白名单.
{{% /notice %}}