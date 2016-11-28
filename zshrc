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

# BEGIN DOCKER-IMAGES
export DOCKER_FOR_MAC_ENABLED=true
source /Users/goyox86/Code/zendesk/docker-images/dockmaster/zdi.sh
# END DOCKER-IMAGES

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="/Users/goyox86/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
