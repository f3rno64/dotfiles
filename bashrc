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
