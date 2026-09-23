#!/usr/bin/env bash

set -euo pipefail

PROXY_NAME="${1:?Proxy name is required}"
PROXY_ARTIFACT="${2:?Proxy artifact is required}"
APIGEE_ORG="${3:?Apigee organization is required}"
APIGEE_ENV="${4:?Apigee environment is required}"

echo "=== APIGEE PROXY DEPLOYMENT ==="
echo "Proxy       : ${PROXY_NAME}"
echo "Artifact    : ${PROXY_ARTIFACT}"
echo "Organization: ${APIGEE_ORG}"
echo "Environment : ${APIGEE_ENV}"

if [ ! -f "${PROXY_ARTIFACT}" ]; then
    echo "ERROR: Proxy artifact not found: ${PROXY_ARTIFACT}"
    exit 1
fi

echo "Deploying proxy..."

gcloud apigee apis deploy "${PROXY_NAME}" \
    --organization="${APIGEE_ORG}" \
    --environment="${APIGEE_ENV}" \
    --source="${PROXY_ARTIFACT}" \
    --override

echo "Proxy deployment completed successfully."