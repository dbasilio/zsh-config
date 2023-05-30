### oh-my-zsh Setup ###
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Don't set a theme, pure will do it later
ZSH_THEME=""

# update automatically without asking
zstyle ':omz:update' mode auto

# how often to auto-update (in days)
zstyle ':omz:update' frequency 13

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

### Pure setup ###
fpath+=($HOME/.zsh/pure)

# Show pure stash symbols
zstyle :prompt:pure:git:stash show yes

autoload -U promptinit; promptinit
prompt pure

### Personal Settings ###
alias gpll='git pull'
alias gpsh='git push'
alias gadd='git add .'
alias grebase='git rebase $(git_main_branch)'
alias gs='git status'
alias gdiff='git diff'
alias gmerge='git merge $(git_main_branch)'

# Don't share history between different terminals
unsetopt share_history

# Default shell directory
# It's better to let vscode navigate you when terminal is opened from vscode
if [ -z $VSCODE_INJECTION ]
then
    cd {{DEFAULT_SHELL_DIR}}
fi
