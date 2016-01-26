#!/usr/bin/env bash
# Prep the cluster with persistent disk
# todo: Should we roll create disk into this as well?


# Create secrets  for OpenAM, agents, etc.
kubectl create -f pv/secrets.yaml

kubectl create -f pv/pd-pv.yaml

