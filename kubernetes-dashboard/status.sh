#!/bin/bash
namespace="kube-system"
name="kubernetes-dashboard"
chart="stable/$name"
helm status "$name"
