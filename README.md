# Secure File Protection System using OpenSSL

## Overview
A small project demonstrating confidentiality, integrity, authentication, and non-repudiation using OpenSSL.

## Features
- Generate ECDSA keys
- Sign files (SHA3-256 + ECDSA)
- Verify signatures
- Encrypt/decrypt files (AES-256-CBC)

## Requirements
- Linux/WSL Ubuntu
- OpenSSL

## Quick Start
```bash
./scripts/generate_keys.sh
./scripts/sign_file.sh sample_files/example.txt
./scripts/verify_signature.sh sample_files/example.txt
./scripts/encrypt_file.sh sample_files/example.txt
./scripts/decrypt_file.sh sample_files/example.txt.enc
