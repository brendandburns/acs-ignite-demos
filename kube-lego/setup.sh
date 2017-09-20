#!/bin/bash


helm install stable/nginx-ingress

kubectl run nginx --image=nginx

kubectl expose deployments/nginx --port=80

kubectl create -f ingress.yaml

