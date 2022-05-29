#!/bin/bash

deploy_cmd="gcloud run deploy $GCP_SERVICE \
    --image $GCP_IMAGE \
    --port $GCP_PORT \
    --region $GCP_REGION"

gcloud config set project $GCP_PROJECT
gcloud auth configure-docker ${GCP_REGION}-docker.pkg.dev
docker push $GCP_IMAGE

eval $deploy_cmd

