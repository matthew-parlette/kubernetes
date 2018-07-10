#!/bin/bash
namespace="default"
name="nginx-ingress"
chart="stable/$name"
helm upgrade --values values.yaml --namespace "$namespace" "$name" "$chart"
