FROM node:alpine

COPY ./ ./

RUN yarn install

CMD node ./bin/www