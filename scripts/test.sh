#!/usr/bin/env bash
set -euo pipefail

echo "Running basic CI test..."

# INTENTIONAL FAILURE for evidence (leave it for now)
if [[ ! -f "build/expected.txt" ]]; then
  echo "FAIL: build/expected.txt was not found."
  exit 1
fi

echo "PASS"
