FROM node

MAINTAINER Genar <genar@cirici.com>

COPY . /app

WORKDIR /app

RUN npm install

ENV NODE_ENV production

EXPOSE 3000

ENTRYPOINT node index.js
