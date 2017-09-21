#!/bin/bash

pass="OK"

for exe in docker kubectl helm kubeless jq yq pv tmux; do
  if ! which ${exe} > /dev/null; then
    echo "Can't find ${exe}, please install it."
    pass="FAIL"
  fi
done

if ! kubectl get nodes > /dev/null; then
  echo "Kubernetes cluster does not appear to be setup correctly, please fix."
  pass="FAIL"
fi

echo ${pass}
