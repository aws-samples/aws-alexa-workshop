# AWS & Alexa Workshop

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

#### Clone the theme submodule:

```shell script
cd aws-alexa-workshop
cd workshop
```

#### Run Hugo locally:
Run `hugo server -D`, and open `http://localhost:1313/` in your browser.
or

Run `hugo` will build your content locally and output to `./public/`


## Repo structure

```bash
.
├── metadata.yml                      <-- Metadata file with descriptive information about the workshop
├── README.md                         <-- This instructions file
├── deck                              <-- Directory for presentation deck
├── resources                         <-- Directory for workshop resources
│   ├── code                          <-- Directory for workshop modules code
│   ├── policies                      <-- Directory for workshop modules IAM Roles and Policies
│   └── templates                     <-- Directory for workshop modules CloudFormation templates
└── workshop                          
    ├── buildspec.yml                 <-- AWS CodeBuild build script for building the workshop website (Note this is being deprecated in favour of automated builds within the workshops.aws platform. You shouldn\'t need to touch this file)
    ├── config.toml                   <-- Hugo configuration file for the workshop website
    └── content                       <-- Markdown files for pages/steps in workshop
    └── static                        <-- Any static assets to be hosted alongside the workshop (ie. images, scripts, documents, etc)
    └── themes                        <-- AWS Style Hugo Theme (Do not edit!)
```

## What's Included

This project the following folders:

* `deck`: **UNUSED RIGHT NOW** Future location to store your presentation materials. For now, you should store them centrally in a system like KnowledgeMine or Wisdom. 
* `resources`:  **UNUSED RIGHT NOW** Store any example code, IAM policies, or Cloudformation templates needed by your workshop here.
* `workshop`: This is the core workshop folder. This is generated as HTML and hosted for presentation for customers.
