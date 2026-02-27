#!/bin/bash
set -e

echo "[*] Generating ECDSA private key..."
openssl ecparam -genkey -name prime256v1 -out private_key.pem

echo "[*] Extracting public key..."
openssl ec -in private_key.pem -pubout -out public_key.pem

echo "[+] Keys generated successfully."
