# Default bash_profile. Include with:
#
# if [ -f ~/path/to/dotfiles/bash_profile ]; then
#   source ~/path/to/dotfiles/bash_profile
# fi

# Over-ride system defaults
#
export HISTFILESIZE=9000
export HISTSIZE=9000
export HISTCONTROL=ignoredups

# Ruby/Rbenv
#
alias be='bundle exec'
alias gemset-create="echo '.gems' > .rbenv-gemsets"
export BUNDLER_EDITOR='sublime'
export DISABLE_SPRING=true

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH=/usr/local/bin:/usr/local/bin:$PATH

# Git
#
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  GIT_PROMPT_ONLY_IN_REPO=0
  GIT_PROMPT_START="\w"
  GIT_PROMPT_THEME=Single_line
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

# Helpful functions and aliases
#
alias ls='ls -p'
alias weather="curl http://wttr.in/Wellington"

function clear {
  osascript -e 'tell application "System Events" to keystroke "k" using command down'
}
