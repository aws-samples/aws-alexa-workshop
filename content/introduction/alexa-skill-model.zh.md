
---
title: "Alexa Skill 模型"
weight: 7
chapter: false
draft: false
---

在创建Skill之前，需要首先决定希望这个 skill 实现什么功能。这决定了您应该使用哪个 Alexa model 并且使用什么样的服务去构建它。
Alexa Skill Kit (简称 ASK ) 支持不同种 skill 的创建，比如 Custom Interaction Model, Smart Home Skills (pre-built Model) , Video Skills (pre-built Model), Music Skills (pre-build Model) 等。

此 workshop 将涉及两种最常用的 skill model ,custom interation skill & smart home skills。在动手之前，我们先来了解一下他们的功能和场景。

{{% notice note %}}
此session的内容摘录自
[Alexa Skill Models # Custom Interaction Model](https://developer.amazon.com/zh/docs/ask-overviews/understanding-the-different-types-of-skills.html) 并做了汉化。
{{% /notice %}}

### Custom Interaction Skill
 
custom interaction skill 是最常见的一种 model 类型。 在此类型的开发中， 您需要定义以下内容：

1. **Intents : 此 skill 可以处理的请求**. 比如，一个 skill 可以实现的功能包括：
   - 查询潮汐信息 （ 涨潮落潮时间等 ）
   - 订一个pizza
   - 叫计程车

1. **要触发这些请求的句子**. 沿用上述的例子，我们可以这么说:
   - "帮我查一下西雅图的涨潮时间" ( 映射 TideRequest intent).
   - "帮我订一份大份儿的 pepperoni pizza" (映射 OrderPizza intent).
   - "帮我叫车" (映射 OrderCar intent).

1. **invocation name （唤醒词）: Alexa唤醒当前skill的关键词**。
用户如果想使用这个skill，需要带着这个唤醒词。 比如，查询潮汐信息的 skill ，您可以会定义它的 invocation name 为"tide pooler"。  

1. **视觉或者触摸屏交互**. 如果使用带有 Alexa 功能的带屏设备，可以自定义屏幕上显示的内容跟触摸板交互。这是 optional 的。

一个自定义 skill (custom skill) 可以处理任何请求， 只要您创建用于实现后端逻辑的代码并且配置好以上信息。这是一种最灵活的 skill，但同时也最复杂，因为您需要去完全自定义的实现。

### Smart Home Skills (Pre-built Model)   

Smart home skill也可以使您控制智能家居设备，比如摄像机，灯，冰箱，智能电视等等。因为 Alexa 实现了这个预置模型，所以您的开发流程是比较简单的。这种 skill 用户交互起来也比较简单，因为他们不需要用 **invocation name** 去唤醒当前skill。他们只需要说 "Alexa, turn on the living room lights" （打开点灯）即可。

在 Smart home skill 中，

1. Smart Home Skill 的 API 已经定义了如下信息：

   - 当前 skill 可以处理的请求，也就是 **device directives**。举例如下:
      - turn on / turn off （打开、关上 ... ）
      - increase / decrease the temperature （增加、降低 ... 的温度）
      - change the dimness or brightness for a light （调高、降低 ... 的亮度）

   - 用户的唤醒词。比如:
      - "turn off the living room lights" 
      - "increase the temperature by two degrees"
      - "dim the living room lights to 20%"
      - "lock the back door"
      - "change channel to PBS"
      - "show the front door camera"

1. 开发者只需要定义：  
如何处理一个特定的 device directive。比如，您需要编写代码实现当 Alexa 收到 "turn off the light" 时，如何让您的灯设备关上。这部分的逻辑通过 **lambda** 来去定义实现。 
需要注意的是，smart home skill在解放您的开发难度的同时，也只支持 Smart Home skill API 内有的指令。

### 其他 skill 类型
如果您希望了解更多 skill 类型 并且比较他们之间的不同，请参考[Understand the Different Skill Models](https://developer.amazon.com/zh/docs/ask-overviews/understanding-the-different-types-of-skills.html).


