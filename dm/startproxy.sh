#!/bin/sh
# Starts a proxy so the local dm binary can connect to our cluster

echo "Run the following command to install the Deployment Manager"
echo kubectl create -f install.yml

kubectl proxy --port=8001 --namespace=dm &
