# Jenkins e Kubernetes

## Cluster HandsOn

1 - kubectl apply -f service.yml
2 - Verifique o serviço kubectl get services
3 - Atualize a ENV KUBERNETES_SERVER_URL com o ip do seu Cluster: kubectl cluster-info | grep master
4 - kubectl apply -f deployment.yml
5 -  kubectl get deployments

## HELPERS

minikube

1 - minikube start
2 - minikube status
3 - minikube service list

kubernetes

1 - kubectl apply -f service.yaml
2 - kubectl get pods
3 - kubectl describre pod
4 - kubectl logs
5 - kubectl get pods -o wide
6 - kubectl delete pods
