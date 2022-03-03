FROM node:current-slim

ADD . /app
WORKDIR /app

ENV CHOKIDAR_USEPOLLING=1

RUN npm install -g parcel-bundler

RUN npm install


EXPOSE 1234

ENTRYPOINT [ "npm", "run", "start" ]