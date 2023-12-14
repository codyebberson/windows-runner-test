#!/usr/bin/env bash

# Show commands
set -x

# Fail on error
set -e

# Diagnostics
java --version
node --version
npm --version

# Generate a checksum
echo "Hello world" > hello.txt
sha256sum hello.txt > hello.txt.sha256

# Check the checksum
sha256sum -c hello.txt.sha256

ls -la
