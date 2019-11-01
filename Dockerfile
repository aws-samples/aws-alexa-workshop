# This is the docker file for CodeBuild custom image
# This codebuild contains hugo build environment

FROM ubuntu:18.04

WORKDIR /root

RUN apt-get update && apt-get install -y \
    curl \
    wget \
    zip \
  && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
  && apt-get install -y nodejs \
  && curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" \
  && unzip awscli-bundle.zip \
  && ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws \
  && rm awscli-bundle.zip \
  && rm -rf awscli-bundle/ \
  && wget https://github.com/gohugoio/hugo/releases/download/v0.59.0/hugo_0.59.0_Linux-64bit.deb \
  && dpkg -i hugo*.deb \
  && ln -s /usr/local/bin/hugo /usr/bin/hugo \
  && rm hugo*.deb








