#! /usr/bin/env bash

if xf_has_cmd "npm"; then
  npm i -g \
    yarn \
    http-server \
    jsdoc \
    eslint \
    serve-markdown-it \
    gtop \
    vtop \
    tern \
    bfx-cli \
    bash-language-server \
    phantomjs \
    npms \
    pug-lint \
    yaml-lint \
    fixjson \
    stylelint \
    vint \
    neovim
fi
