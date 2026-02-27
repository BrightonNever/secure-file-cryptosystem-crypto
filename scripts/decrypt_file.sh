#!/bin/bash
set -e

FILE="${1:-}"
if [[ -z "$FILE" ]]; then
  echo "Usage: ./scripts/decrypt_file.sh <file.enc>"
  exit 1
fi

OUT="decrypted_$(basename "$FILE" .enc)"
openssl enc -d -aes-256-cbc -in "$FILE" -out "$OUT"
echo "[+] Decrypted: $FILE -> $OUT"
