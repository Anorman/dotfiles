autoload -U compinit zmv
compinit -u

# Vim it.
export KEYTIMEOUT=1
bindkey -v

# Those who cannot remember the past...
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.histfile

typeset -gU cdpath fpath mailpath path

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Apparently this reports time info for long running jobs.
REPORTTIME=10

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# The source of my power.
source ~/.zsh/utils.zsh
source ~/.zsh/prompt.zsh
