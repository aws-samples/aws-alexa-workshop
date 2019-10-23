# This is the docker file for CodeBuild image
# This codebuild contains hugo build environment

FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    curl \
    hugo \
  && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
  && apt-get install -y nodejs

WORKDIR /root


