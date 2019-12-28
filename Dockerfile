FROM node:lts-alpine

EXPOSE 80

#Setup ENV
ENV NPM_CONFIG_LOGLEVEL warn

# Bundle metadata files
COPY package.json yarn.lock ./

# Install app dependencies
RUN yarn install --production

#Copy app
COPY src src/

CMD [ "node", "src/bin/www" ]