## k8s local cluster over kind 

```
kind create cluster --config ./k8s-cluster-kind/cluster.yaml
```

## GH Actions Secrets needed

DOCKERHUB_USERNAME
DOCKERHUB_TOKEN
KUBECONFIG


## Create EKS cluster

```
eksctl create cluster --name=cluster-1 --nodes=1
```