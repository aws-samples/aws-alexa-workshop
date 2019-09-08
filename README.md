# AWS & Alexa Workshop

To access the workshop content, please visit [https://alexaworkshop.com](https://alexaworkshop.com).

### Setup:

#### Install Hugo:
On a mac:

`brew install hugo`

On Linux:
  - Download from the releases page: https://github.com/gohugoio/hugo/releases/tag/v0.46
  - Extract and save the executable to `/usr/local/bin`

#### Clone this repo:
From wherever you checkout repos:
`git clone git@github.com:joeshi/aws-alexa-workshop.git` (or your fork)

#### Clone the theme submodule:
`cd aws-alexa-workshop`

`git submodule init` ;
`git submodule update`

#### Run Hugo locally:
`hugo server -D`, and open `http://localhost:1313/` in your browser.
or

`hugo` will build your content locally and output to `./public/`



