#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Set terminal colors
export TERM=xterm-256color

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# export DOCKER_HOST=tcp://0.0.0.0:2376
export PATH=$HOME/.bin:$PATH
alias vi="vim"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

prompt powerlevel10k

# GnuPG Settings
export GPG_TTY=$(tty)

if [ $(which gpgconf) ]; then
  gpgconf --launch gpg-agent
fi
