#!/bin/bash
set -e

FILE="${1:-}"
if [[ -z "$FILE" ]]; then
  echo "Usage: ./scripts/encrypt_file.sh <file>"
  exit 1
fi

openssl enc -aes-256-cbc -salt -in "$FILE" -out "$FILE.enc"
echo "[+] Encrypted: $FILE -> $FILE.enc"

