#!/bin/bash

set -e

KVM_FILE="$1"
APIGEE_ORG="$2"
APIGEE_ENV="$3"

if [ -z "$KVM_FILE" ] || [ -z "$APIGEE_ORG" ] || [ -z "$APIGEE_ENV" ]; then
    echo "Usage: ./deploy-kvm.sh <kvm-file> <org> <environment>"
    exit 1
fi

echo "Deploying KVM from: $KVM_FILE"
echo "Organization: $APIGEE_ORG"
echo "Environment: $APIGEE_ENV"

echo "KVM deployment step will be executed by Jenkins."