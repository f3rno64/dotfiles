#!/usr/bin/env bash

source "$(dirname "$0")/variables.sh"

if [[ ! -f "$GLOBAL_NODE_PKG_LIST_FPATH" ]]; then
  echo "Node packages list file not found at $GLOBAL_NODE_PKG_LIST_FPATH, updating..."
  bash "$(dirname "$0")/update_node_list.sh"
fi

# shellcheck source=./lists/node_packages
source "${GLOBAL_NODE_PKG_LIST_FPATH}"

INSTALLED_PKG_COUNT=0
SKIPPED_PKG_COUNT=0

for PKG in "${LIST[@]}"; do
  if npm list --depth 1 --global "$PKG" &> /dev/null; then
    echo "Node $PKG is already installed, skipping..."
    SKIPPED_PKG_COUNT=$((SKIPPED_PKG_COUNT + 1))
    continue
  fi

  echo "Installing $PKG..."

  npm i -g "$PKG" &> /dev/null

  INSTALLED_PKG_COUNT=$((INSTALLED_PKG_COUNT + 1))
done

echo "Installed $INSTALLED_PKG_COUNT packages, skipped $SKIPPED_PKG_COUNT."
