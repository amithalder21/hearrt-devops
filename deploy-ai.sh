#!/bin/bash
set -e

# Securely write the environment variables injected by GoCD to a .env file
echo "$ENV_FILE_CONTENTS" > .env

# Deploy the AI stack
docker compose -f ai-compose.yml pull
docker compose -f ai-compose.yml up -d
