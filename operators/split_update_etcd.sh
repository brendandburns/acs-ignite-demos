#!/bin/bash

. ../util.sh

run "clear"

run "kubectl --namespace operator-demo exec -it example-etcd-cluster-0000 -- etcdctl cluster-health"

run "vi etcd-cluster.yaml"

run "kubectl apply -f etcd-cluster.yaml"

run "kubectl --namespace operator-demo exec -it example-etcd-cluster-0000 -- etcdctl cluster-health"

run "kubectl --namespace operator-demo exec -it example-etcd-cluster-0000 -- etcdctl cluster-health"

run "kubectl delete -f etcd-cluster.yaml"

kubectl delete namespaces operator-demo


