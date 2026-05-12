#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'prompt' \
  'history-substring-search' \

# Set the prompt theme to load.
# # Setting it to 'random' loads a random theme.
# # Auto set to 'off' on dumb terminals.
autoload -Uz promptinit
promptinit
prompt myown

# Customize to your needs...
setopt no_share_history
setopt clobber


zstyle ':prezto:module:syntax-highlighting' highlighters \
  'main' \
  'brackets' \
  'pattern' \
  'line' \
  'cursor' \
  'root'

alias dir='dir --color'
alias ll='ls -l --color=auto'
export PATH=$PATH:~/software/nvim-linux-x86_64/bin/:~/.local/bin/:~/software/ripgrep-15.1.0-x86_64-unknown-linux-musl/:~/software/fzf/

module () {
    eval `/usr/bin/modulecmd zsh $*`
}

unalias cp
