#!/bin/bash

set -e

SHARED_FLOW_NAME="$1"
APIGEE_ORG="$2"
APIGEE_ENV="$3"

if [ -z "$SHARED_FLOW_NAME" ] || [ -z "$APIGEE_ORG" ] || [ -z "$APIGEE_ENV" ]; then
    echo "Usage: ./deploy-sharedflow.sh <shared-flow-name> <org> <environment>"
    exit 1
fi

echo "Deploying shared flow: $SHARED_FLOW_NAME"
echo "Organization: $APIGEE_ORG"
echo "Environment: $APIGEE_ENV"

echo "Shared flow deployment step will be executed by Jenkins."