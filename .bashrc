

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# dry this up, similar to https://github.com/webpro/dotfiles/blob/master/runcom/.bash_profile#L24
if [ -f ~/.dotfiles/.alias ]; then
  . ~/.dotfiles/.alias
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash

   # Add git completion to aliases
  __git_complete gco _git_checkout
  __git_complete gb _git_branch
fi

if [ -f ~/.dotfiles/.prompt ]; then
  . ~/.dotfiles/.prompt
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

export PATH="$HOME/.cargo/bin:$PATH"

source /usr/local/opt/asdf/asdf.sh

# From bash Reference:
# If $CDPATH is set, the cd built-in will not implicitly append the current directory to it.
#T his means that cd will fail if no valid directory name can be constructed from any of the entries in $CDPATH,
# even if a directory with the same name as the name given as an argument to cd exists in the current directory.
CDPATH=".:~:~"

