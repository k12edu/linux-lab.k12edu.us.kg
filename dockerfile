FROM node:18

COPY . ./app

RUN npm i docsify-cli -g