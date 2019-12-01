Installed like:

    git clone https://github.com/kubernetes-sigs/metrics-server

    cd metrics-server/deploy/1.8+

    ls
        aggregated-metrics-reader.yaml  auth-reader.yaml         metrics-server-deployment.yaml  resource-reader.yaml
        auth-delegator.yaml             metrics-apiservice.yaml  metrics-server-service.yaml

    kubectl create -f .
