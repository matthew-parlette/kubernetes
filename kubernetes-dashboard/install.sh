#!/bin/bash
helm install stable/kubernetes-dashboard --name kubernetes-dashboard --values values.yaml --namespace kube-system
