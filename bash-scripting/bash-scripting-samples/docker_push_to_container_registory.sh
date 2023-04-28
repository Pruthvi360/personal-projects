#!/usr/bin/env bash

#docker tag app:v1 gcr.io/qwiklabs-gcp-02-ea4ca0d66fa5/web-site:v1.5
#docker push gcr.io/qwiklabs-gcp-02-ea4ca0d66fa5/web-site:v1.5

#gcloud container clusters get-credentials ci-cd --zone us-central1-c --project qwiklabs-gcp-02-ea4ca0d66fa5

## gcloud CLI configuration

sudo snap install google-cloud-cli --classic

gcloud auth login

gcloud config set project qwiklabs-gcp-02-ea4ca0d66fa5

sudo snap install google-cloud-sdk --classic

## gcloud SDK installation parts

sudo apt-get install apt-transport-https ca-certificates gnupg -y

echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

sudo apt-get update && sudo apt-get install google-cloud-cli

sudo apt-get install google-cloud-cli-gke-gcloud-auth-plugin

gcloud init


## kubernetes configuration 

gcloud components install kubectl

gcloud components install gke-gcloud-auth-plugin

sudo apt-get install google-cloud-cli-gke-gcloud-auth-plugin
