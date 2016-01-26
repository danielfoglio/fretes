#!/usr/bin/env bash

export ZONE=us-central1-f


gcloud container clusters create openam --network "default" --num-nodes 1 --machine-type  n1-standard-2 --zone $ZONE

