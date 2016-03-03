# fretes  - ForgeRock on Kubernetes

Run on the ForgeRock Stack (OpenAM, OpenDJ, OpenIDM, OpenIG) on Kubernetes (k8s)

# Prerequisites

You need to have Kubernetes installed to run these examples.  See
http://kubernetes.io

I have been testing with kube verson 1.2-alpha8


If you are on a mac, the Kube-Solo-osx project is an easy way to run a
test K8s Cluster

You will need ForgeRock Docker images. You can build these using the
Dockerfiles in https://stash.forgerock.org/projects/DOCKER/repos/docker/browse

These may or may not be available on the docker hub (we are still trying
  to work out the policy for images).

If you push these images somewhere else you will need to modify the image:
tag in the manifests.


# Samples:

am-dj-persistent - example that shows how to run OpenAM, OpenDJ and a persistent
configuration. This uses Kubernetes Persistent Volumes. This is the most recent
work - so start here.  Please see the README notes in that folder

am-dj-idm - example that includes OpenAM, OpenDJ, OpenIDM. This configuration
is not persistent and will disappear when you quit.



Example:

```
kubectl create -f am-dj-idm
kubectl get pods
kubectl get services
```
