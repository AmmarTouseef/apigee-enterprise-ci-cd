#!/usr/bin/env bash

set -euo pipefail

PROXY_NAME="${1:?Proxy name is required}"
PROXY_SOURCE="${2:?Proxy source directory is required}"
OUTPUT_DIR="${3:-artifacts}"

echo "=== APIGEE PROXY PACKAGING ==="
echo "Proxy       : ${PROXY_NAME}"
echo "Source      : ${PROXY_SOURCE}"
echo "Output      : ${OUTPUT_DIR}"

if [ ! -d "${PROXY_SOURCE}" ]; then
    echo "ERROR: Proxy source directory not found: ${PROXY_SOURCE}"
    exit 1
fi

mkdir -p "${OUTPUT_DIR}"

OUTPUT_FILE="${OUTPUT_DIR}/${PROXY_NAME}.zip"

rm -f "${OUTPUT_FILE}"

powershell -Command "Compress-Archive -Path '${PROXY_SOURCE}/*' -DestinationPath '${OUTPUT_FILE}' -Force"

echo "Proxy package created successfully:"
echo "${OUTPUT_FILE}"