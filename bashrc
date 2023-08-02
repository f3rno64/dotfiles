#! /usr/bin/env bash
#
# shellcheck disable=1090
# Allow dynamic source

# {{{ interactive check

if [[ $- != *i* ]]; then return; fi

# }}}
# {{{ bash options

shopt -s autocd expand_aliases cdspell checkhash checkjobs complete_fullquote
shopt -s direxpand dirspell dotglob execfail

# }}}
# {{{ configuration

export XF_SHELL="bash"
export XF_TERM="tmux-256color"
export XF_LIB_DIR="$HOME/.modules-dotfiles/xf-bash-lib"
export XF_VIM_EDITORS=('nvim-gtk' 'nvim' 'vim' 'vi')
export XF_DESIRED_EDITORS=("${XF_VIM_EDITORS[@]} nano")
export XF_HOME_SRC_DIR

export XF_NVIM_CONFIG_PATH="$HOME/.config/nvim/init.vim"
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
export GIT_EDITOR="$RESOLVED_EDITOR"

# }}}
# {{{ homebrew bin path

HOMEBREW_BIN_PATH="/opt/homebrew/bin"

if [[ -d "$HOMEBREW_BIN_PATH" ]]; then
  xf_safe_add_dir_to_path "$HOMEBREW_BIN_PATH"
fi

# }}}
# {{{ ensure home folder structure

export XF_SRC_DIR="$HOME/.src"
export XF_HOME_BIN_DIR="$HOME/.bin"
export XF_HOME_LOCAL_BIN_DIR="$HOME/.local/bin"
export XF_HOME_BASH_SCRIPTS_DIR="$HOME/.bash"

xf_ensure_dir "$XF_SRC_DIR"
xf_ensure_dir "$XF_HOME_BIN_DIR"
xf_ensure_dir "$XF_HOME_LOCAL_BIN_DIR"
xf_ensure_dir "$XF_HOME_BASH_SCRIPTS_DIR"

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
# {{{ powerline-shell for non-vtty

function _update_ps1() {
  PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
  POWERLINE_SHELL_CONFIG_DIR="$HOME/.config/powerline-shell"
  POWERLINE_SHELL_PRIMARY_CONFIG_PATH="$POWERLINE_SHELL_CONFIG_DIR/config.json"

  if xf_is_vtty; then
    POWERLINE_SHELL_CONFIG_PATH="$POWERLINE_SHELL_CONFIG_DIR/config-vtty.json"
  else
    POWERLINE_SHELL_CONFIG_PATH="$POWERLINE_SHELL_CONFIG_DIR/config-tty.json"
  fi

  cat "$POWERLINE_SHELL_CONFIG_PATH" > "$POWERLINE_SHELL_PRIMARY_CONFIG_PATH"

  PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# }}}
# {{{ tty font

XF_TTY_FONT=ter-u12n.psf.gz
XF_TTY_FONT_HEIGHT=12

if xf_is_vtty; then
  sudo setfont -h"$XF_TTY_FONT_HEIGHT" "$XF_TTY_FONT"
fi

# }}}
# {{{ plugins/autocomplete

xf_safe_source "$HOME/.autojump/share/autojump/autojump.bash"
xf_safe_source "$(xf_git_repo_path 'alacritty')/extra/completions/alacritty.bash"
xf_safe_source "$(xf_git_repo_path 'gjsheep' 'bash-wakatime')/bash-wakatime.sh"
xf_safe_source "$HOME/.modules-dotfiles/npm-completion-fast/npm-completion-fast.bash"

# }}}
# {{{ OVHcloud Web PaaS CLI configuration

WEBPASS_CLI_PATH="$HOME/.webpaas-cli"
WEBPASS_CLI_RC_PATH="$WEBPASS_CLI_PATH/shell-config.rc"

if [[ -f "$WEBPASS_CLI_PATH" ]]; then
  xf_safe_add_dir_to_path "$WEBPASS_CLI_PATH/bin"
  xf_safe_source "$WEBPASS_CLI_RC_PATH"
fi

# }}}
# {{{ custom environment specific bash scripts

xf_init_custom_scripts() {
  local -r SRC_TREE="$(tree -a -i -f "$XF_HOME_BASH_SCRIPTS_DIR" | grep '.sh')"
  local -r SRC_FULL_PATHS="$(echo $SRC_TREE | awk '{ FS=" " } { print $2 }')"

  local -r OLD_IFS="$IFS"
  IFS="\n"
  local -r SCRIPTS_PATHS="$SRC_FULL_PATHS"
  IFS="$OLD_IFS"

  for SCRIPT in $SCRIPTS_PATHS
  do
    if [ ! -z "$SCRIPT" ]; then
      local -r SCRIPT_REL_PATH="$(realpath --relative-to="$HOME" "$SCRIPT")"

      xf_safe_source "$SCRIPT"
    fi
  done
}

if [[ -d $XF_HOME_BASH_SCRIPTS_DIR ]]; then
  xf_init_custom_scripts
fi

# }}}

# TODO: Extract/refactor
complete -C /usr/bin/terraform terraform

# TODO: Extract/refactor
# HSTR configuration - add this to ~/.bashrc
alias hh=hstr                    # hh to be alias for hstr
export HSTR_CONFIG=hicolor       # get more colors
shopt -s histappend              # append new history items to .bash_history
export HISTCONTROL=ignorespace   # leading space hides commands from history
export HISTFILESIZE=10000        # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE}  # increase history size (default is 500)
# ensure synchronization between bash memory and history file
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"
function hstrnotiocsti {
    { READLINE_LINE="$( { </dev/tty hstr ${READLINE_LINE}; } 2>&1 1>&3 3>&- )"; } 3>&1;
    READLINE_POINT=${#READLINE_LINE}
}
# if this is interactive shell, then bind hstr to Ctrl-r (for Vi mode check doc)
if [[ $- =~ .*i.* ]]; then bind -x '"\C-r": "hstrnotiocsti"'; fi

GPG_TTY="$(tty)"
export HSTR_TIOCSTI=n
export GPG_TTY


# if [ -z "$XF_SSH_IS_SETUP" ]; then
#   eval "$(ssh-agent)"
#
#   ssh-add ~/.ssh/id_rsa
#   ssh-add ~/.ssh/id_rsa_github
#
#   export XF_SSH_IS_SETUP=1
# fi

export RUSTC_WRAPPER=sccache

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
. "$HOME/.cargo/env"
