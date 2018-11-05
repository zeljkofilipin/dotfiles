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
