#!/bin/bash


helm delete `helm list | grep ingress | awk '{print $0}'`
kubectl delete deployments/nginx
kubectl delete services/nginx
kubectl delete -f ingress.yaml

