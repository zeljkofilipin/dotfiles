PS1="\w$ " # custom bash prompt user@host:working directory
export GPG_TTY=$(tty)
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH=~/Documents/phabricator/arcanist/bin:$PATH # https://www.mediawiki.org/wiki/Phabricator/Arcanist

# brew install pyenv pyenv-virtualenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
