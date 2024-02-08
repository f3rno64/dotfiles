#! /usr/bin/env bash

NODE_PACKAGES=(
  'yarn' 'http-server' 'jsdoc' 'eslint' 'eslint_d' 'serve-markdown-it' 'tern'
  'bfx-cli' 'bash-language-server' 'phantomjs' 'npms' 'pug-lint' 'fixjson'
  'stylelint' 'vint' '@commitlint/cli' 'mocha' 'corepack' 'cspell'
  'cssmodules-language-server' 'npm-name' 'npm-upgrade' 'pnpm' 'pnpx'
  'stylelint' 'stylint' '@tailwindcss/language-server' 'taskbook'
  'track-time-cli' 'updates' 'write-good' 'corepack' 'neovim' 'fi' 'vtop'
  'yaml-lint' 'npx' 'textlint' 'tsc' 'prettierd' 'gtop' 'vtop' 'yaml-lint'
  'npx' 'textlint' 'tsc' 'prettierd' 'gtop stylelint-lsp'
  '@biomejs/biome' 'graphql-language-service-server' '@vtsls/language-server'
  'typescript' 'typescript-language-server' 'diagnostic-languageserver'
)

XF_BASH_LIB_PATH="$(pwd)/modules-dotfiles/xf-bash-lib"
XF_BASH_LIB_CORE_UTILITIES_PATH="$XF_BASH_LIB_PATH/lib/core/utility.sh"

if [[ ! -d "$XF_BASH_LIB_PATH" ]]; then
  echo 'the xf-bash-lib could not be found'
  echo "checked $XF_BASH_LIB_PATH"

  return 1
elif [[ ! -x "$XF_BASH_LIB_CORE_UTILITIES_PATH" ]]; then
  echo 'the xf-bash-lib core/utility.sh file could not be found'
  echo "checked $XF_BASH_LIB_CORE_UTILITIES_PATH"

  return 1
fi

# shellcheck source=./modules-dotfiles/xf-bash-lib/lib/core/utility.sh
source "$XF_BASH_LIB_CORE_UTILITIES_PATH"

npm_is_pkg_installed() {
  local -r PKG="$1"

  if npm list --depth 1 --global "$PKG" &> /dev/null; then
    return 0
  fi

  return 1
}

pnpm_is_pkg_installed() {
  local -r PKG="$1"

  if pnpm list --depth 1 --global "$PKG" &> /dev/null; then
    return 0
  fi

  return 1
}

if xf_has_cmd 'pnpm'; then
  echo 'Using pnpm to install packages...'

  for PKG in "${NODE_PACKAGES[@]}"; do
    if pnpm_is_pkg_installed "$PKG"; then
      echo "$PKG is already installed."
      continue
    fi

    echo "Installing $PKG..."

    pnpm add -g "$PKG" &> /dev/null
  done
elif xf_has_cmd 'npm'; then
  echo 'Using npm to install packages...'

  for PKG in "${NODE_PACKAGES[@]}"; do
    if npm_is_pkg_installed "$PKG"; then
      echo "$PKG is already installed."
      continue
    fi

    echo "Installing $PKG..."

    npm i -g "$PKG" &> /dev/null
  done

  echo "Installed ${#NODE_PACKAGES[@]} packages"
else
  echo 'Neither npm nor pnpm are installed. Please install one of them first.'
  return 1
fi
