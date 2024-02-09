#!/usr/bin/env bash

source "$(dirname "$0")/variables.sh"

if [[ ! -d "$PKG_LISTS_DIR_PATH" ]]; then
  mkdir -p "$PKG_LISTS_DIR_PATH"
  echo "Created package lists directory at $PKG_LISTS_DIR_PATH"
else
  echo "Package lists directory already exists at $PKG_LISTS_DIR_PATH"
fi
