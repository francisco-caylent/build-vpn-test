#! bin/bash

## Reading external IP from instance metadata. 
#curl http://metadata.google.internal/computeMetadata/v1/instance/network-interfaces/0/access-configs/0/external-ip -H "Metadata-Flavor: Google"

# get the cloud build service account

PROJECT_ID=$(gcloud config get-value project)
PROJECT_NUMBER=$(gcloud projects list --filter="$PROJECT_ID" --format="value(PROJECT_NUMBER)")
SERVICE_ACCOUNT="$PROJECT_NUMBER@cloudbuild.gserviceaccount.com"
echo $SERVICE_ACCOUNT

## Updating the whitelist
#gcloud container clusters update gke-e2e-demo --enable-master-authorized-networks --master-authorized-networks $PUBLIC_IP/32 --region us-west1-a --impersonate-service-account=gke-custom@andres-testing.iam.gserviceaccount.com

