# custom zsh prompt, working directory
PS1="%~$ "

# Fix `locale.Error: unsupported locale setting` error message
# https://phabricator.wikimedia.org/P4538
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Homebrew

## node@14
export PATH="/opt/homebrew/opt/node@14/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/node@14/lib"
export CPPFLAGS="-I/opt/homebrew/opt/node@14/include"

## ruby
export PATH="/opt/homebrew/lib/ruby/gems/3.1.0/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"
