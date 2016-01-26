#!/usr/bin/env bash

for file in *.yaml
do
   kubectl create -f $file
done


sleep 10
kubectl get svc

echo run the following:
echo kubectl create -f ssoconfig.yaml
