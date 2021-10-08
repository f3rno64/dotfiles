#! /usr/bin/env bash

if xf_has_cmd "gem"; then
  gem install \
    bundler \
    rubocop \
    timetrap
fi
