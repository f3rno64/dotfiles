#!/usr/bin/env bash
#
# shellcheck disable=1090
# Allow dynamic source

# {{{ interactive check

if [[ $- != *i* ]]; then return; fi

# }}}
# {{{ configuration

export XF_SHELL="bash"
export XF_TERM="xterm-256color"
export XF_LIB_DIR="$HOME/.xf-bash-lib"
export XF_VIM_EDITORS=('nvim-gtk' 'nvim' 'vim' 'vi')
export XF_DESIRED_EDITORS=("${XF_VIM_EDITORS[@]} nano")

export XF_NVIM_CONFIG_PATH="$HOME/.config/nvim/init.nvim"
export XF_NVIM_GTK_CONFIG_PATH="$HOME/.config/nvim/ginit.vim"

export XF_VIM_PLUGIN_DIR="$HOME/.vim-plugins"
export XF_NVIM_PLUGIN_DIR="$HOME/.nvim-plugins"

export XF_NVM_PATH="$HOME/.nvm"
export XF_LOGGING=0

# }}}
# {{{ load xf-bash-lib

XF_LIB_ENTRY_SH="$XF_LIB_DIR/xf_bash_lib.sh"

if [[ -x "$XF_LIB_ENTRY_SH" ]]; then
  source "$XF_LIB_ENTRY_SH"
else
  echo "xf bash library not found at: $XF_LIB_ENTRY_SH"
  return 1
fi

# }}}
# {{{ export environment

RESOLVED_USER="$(xf_get_user)"
RESOLVED_HOSTNAME="$(xf_get_hostname)"
RESOLVED_EDITOR="$(xf_resolve_editor)"

export SHELL="$XF_SHELL"
export TERM="$XF_TERM"
export USER="$RESOLVED_USER"
export HOSTNAME="$RESOLVED_HOSTNAME"
export EDITOR="$RESOLVED_EDITOR"

# }}}
# {{{ bash options

shopt -s autocd expand_aliases cdspell checkhash checkjobs complete_fullquote
shopt -s direxpand dirspell dotglob execfail

# }}}
# {{{ vim as man pager

if xf_has_vim; then
  export MANPAGER="$EDITOR +Man!"

  # vim-superman config
  complete -o default -o nospace -F _man vman

  if xf_has_nvim; then
    xf_safe_add_dir_to_path "$XF_NVIM_PLUGIN_DIR/vim-superman/bin"
  else
    xf_safe_add_dir_to_path "$XF_VIM_PLUGIN_DIR/vim-superman/bin"
  fi
fi

# }}}
# {{{ ensure home folder structure

XF_HOME_SRC_DIR="$HOME/.src"
XF_HOME_BIN_DIR="$HOME/.bin"
XF_HOME_LOCAL_BIN_DIR="$HOME/.local/bin"

xf_ensure_dir "$XF_HOME_SRC_DIR"
xf_ensure_dir "$XF_HOME_BIN_DIR"
xf_ensure_dir "$XF_HOME_LOCAL_BIN_DIR"

xf_safe_add_dir_to_path "$XF_HOME_BIN_DIR"
xf_safe_add_dir_to_path "$XF_HOME_LOCAL_BIN_DIR"
xf_safe_add_dir_to_path "/usr/local/bin"

# }}}
# {{{ python bin path

PYTHON_PATH="$HOME/Library/Python/3.8"

if [[ -d "$PYTHON_PATH" ]]; then
  xf_safe_add_dir_to_path "$PYTHON_PATH/bin"
fi

# }}}
# {{{ homebrew bin path

HOMEBREW_BIN_PATH="/opt/homebrew/bin"

if [[ -d "$HOMEBREW_BIN_PATH" ]]; then
  xf_safe_add_dir_to_path "$HOMEBREW_BIN_PATH"
fi

# }}}
# {{{ powerline-shell

function _update_ps1() {
  PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
  PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# }}}
# {{{ plugins/autocomplete

xf_safe_source "$HOME/.autojump/share/autojump/autojump.bash"
xf_safe_source "$(xf_git_repo_path 'alacritty')/extra/completions/alacritty.bash"
xf_safe_source "$(xf_git_repo_path 'gjsheep' 'bash-wakatime')/bash-wakatime.sh"

# }}}
# {{{ OVHcloud Web PaaS CLI configuration

WEBPASS_CLI_PATH="$HOME/.webpaas-cli"
WEBPASS_CLI_RC_PATH="$WEBPASS_CLI_PATH/shell-config.rc"

if [[ -f "$WEBPASS_CLI_PATH" ]]; then
  xf_safe_add_dir_to_path "$WEBPASS_CLI_PATH/bin"
  xf_safe_source "$WEBPASS_CLI_RC_PATH"
fi

# }}}
# {{{ nix-on-droid

NIX_ON_DRIOD_SCRIPT_DIR="$HOME/.nix-profile/etc/profile.d"

if [[ -f "$NIX_ON_DRIOD_SCRIPT_DIR" ]]; then
  xf_safe_source "$NIX_ON_DRIOD_SCRIPT_DIR/gawk.sh"
  xf_safe_source "$NIX_ON_DRIOD_SCRIPT_DIR/hm-session-vars.sh"
  xf_safe_source "$NIX_ON_DRIOD_SCRIPT_DIR/nix-daemon.sh"
  xf_safe_source "$NIX_ON_DRIOD_SCRIPT_DIR/nix-on-droid-session-init.sh"
  xf_safe_source "$NIX_ON_DRIOD_SCRIPT_DIR/nix.sh"
  xf_safe_source "$NIX_ON_DRIOD_SCRIPT_DIR/command-not-found.sh"
fi

# }}}

PATH="/Users/cris.mihalache/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/cris.mihalache/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/cris.mihalache/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/cris.mihalache/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/cris.mihalache/perl5"; export PERL_MM_OPT;

xf_safe_add_dir_to_path "/Users/cris.mihalache/perl5/bin"
xf_safe_add_dir_to_path "/Users/cris.mihalache/Library/Application Support/Coursier/bin"

xf_safe_source "$HOME/.mavenrc"

# The next line updates PATH for the Google Cloud SDK.
xf_safe_source "$HOME/google-cloud-sdk/path.bash.inc"

# The next line enables shell command completion for gcloud.
xf_safe_source "$HOME/google-cloud-sdk/completion.bash.inc"

# TODO: Move elsewhere to not pollute dotfiles
alias mymocks="cd $HOME/.src/github/f3rno64/tradeshift-mock-servers/; npm start";
alias goenv="docker start godb; docker start redis; mymocks";
alias gomigration="cd $HOME/.src/github/f3rno64/tradeshift-go; npm run migrate:mock";
alias goserver="cd $HOME/.src/github/f3rno64/tradeshift-go; nvm use && export NODE_ENV=mock && node --zero-fill-buffers src/server/entryPoints/server.js";
alias goclient="cd $HOME/.src/github/f3rno64/tradeshift-go/go-frontend; nvm use && npm i && npm run build:client:watch";
