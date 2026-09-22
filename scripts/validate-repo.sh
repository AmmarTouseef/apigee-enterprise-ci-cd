#!/bin/bash

set -e

echo "Validating repository structure..."

required_dirs=(
  "apigee/proxies"
  "apigee/sharedflows"
  "apigee/targetservers"
  "apigee/kvms"
  "apigee/api-products"
  "apigee/developers"
  "apigee/developer-apps"
  "environments"
  "scripts"
)

for dir in "${required_dirs[@]}"; do
  if [ ! -d "$dir" ]; then
    echo "ERROR: Missing directory: $dir"
    exit 1
  fi
done

echo "Repository structure validation passed."