# AWS & Alexa Workshop

![](https://codebuild.us-west-2.amazonaws.com/badges?uuid=eyJlbmNyeXB0ZWREYXRhIjoiNTZ0eWJvSVB3blh2blVvcHRwMm00SXJkVkE5c2RHUnZRZjdDSnVBazhCSFV4WE5PZzNRbkRzcmd6VXAydDYxOWZYMXMrdWVHaEtTcEZoT2lVOEVNR0dnPSIsIml2UGFyYW1ldGVyU3BlYyI6ImRyRVRaazE1R3VwQlNpZW8iLCJtYXRlcmlhbFNldFNlcmlhbCI6MX0%3D&branch=master)

Welcome to AWS & Alexa Workshop!

The goal of this workshop is learn how to build Alexa Skills using AWS Services. To
access the workshop content, please visit 

[https://alexaworkshop.com](https://alexaworkshop.com)

In this workshop, you will learn:
1. How to build an [Alexa Custom Kill](https://developer.amazon.com/docs/custom-skills/understanding-custom-skills.html) 
2. How to build an Alexa-enabled Lamp using [Smart Home Skill](https://developer.amazon.com/docs/smarthome/understand-the-smart-home-skill-api.html)
3. Implement [Alexa Account Linking](https://developer.amazon.com/docs/account-linking/understand-account-linking.html)

## Setup:

The workshop website is built on [Hugo](https://gohugo.io/). You do **NOT** need to 
install Hugo and clone this repo if you want to run this workshop. The following step 
is **ONLY** used to build the workshop material itself and run a localhost version of the content. 

#### Install Hugo:
On a mac:

`brew install hugo`

On Linux:
  - Download from the releases page: https://github.com/gohugoio/hugo/releases/tag/v0.46
  - Extract and save the executable to `/usr/local/bin`

#### Clone this repo:
From wherever you checkout repos:
`git clone git@github.com:aws-samples/aws-alexa-workshop.git` (or your fork)

```shell script
cd aws-alexa-workshop
```

#### Run Hugo locally:
Run `hugo server -D`, and open `http://localhost:1313/` in your browser.
or

Run `hugo` will build your content locally and output to `./public/`

## License Summary

This sample code is made available under the MIT-0 license. See the LICENSE file.
