#!/bin/bash
namespace="default"
name="nginx-ingress"
chart="stable/$name"
helm install "$chart" --name "$name" --values values.yaml --namespace "$namespace"
