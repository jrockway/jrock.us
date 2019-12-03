FROM nginx:1.17.3

WORKDIR /etc/nginx/modules
ADD https://github.com/opentracing-contrib/nginx-opentracing/releases/download/v0.9.0/linux-amd64-nginx-1.17.3-ngx_http_module.so.tgz  /etc/nginx/modules/opentracing.tgz
RUN tar xzvf opentracing.tgz
RUN rm opentracing.tgz
RUN chmod a+rx *.so

WORKDIR /usr/local/lib
ADD https://github.com/jaegertracing/jaeger-client-cpp/releases/download/v0.4.2/libjaegertracing_plugin.linux_amd64.so /usr/local/lib/libjaegertracing_plugin.so
RUN chmod a+rx *.so

WORKDIR /
RUN rm /etc/nginx/nginx.conf
RUN mkdir -p /srv
COPY nginx.conf /etc/nginx/nginx.conf
COPY jaeger-nginx-config.json /etc/jaeger-nginx-config.json

WORKDIR /srv
COPY jrock.us .
