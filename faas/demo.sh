#!/bin/bash

. ../util.sh

run "kubectl create ns kubeless"

run "curl -sL https://github.com/kubeless/kubeless/releases/download/v0.1.0/kubeless-v0.1.0.yaml | kubectl create -f -"

run "kubectl get functions"

run "cat simple.py"

run "kubeless function deploy get-python --runtime python2.7 --handler test.foobar --from-file simple.py --trigger-http"

run "kubectl get functions"

run "kubeless function call get-python --data '{\"echo\": \"echo echo\"}'"

run "kubeless function delete get-python"

run "kubectl delete namespace kubeless"
