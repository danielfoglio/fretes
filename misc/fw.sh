#!/usr/bin/env bash


PORTS="30180 30080"

for port in $PORTS
do
gcloud compute firewall-rules create kube-$port --allow tcp:$port
done


