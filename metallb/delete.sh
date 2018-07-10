#!/bin/bash
kubectl delete --namespace metallb-system configmap config
helm del --purge metallb
