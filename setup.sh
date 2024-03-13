#!/bin/bash
# Install nvm if not installed
if ! command -v nvm &> /dev/null; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
fi
# Check if current node version is not installed
if ! nvm use &> /dev/null; then
  # Install new node version
  nvm install
fi
# Install bun
if ! command -v bun &> /dev/null; then
  npm install -g bun
fi

bun install