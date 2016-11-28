# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/goyox86/.fzf/bin* ]]; then
  export PATH="$PATH:/Users/goyox86/.fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" == */Users/goyox86/.fzf/man* && -d "/Users/goyox86/.fzf/man" ]]; then
  export MANPATH="$MANPATH:/Users/goyox86/.fzf/man"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/goyox86/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/goyox86/.fzf/shell/key-bindings.zsh"

