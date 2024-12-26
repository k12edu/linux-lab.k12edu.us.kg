FROM node:lts

COPY . ./app

RUN npm i docsify-cli -g