# custom bash prompt user@host:working directory
PS1="\w$ "

# pwstore
GPG_TTY=$(tty)
export GPG_TTY

# Fix `locale.Error: unsupported locale setting` error message
# https://phabricator.wikimedia.org/P4538
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# fab
# pip install fabric==1.14.0 --user
export PATH=~/Library/Python/2.7/bin:$PATH

# Homebrew
export PATH="/usr/local/lib/ruby/gems/2.5.0/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Node 10 via Homebrew
export PATH="/usr/local/opt/node@10/bin:$PATH"
