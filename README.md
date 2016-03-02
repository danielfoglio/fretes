# fretes  - ForgeRock on Kubernetes

Run on the ForgeRock Stack (OpenAM, OpenDJ, OpenIDM, OpenIG) on Kubernetes

# Prerequisites

You need to have Kubernetes installed to run these examples.  See
http://kubernetes.io

You will need ForgeRock Docker images. You can build these using the
Dockerfiles in https://stash.forgerock.org/projects/DOCKER/repos/docker/browse 


# Samples:

am-dj-idm - example that includes OpenAM, OpenDJ, OpenIDM. This configuration
is not persistent and will dissapear when you quit.

am-dj-persistent - example that shows how to run OpenAM, OpenDJ and a persistent
configuration. This uses Kubernetes Persistent Volumes.


Example:

```
kubectl create -f am-dj-idm
kubectl get pods
kubectl get services
```
