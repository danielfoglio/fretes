#!/bin/sh
# Bounce all except service (so we dont lose our IP). Used for testing


SVC="opendj-controller openam-controller ssoconfig"

for svc in $SVC
do
  kubectl delete -f $svc.yaml
done

echo waiting...
sleep 30


for svc in $SVC
do
 echo $svc
  kubectl create -f $svc.yaml
  sleep 10
done
