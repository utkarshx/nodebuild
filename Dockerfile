FROM node:alpine
WORKDIR /usr/src

RUN apk update && apk add python3 py3-pip unzip jq
RUN mkdir googlesdk && cd googlesdk

RUN wget https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz -O - | tar -zx
RUN google-cloud-sdk/install.sh -q --usage-reporting=false --additional-components beta
