#!/usr/bin/env bash
set -euo pipefail

echo "Running basic CI test..."

# INTENTIONAL FAILURE for Milestone 2 evidence:
# We expect a file that does not exist yet.
if [[ ! -f "build/expected.txt" ]]; then
  echo "FAIL: build/expected.txt was not found."
  exit 1
fi

echo "PASS"
