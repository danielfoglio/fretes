#!/bin/bash


ZONE=${ZONE:-us-central1-f}

MASTER=frstack
#k8s-openam-master

# detach to master node for initial format

gcloud compute instances detach-disk $MASTER --disk disk1 --zone $ZONE
gcloud compute instances detach-disk $MASTER --disk disk2 --zone $ZONE
gcloud compute instances detach-disk $MASTER --disk disk3 --zone $ZONE

