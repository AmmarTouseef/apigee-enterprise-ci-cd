#!/bin/bash

set -e

PROXY_NAME="$1"
APIGEE_ORG="$2"
APIGEE_ENV="$3"
REVISION="$4"

if [ -z "$PROXY_NAME" ] || [ -z "$APIGEE_ORG" ] || [ -z "$APIGEE_ENV" ] || [ -z "$REVISION" ]; then
    echo "Usage: ./rollback.sh <proxy-name> <org> <environment> <revision>"
    exit 1
fi

echo "Rolling back proxy: $PROXY_NAME"
echo "Organization: $APIGEE_ORG"
echo "Environment: $APIGEE_ENV"
echo "Target revision: $REVISION"

echo "Rollback step will be executed by Jenkins."