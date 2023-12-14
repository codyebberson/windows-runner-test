#!/usr/bin/env bash

# Show commands
set -x

# Fail on error
set -e

# Diagnostics
java --version
node --version
npm --version

# Make dist directory
mkdir -p dist

# Download Shawl
wget https://github.com/mtkennerly/shawl/releases/download/v1.4.0/shawl-v1.4.0-win64.zip
unzip shawl-v1.4.0-win64.zip
mv shawl-v1.4.0-win64.exe dist
wget https://github.com/mtkennerly/shawl/releases/download/v1.4.0/shawl-v1.4.0-legal.zip
unzip shawl-v1.4.0-legal.zip
mv shawl-v1.4.0-legal.txt dist

# Generate a checksum
echo "Hello world" > hello.txt
sha256sum hello.txt > hello.txt.sha256

# Check the checksum
sha256sum -c hello.txt.sha256

ls -la
