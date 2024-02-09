#!/usr/bin/env bash

source "$(dirname "$0")/variables.sh"

if [[ ! -d "$PKG_LISTS_DIR_PATH" ]]; then
  echo "Creating package lists directory at $PKG_LISTS_DIR_PATH..."
  mkdir -p "$PKG_LISTS_DIR_PATH"

  echo 'Updating package lists...'
  bash "$(dirname "$0")/update_lists.sh"
fi

bash "$(dirname "$0")/install_node_list.sh"
