#!/usr/bin/env bash

# Fail on error
set -e

# Diagnostics
java --version
node --version
npm --version

# Generate a checksum
echo "Hello world" > hello.txt
sha256sum hello.txt > hello.txt.sha256

ls -la
