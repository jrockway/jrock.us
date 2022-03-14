I bootstrapped this according to the docs at https://www.jaegertracing.io/docs/1.32/operator/

    wget https://github.com/jaegertracing/jaeger-operator/releases/download/v1.32.0/jaeger-operator.yaml

Then you can `kubectl apply -k .` for everything else.
