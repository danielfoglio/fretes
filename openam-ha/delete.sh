#!/usr/bin/env bash

export ZONE=us-central1-f

gcloud beta container clusters delete openam --zone $ZONE