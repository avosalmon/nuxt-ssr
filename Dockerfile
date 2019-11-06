FROM node:11.13.0-alpine

WORKDIR /app

RUN apk update && apk upgrade \
  apk add git

COPY . .

RUN yarn install \
  yarn run build

CMD [ "yarn", "start" ]
