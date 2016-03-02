#!/bin/bash

# See https://github.com/kubernetes/contrib/tree/master/ingress/controllers/nginx-third-party

P="https://raw.githubusercontent.com/kubernetes/contrib/master/ingress/controllers/nginx-third-party"

curl -s "$P/examples/default-backend.yaml" | kubectl create -f -

kubectl expose rc default-http-backend --port=80 --target-port=8080 --name=default-http-backend

curl -s "$P/examples/rc-default.yaml" | kubectl create  -f -
