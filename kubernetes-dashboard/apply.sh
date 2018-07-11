#!/bin/bash

if ./status.sh > /dev/null; then
  echo "Updating..."
  ./update.sh
else
  echo "Installing..."
  ./install.sh
fi
