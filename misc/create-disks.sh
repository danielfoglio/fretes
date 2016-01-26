#!/bin/bash
# Commands to create PD disks needed right now for storing openam config
# Containers are ephemeral - so we need some way of storing
# The AM persistent state. This should be replaced over time
# with ENV vars passed to the AM image that auto-create the
# bootstrap and ~/openam

ZONE=${ZONE:-us-central1-f}


gcloud compute disks create disk1 --size 2GB  --zone $ZONE
gcloud compute disks create disk2 --size 2GB  --zone $ZONE
gcloud compute disks create disk3 --size 5GB  --zone $ZONE
