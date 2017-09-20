#!/bin/bash

. ../util.sh

run "helm inspect values stable/kube-lego"

run "curl https://demos.azure-containers.io"

run "cat kube-lego-values.yaml"

run "helm install -f kube-lego-values.yaml stable/kube-lego"

run "cat ingress-ssl.yaml"

run "kubectl apply -f ingress-ssl.yaml"
