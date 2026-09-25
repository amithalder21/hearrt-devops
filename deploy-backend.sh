#!/bin/bash
set -e

# Securely write the environment variables injected by GoCD to a .env file
echo "$ENV_FILE_CONTENTS" > .env

# Deploy the backend stack
docker compose -f backend-compose.yml pull
docker compose -f backend-compose.yml up -d
