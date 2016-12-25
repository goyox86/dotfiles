# Setup fzf
# ---------
if [[ ! "$PATH" == */home/goyox86/.fzf/bin* ]]; then
  export PATH="$PATH:/home/goyox86/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/goyox86/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/goyox86/.fzf/shell/key-bindings.bash"

