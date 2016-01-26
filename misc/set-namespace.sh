#!/usr/bin/env bash

# Example of setting a namespace context
kubectl config set-context dev --namespace=default --cluster=gke_frstack-1077_us-central1-f_openam \
--user=gke_frstack-1077_us-central1-f_openam


kubectl config set-context tenant1 --namespace=tenant1 --cluster=gke_frstack-1077_us-central1-f_openam \
      --user=gke_frstack-1077_us-central1-f_openam


# To switch names spaces

kubectl config use-context dev
