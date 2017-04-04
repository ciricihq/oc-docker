FROM node

MAINTAINER Genar <genar@cirici.com>

COPY . /app

WORKDIR /app

RUN npm install

ENV NODE_ENV production

ENTRYPOINT node index.js
