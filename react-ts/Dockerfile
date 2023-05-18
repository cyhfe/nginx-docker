FROM node:18-alpine

WORKDIR /code

ADD . /code
RUN npm install && npm run build

CMD npx serve -s dist

EXPOSE 3000