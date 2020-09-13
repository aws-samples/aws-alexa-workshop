
---
title: "Alexa Skill Model"
weight: 7
chapter: false
draft: false
---

The first step in building a new skill is to decide what your skill will do. This determines how your skill integrates with the Alexa service and what you need to build. The Alexa Skills Kit supports building several different types of skills, such as Custom Interaction Model, Smart Home Skills(pre-built Model), Video Skills(pre-built Model), Music Skills(pre-build Model) etc.

In this lab, we will cover two type of most commonly used models, custom interation skill & smart home skills.

### Custom Interaction Skill

{{% notice note %}}
This session is original from
[Alexa Skill Models # Custom Interaction Model](https://developer.amazon.com/zh/docs/ask-overviews/understanding-the-different-types-of-skills.html#custom-interaction-model)
{{% /notice %}}
  
For the most control over the user's experience, build a skill with a custom interaction model. This is a custom skill.

For a custom skill, you (as the developer) define:

1. **The requests the skill can handle**. These are defined as intents. For example, a skill could do any of the following:
   - Look up tide information
   - Order a pizza
   - Request a taxi

1. **The words users say to make (or invoke) those requests**. Continuing the above examples:
   - "Get high tide for Seattle" (this phrase would be mapped to a TideRequest intent).
   - "Order a large pepperoni pizza" (this phrase would be mapped to an OrderPizza intent).
   - "Order a car" (this phrase would be mapped to an OrderCar intent).

1. **The visual and touch interactions** that users will experience and can invoke. Alexa-enabled devices with a screen support visual displays and touch interactions, so you can create a skill that uses a combination of voice, visual, and touch interactions, or you can opt to have a skill that does not support any screen functionality

1. **The name Alexa uses to identify your skill**, called the invocation name. Users include this when making a request. For example, the skill for looking up tides could be called "tide pooler".   

A custom skill can handle any kind of request, so long as you can create the code to fulfill the request and provide appropriate data in the interaction model to let users invoke the request. This is the most flexible kind of skill you can build, but also the most complex, since you need to provide the interaction model.

### Smart Home Skills (Pre-built Model)   

{{% notice note %}}
This session is original from
[Alexa Skill Models # Smart Home Skills](https://developer.amazon.com/zh/docs/ask-overviews/understanding-the-different-types-of-skills.html#smart-home-skills-pre-built-model)
{{% /notice %}}

For building a skill to control smart home devices such as cameras, lights, locks, thermostats, and smart TVs, you should use the Smart Home pre-built model. This gives you less control over the user's experience, but simplifies development since you don't need to create the voice user interface yourself. These skills are also easier for end users to invoke, since they don't need to remember any invocation name and can make requests such as "Alexa, turn on the living room lights."

1. For this type of skill, the Smart Home Skill API defines:

   - The requests the skill can handle. These requests are called **device directives**. Examples include:
      - turn on / turn off
      - increase / decrease the temperature
      - change the dimness or brightness for a light
      - lock a door

   - The words users say to make (or invoke) those requests. For example:
      - "turn off the living room lights"
      - "increase the temperature by two degrees"
      - "dim the living room lights to 20%"
      - "lock the back door"
      - "change channel to PBS"
      - "show the front door camera"

1. The developer only needs to define:  
how your skill responds to a particular directive. For instance, you write the code that makes a light turn on when your skill receives a "turn on the light" directive. This code is hosted as an AWS Lambda function. Note that a skill built with the Smart Home Skill API can respond only to the requests (device directives) supported by the API.

### Other skill types
For more details about other types of skills and the differences between them, see [Understand the Different Skill Models](https://developer.amazon.com/zh/docs/ask-overviews/understanding-the-different-types-of-skills.html).


