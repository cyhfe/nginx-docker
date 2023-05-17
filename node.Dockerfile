FROM node:18-alpine

WORKDIR /code

ADD . /code/

RUN npm install

EXPOSE 3000

CMD npm start
