FROM nginx:1.17

RUN rm /etc/nginx/nginx.conf && mkdir -p /srv

WORKDIR /
COPY nginx.conf /etc/nginx/nginx.conf

WORKDIR /srv
COPY jrock.us .
