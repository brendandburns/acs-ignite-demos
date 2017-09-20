#!/bin/bash

. ../util.sh

RESOURCE_GROUP="k8s-build"
NAME="build"

run "az group create --name=${RESOURCE_GROUP} --location=eastus"

run "az acs create --name=${NAME} --resource-group=${RESOURCE_GROUP} --orchestrator-type=kubernetes"

run "az acs kubernetes get-credentials --name=${NAME} --resource-group=${RESOURCE_GROUP}"

run "kubectl get nodes"

