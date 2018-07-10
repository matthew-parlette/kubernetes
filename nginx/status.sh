#!/bin/bash
namespace="default"
name="nginx-ingress"
chart="stable/$name"
helm status "$name"
