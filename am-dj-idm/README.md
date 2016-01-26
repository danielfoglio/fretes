# Example showing openam, ssoadm config

Does not use persistent disk - so will get reset every time. This is primarily for
quick demos.

# Instructions for Google Container Engine (GKE)

* Install the gcloud tools, have an an account on GCE
* Run misc/create-cluster.sh to create a cluster. You will need to edit for your
environment

Run the following command to create the instances:

kubectl create -f am-dj

This will create an instnace of OpenAM and OpenDJ, and create k8s services.
The configuration from OpenAM is stored in git:
https://github.com/ForgeRock/stack-config.git

If you want a different configuration, edit *-controller and change the repo
to your own.

The configuration is cloned to the cluster, and used to configure OpenAM.


Wait until the load balancer is up, and get the external IP:

kubectl get svc

Put the IP in /etc/hosts:

xx.xx.xx.xx  openam.example.com

If you bring up http://openam.example.com/openam, you should have a functional
OpenAM instance.
