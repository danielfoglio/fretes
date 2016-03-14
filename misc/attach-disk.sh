#!/bin/bash


ZONE=${ZONE:-us-central1-f}

MASTER=frstack
#k8s-openam-master

# attach to master node for initial format

gcloud compute instances attach-disk $MASTER --disk disk1 --zone $ZONE
gcloud compute instances attach-disk $MASTER --disk disk2 --zone $ZONE
gcloud compute instances attach-disk $MASTER --disk disk3 --zone $ZONE

