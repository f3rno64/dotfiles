#! /usr/bin/env bash

git submodule init
git submodule update

if [[ -d "$HOME/.nvm" ]]; then
  nvm use
  npm i
fi

pip install --user dotfiles

echo 'Point the dotfiles repo to the correct location in the next step.'
echo 'Press Enter to continue...'
read -r -n 1

LOCAL_SOURCE_PATH="$(dirname "$0")"
RC_PATH="$LOCAL_SOURCE_PATH/../dotfilesrc"

"$EDITOR" "$RC_PATH"
cp "$RC_PATH" "$HOME/.dotfilesrc"

dotfiles -f -s

pip install --user dotfiles neovim
