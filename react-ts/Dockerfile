FROM node:18-alpine as builder

WORKDIR /code

ADD package.json package-lock.json /code/
RUN npm install 

ADD . /code
RUN npm run build

FROM nginx:alpine
COPY --from=builder code/dist /usr/share/nginx/html