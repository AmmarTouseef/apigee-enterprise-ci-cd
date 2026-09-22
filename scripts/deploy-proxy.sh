#!/bin/bash

set -e

PROXY_NAME="$1"
APIGEE_ORG="$2"
APIGEE_ENV="$3"

if [ -z "$PROXY_NAME" ] || [ -z "$APIGEE_ORG" ] || [ -z "$APIGEE_ENV" ]; then
    echo "Usage: ./deploy-proxy.sh <proxy-name> <org> <environment>"
    exit 1
fi

echo "Deploying proxy: $PROXY_NAME"
echo "Organization: $APIGEE_ORG"
echo "Environment: $APIGEE_ENV"

echo "Proxy deployment step will be executed by Jenkins."