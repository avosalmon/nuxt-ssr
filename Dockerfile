FROM node:11.13.0-alpine

WORKDIR /app

ENV NODE_ENV=production
ENV NPM_CONFIG_PRODUCTION=false
ENV HOST=0.0.0.0

RUN apk update && \
  apk upgrade && \
  apk add git

COPY . .

RUN yarn install && \
  yarn run build

CMD [ "yarn", "start" ]
