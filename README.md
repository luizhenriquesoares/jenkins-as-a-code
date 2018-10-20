# Jenkins And Kubernetes

> Este Jenkins foi configurado e provisionado via código Groovy, Todas as alterações feitas de forma manual serão perdidas no próximo restart, Alterações devem ser feitas em repositório versionado de preferência.

## Install kubernets

1 - curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

2 - echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list

3 - apt-get update

4 - apt-get install kubelet kubectl kubeadm - y


## Cluster HandsOn

1 - kubectl apply -f service.yml

2 - Verifique o serviço kubectl get services

3 - Atualize a ENV KUBERNETES_SERVER_URL com o ip do seu Cluster: kubectl cluster -info | grep aster

4 - kubectl apply -f deployment.yml

5 - kubectl get deployments


## Minikube

1 - minikube start

2 - minikube status

3 - minikube service list


## kubernetes

1 - kubectl apply -f service.yaml

2 - kubectl get pods

3 - kubectl describre pod

4 - kubectl logs

5 - kubectl get pods -o wide

6 - kubectl delete pods

7  - kubectl get services

8  - kubectl get nodes

9  - kubectl run nome-da-imagem --image nginx

10 - kubectl scale deployments nome-imagem --replicas=10

11 - kubectl delete deployments nome-imagem