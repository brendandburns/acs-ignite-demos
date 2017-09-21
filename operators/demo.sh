#!/bin/bash

. ../util.sh

run "cat etcd-operator.yaml"

run "kubectl create -f etcd-operator.yaml"

run "kubectl --namespace operator-demo get pods"

run "kubectl get thirdpartyresources"

run "cat etcd-cluster.yaml"

run "kubectl create -f etcd-cluster.yaml"

tmux new -d -s my-session \
    "$(dirname $BASH_SOURCE)/split_watch_etcd.sh" \; \
    split-window -v -p 66 "$(dirname ${BASH_SOURCE})/split_update_etcd.sh" \; \
    attach

