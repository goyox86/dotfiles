#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Jose Narvaez <goyox86@@gmail.com>
#

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/goyox86/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="pygmalion"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-syntax-highlighting vi-mode battery)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Custom Bash completions
fpath=(~/.zsh/completion $fpath)
autoload -Uz bashcompinit && bashcompinit -l
source ~/.zsh/completion/_diesel

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Aliases
source ~/.aliases

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="/home/goyox86/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

# rustup.rs
source $HOME/.cargo/env

# golang
export GOPATH=~/Code/go
export PATH=$PATH:$GOPATH/bin

# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
RUBIES+=(~/.rubies/*)

# Haskellus
export PATH=$HOME/.cabal/bin:/opt/cabal/1.22/bin:/opt/ghc/7.10.3/bin:$PATH
export PATH=~/.cabal/bin:/opt/cabal/1.22/bin:/opt/ghc/7.10.3/bin:$PATH

# GTK+ 3 HiDPI
#export GDK_SCALE=2
#export GDK_DPI_SCALE=0.5

# Swift
#export PATH=~/Code/swift/toolchain/usr/bin:"${PATH}"

# Ubuntu/Debian Developer vars
export DEBFULLNAME="Jose Narvaez"
export DEBEMAIL="goyox86@@gmail.com"

# Terminix VTE
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

#function custom_prompt() {
#  __git_ps1 "\[\033[0;31m\]\u \[\033[0;36m\]\h:\w\[\033[00m\]" " \n\[\033[0;31m\]>\[\033[00m\] " " %s"
#  VTE_PWD_THING="$(__vte_osc7)"
#  PS1="$PS1$VTE_PWD_THING"
#}
#PROMPT_COMMAND=`custom_prompt`

# Guaka
export PATH=$PATH:/home/goyox86/.Guaka-Generator/bin

# man syntax highlighting
export PAGER=most

export PATH=~/bin:$PATH

# RISC-V toolchain
export PATH=~/.riscv/bin:$PATH

# Qt HiDPI
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCREEN_SCALE_FACTORS=1.5
export QT_QPA_PLATFORMTHEME=gtk2

source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Java/Scala
export JAVA_HOME="/usr/lib/jvm/java-8-oracle/jre/bin/java"
export JDK_HOME="/usr/lib/jvm/java-8-oracle"

# Flatpak theme
#export GTK_THEME="Pop Dark"

neofetch
