#!/bin/bash
set -e

FILE="${1:-}"
if [[ -z "$FILE" ]]; then
  echo "Usage: ./scripts/verify_signature.sh <file>"
  exit 1
fi

openssl dgst -sha3-256 -verify public_key.pem -signature signature.bin "$FILE"
