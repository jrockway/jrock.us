FROM debian AS plugin
RUN apt-get update
RUN apt-get install --yes build-essential curl git
RUN curl -L -O "https://cmake.org/files/v3.11/cmake-3.11.0-Linux-x86_64.sh" && \
    bash cmake-3.11.0-Linux-x86_64.sh --skip-license

WORKDIR /src
ADD https://github.com/jaegertracing/jaeger-client-cpp/archive/v0.5.0.tar.gz v0.5.0.tar.gz
RUN tar xzvf v0.5.0.tar.gz
RUN mv jaeger-client-cpp-0.5.0 jaeger-cpp-client

WORKDIR /src/jaeger-cpp-client
RUN mkdir -p build
WORKDIR /src/jaeger-cpp-client/build
COPY export.map .
RUN cmake -DCMAKE_BUILD_TYPE=Release \
          -DJAEGERTRACING_PLUGIN=ON \
          -DBUILD_TESTING=ON \
          -DHUNTER_CONFIGURATION_TYPES=Release \
          ..
RUN  make -j3
RUN  mv libjaegertracing_plugin.so /libjaegertracing_plugin.so
WORKDIR /

FROM envoyproxy/envoy:v1.13.0
COPY --from=plugin /libjaegertracing_plugin.so /usr/local/lib/libjaegertracing_plugin.so
