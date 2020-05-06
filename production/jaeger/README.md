I bootstrapped this according to the docs at https://www.jaegertracing.io/docs/1.17/operator/.

    kubectl apply -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.17.0/deploy/crds/jaegertracing.io_jaegers_crd.yaml # <2>
    kubectl apply -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.17.0/deploy/service_account.yaml
    kubectl apply -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.17.0/deploy/role.yaml
    kubectl apply -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.17.0/deploy/role_binding.yaml
    kubectl apply -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.17.0/deploy/operator.yaml

Then you can `kubectl apply -k .` for everything else.
