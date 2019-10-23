---
title: "Alexa Skill Model"
weight: 7
chapter: false
draft: false
---

The first step in building a new skill is to decide what your skill will do. This determines how your skill integrates with the Alexa service and what you need to build. The Alexa Skills Kit supports building several different types of skills, such as Custom Interaction Model, Smart Home Skills (pre-built model), Video Skills (pre-built model), Music Skills (pre-build model) etc. You can find the up-to-date list of supported models [here](https://developer.amazon.com/docs/ask-overviews/build-skills-with-the-alexa-skills-kit.html)

In this workshop we will cover the Smart Home Skills.

### Smart Home Skill

{{% notice note %}}
This session is original from
[Alexa Skill Models # Smart Home Skills](https://developer.amazon.com/docs/ask-overviews/understanding-the-different-types-of-skills.html#smart-home-skills-pre-built-model)
{{% /notice %}}
  
For building a skill to control smart home devices such as cameras, lights, locks, thermostats, and smart TVs, you should use the _Smart Home pre-built model_. This gives you less control over the user's experience, but simplifies development since you don't need to create the voice user interface yourself. These skills are also easier for end users to invoke, since they don't need to remember any invocation name and can make requests such as "Alexa, turn on the living room lights."

For this type of skill, the _Smart Home Skill API_ defines:

* The requests the skill can handle. These requests are called _device directives_. Examples include:

  * turn on / turn off
  * increase / decrease the temperature
  * change the dimness or brightness for a light
  * lock a door
  * change the channel on a television
  * view a live video stream from a smart home camera on Echo Show or Fire TV.

* The words users say to make (or invoke) those requests. For example:
  * "turn off the living room lights"
  * "increase the temperature by two degrees"
  * "dim the living room lights to 20%"
  * "lock the back door"
  * "change channel to PBS"
  * "show the front door camera"

_You_ (as the developer) define how your skill responds to a particular directive. For instance, you write the code that makes a light turn on when your skill receives a "turn on the light" directive. This code is hosted as an AWS Lambda function. Note that a skill built with the Smart Home Skill API can respond only to the requests (device directives) supported by the API

### Other skill types
For more details about other types of skills and the differences between them, see [Understand the Different Skill Models](https://developer.amazon.com/docs/ask-overviews/understanding-the-different-types-of-skills.html).


