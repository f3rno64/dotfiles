#! /usr/bin/env bash

BASHRC_PATH="$HOME/.bashrc"

if [[ -f "$BASHRC_PATH" ]]; then
  source "$BASHRC_PATH"
fi
. "$HOME/.cargo/env"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# opam configuration
test -r /home/f3rno64/.opam/opam-init/init.sh && . /home/f3rno64/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
