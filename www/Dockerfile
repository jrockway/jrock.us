FROM nginx:1.17-alpine

RUN rm /etc/nginx/conf.d/default.conf && mkdir -p /srv

WORKDIR /srv
COPY jrock.us .

WORKDIR /
COPY nginx.conf /etc/nginx/conf.d/default.conf
