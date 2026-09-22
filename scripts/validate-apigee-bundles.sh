#!/bin/bash

set -e

echo "Validating Apigee bundles..."

find apigee/proxies -name "*.xml" -print0 | while IFS= read -r -d '' file; do
    xmllint --noout "$file"
done

find apigee/sharedflows -name "*.xml" -print0 | while IFS= read -r -d '' file; do
    xmllint --noout "$file"
done

echo "Apigee bundle validation passed."