# custom zsh prompt, working directory
PS1="%~$ "

# pwstore
GPG_TTY=$(tty)
export GPG_TTY

# Fix `locale.Error: unsupported locale setting` error message
# https://phabricator.wikimedia.org/P4538
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Homebrew

## node@10
export PATH="/usr/local/opt/node@10/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/node@10/lib"
export CPPFLAGS="-I/usr/local/opt/node@10/include"

## ruby@2.5
export PATH="/usr/local/lib/ruby/gems/2.5.0/bin:$PATH"
export PATH="/usr/local/opt/ruby@2.5/bin:$PATH"