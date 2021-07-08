
source "/usr/local/share/antigen/antigen.zsh"

# Load Antigen configurations
antigen init ~/.antigenrc

# Starship prompt
eval "$(starship init zsh)"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Bat based man pager
export MANPAGER="sh -c 'col -bx | bat -l man -p --theme=base16-tomorrow-night'"
# Starship
eval "$(starship init zsh)"

# chruby
source /usr/local/share/chruby/chruby.sh

# Base16 Colors
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
# Fzf BAT based preview window
export BAT_THEME="base16"

# Nice colors on Neovim
export COLORTERM="truecolor"

# Created by `userpath` on 2021-05-20 18:08:58
export PATH="$PATH:/home/goyox86/.local/bin:/usr/home/goyox86/.local/bin"

# System info
neofetch

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
export PATH="/usr/local/opt/llvm/bin:$PATH"
