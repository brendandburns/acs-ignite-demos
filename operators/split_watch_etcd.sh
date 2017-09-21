#!/bin/bash

. ../util.sh

watch kubectl --namespace operator-demo get pods
