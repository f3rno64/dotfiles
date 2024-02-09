#!/usr/bin/env bash

source "$(dirname "$0")/variables.sh"

echo 'Updating node package list...'

PKGS_LIST_FPATH="${PKG_LISTS_DIR_PATH}/${GLOBAL_NODE_PKG_LIST_FN}"

if [[ -f "$PKGS_LIST_FPATH" ]]; then
  echo "Removing existing node packages list file..."
  rm "$PKGS_LIST_FPATH"
fi

PKGS_LIST="$(npm list -g -p | cut -d/ -f10- | tr '\n' ' ' | xargs)"
PKGS_COUNT="$(npm list -g -p | cut -d/ -f10- | grep -c '\w')"

{
  echo '#! /usr/bin/env bash'
  echo ''
  echo "LIST=("
  # shellcheck disable=SC2086
  printf "'%s' " $PKGS_LIST | fold --spaces --width 74
  echo ''
  echo ')'
} > "$PKGS_LIST_FPATH"

sed -i -e "s/^'/  '/g" "$PKGS_LIST_FPATH"
sed -i -e "s/ $//g" "$PKGS_LIST_FPATH"

echo "Updated node package list with $PKGS_COUNT packages at $PKGS_LIST_FPATH"
