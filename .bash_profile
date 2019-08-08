
# dry this up, similar to https://github.com/webpro/dotfiles/blob/master/runcom/.bash_profile#L24
if [ -f ~/.dotfiles/.bashrc ]; then
  . ~/.dotfiles/.bashrc
fi

if [ -f ~/.dotfiles/.alias ]; then
  . ~/.dotfiles/.alias
fi
if [ -f ~/.dotfiles/.prompt ]; then
  . ~/.dotfiles/.prompt
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

export CDPATH=".:~"
