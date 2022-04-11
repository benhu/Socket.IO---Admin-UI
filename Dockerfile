FROM node:alpine as build_ui

RUN npm i @socket.io/admin-ui -g

FROM nginx:alpine

RUN apk add --update curl && rm -rf /var/cache/apk/*

COPY --from=build_ui /usr/local/lib/node_modules/@socket.io/admin-ui/ui/dist /usr/share/nginx/html

HEALTHCHECK CMD curl --fail http://localhost || exit 1
