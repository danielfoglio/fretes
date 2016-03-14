#!/bin/bash
# Tear down the ingress

kubectl delete rc nginx-ingress-3rdpartycfg
kubectl delete rc default-http-backend
kubectl delete svc default-http-backend
