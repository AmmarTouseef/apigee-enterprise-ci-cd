#!/bin/bash

set -e

TARGET_SERVER_FILE="$1"
APIGEE_ORG="$2"
APIGEE_ENV="$3"

if [ -z "$TARGET_SERVER_FILE" ] || [ -z "$APIGEE_ORG" ] || [ -z "$APIGEE_ENV" ]; then
    echo "Usage: ./deploy-targetserver.sh <target-server-file> <org> <environment>"
    exit 1
fi

echo "Deploying Target Server from: $TARGET_SERVER_FILE"
echo "Organization: $APIGEE_ORG"
echo "Environment: $APIGEE_ENV"

echo "Target Server deployment step will be executed by Jenkins."