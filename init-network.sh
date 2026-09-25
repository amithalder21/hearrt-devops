#!/bin/bash
# Creates the shared Docker network for decoupled services

NETWORK_NAME="hearrt_network"

if ! docker network ls | grep -q "$NETWORK_NAME"; then
  echo "Creating shared docker network: $NETWORK_NAME"
  docker network create "$NETWORK_NAME"
else
  echo "Network $NETWORK_NAME already exists."
fi
