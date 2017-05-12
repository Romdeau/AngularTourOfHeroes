FROM node:alpine

COPY . /opt
WORKDIR /opt

RUN npm install

ENTRYPOINT ["npm", "start"]
