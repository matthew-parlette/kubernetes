#!/bin/bash
namespace="metallb-system"
name="metallb"
chart="stable/$name"
helm status "$name"
