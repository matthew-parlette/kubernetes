#!/bin/bash
namespace="metallb-system"
name="metallb"
chart="stable/$name"
kubectl apply -f configmap.yaml
helm install "$chart" --name "$name" --values values.yaml --namespace "$namespace"
