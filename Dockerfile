FROM node:14-slim

RUN apt-get update && apt-get upgrade -y \
    && apt-get clean

RUN mkdir /app
WORKDIR /app

COPY package.json /app/


RUN npm install

COPY public /app/public
COPY src /app/src
COPY jenkins /app/jenkins
EXPOSE 3000
CMD [ "npm", "start" ]
