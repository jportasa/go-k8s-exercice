## GH Actions Secrets needed

DOCKERHUB_USERNAME
DOCKERHUB_TOKEN
KUBECONFIG

## Create k8s cluster issues

I need a public k8s cluster so that GH Actions runner can reach it. I tried to install kind (https://kind.sigs.k8s.io/) in an AWS EC2 but although the EC2 was public I could not make the k8s API certificate valid for an external EC2 public IP. I would need more time to create a EKS cluster via eksctl or terraform.
So what I did to test the helm upgrade command was to run it from my local.

## Release process

Although not implemented, the idea is to add in GH actions pipeline a step triggered when a tag is created, use GoReleaser (https://goreleaser.com/) for example to create the binaries for the different architectures, and push them in the release. Once done we would follow the steps to push to dockerHub and Deploy it with helm upgrade.


## Release process

Although not implemented, in the repo setup we would add a Master protected branch with the corresponding tests, like helm lint, Open Policy as Admission Controller, go tests,..
