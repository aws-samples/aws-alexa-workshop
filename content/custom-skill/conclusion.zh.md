---
title: "结论 & 销毁资源"
draft: false
chapter: false
weight: 161
---

##	结论
恭喜 ! 现在您已经成功构建了您的第一个 Alexa Skill! 
现在您可以继续下一步实验 [lab2](/smart-home/) 学习如何构建一个 smart home的 Alexa skill，或者，您可以回到 [overview](/custom-skill/) 页面回顾此次试验。 

## 销毁资源
1. 删除 Lex 
   ![](/images/ask/delete-lex-bot.png)
1. 删除 Lambda Functions `bot-personal-assistant` 以及 `personalbanker`
   ![](/images/ask/delete-lambda.png)
1. 删除 Cloudformation "lex-web-ui"
   ![](/images/ask/delete-cloudformation.png)  
1. Alexa skill 本身不会收费, 但如果您要删除它，您可以到 [Alexa Developer Console](https://developer.amazon.com/alexa/console/ask) 中删除。
   ![](/images/ask/delete-ask.png)

##	参考资料
* [Speech Synthesis Markup Language (SSML) Reference](https://developer.amazon.com/docs/custom-skills/speech-synthesis-markup-language-ssml-reference.html)
* [Alexa Github](https://github.com/alexa/)