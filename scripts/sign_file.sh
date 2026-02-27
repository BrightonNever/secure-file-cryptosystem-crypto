#!/bin/bash
set -e

FILE="${1:-}"
if [[ -z "$FILE" ]]; then
  echo "Usage: ./scripts/sign_file.sh <file>"
  exit 1
fi

openssl dgst -sha3-256 -sign private_key.pem -out signature.bin "$FILE"
echo "[+] Signed: $FILE -> signature.bin"

