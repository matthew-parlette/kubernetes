#!/bin/bash

if kubectl get nodes > /dev/null; then
  echo "kubectl is setup"
else
  echo "kubectl is not setup"
  exit 1
fi

if helm list > /dev/null; then
  echo "Helm is initialized"
else
  echo "Helm not initialized, run 'cd tiller && ./apply.sh && helm init --service-account tiller && cd ..'"
  exit 1
fi

echo "Deploying applications..."
# Set executable flag for all subdirectory scripts (apply, status, install, update)
chmod +x */*.sh
pwd=`pwd`
for D in */
do
  echo "Deploying ${D%?}..."
  cd $D
  ./apply.sh
  cd $pwd
done
