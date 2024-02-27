#! /usr/bin/env bash

if [[ -n "$(which gem)" ]]; then
  gem install bundler rubocop timetrap neovim
fi
