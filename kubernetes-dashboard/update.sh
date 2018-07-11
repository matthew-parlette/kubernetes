#!/bin/bash
helm upgrade --values values.yaml --namespace kube-system kubernetes-dashboard stable/kubernetes-dashboard
