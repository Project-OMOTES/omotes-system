kind create cluster --config=./kind-cluster.yaml
kubectl label nodes --overwrite omotes-control-plane type=worker

kubectl apply -f omotes-namespace.yaml
kubectl apply -f env-vars-configmap-secrets.yaml

kubectl apply -f postgres-init-configmap.yaml
kubectl apply -f postgres-persistentvolumeclaim.yaml
kubectl apply -f postgres-deployment.yaml
kubectl apply -f postgres-service.yaml

kubectl apply -f rabbitmq-conf-configmap.yaml
kubectl apply -f rabbitmq-init-configmap.yaml
kubectl apply -f rabbitmq-persistentvolumeclaim.yaml
kubectl apply -f rabbitmq-deployment.yaml
kubectl apply -f rabbitmq-service.yaml

kubectl apply -f influxdb-init-configmap.yaml
kubectl apply -f influxdb-storage-persistentvolumeclaim.yaml
kubectl apply -f influxdb-deployment.yaml
kubectl apply -f influxdb-service.yaml

kubectl apply -f orchestrator-workflows-configmap.yaml
kubectl apply -f orchestrator-deployment.yaml

kubectl apply -f mesido-worker-optimizer-deployment.yaml