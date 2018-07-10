#!/bin/bash
namespace="metallb-system"
name="metallb"
chart="stable/$name"
kubectl apply -f configmap.yaml
helm upgrade --values values.yaml --namespace "$namespace" "$name" "$chart"
