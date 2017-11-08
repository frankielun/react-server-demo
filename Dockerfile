

FROM mhart/alpine-node:8.0.0

RUN apk add --no-cache git && mkdir -p /var/app/current 

ADD ./ /var/app/current

WORKDIR /var/app/current

RUN npm install

VOLUME ["/var/app/current"]

EXPOSE 3000

# CMD npm start

# FROM node:slim
# EXPOSE 3000
# ENV NODE_ENV=docker-dev
# VOLUME /www
