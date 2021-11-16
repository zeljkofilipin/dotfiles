# custom zsh prompt, working directory
PS1="%~$ "

# Fix `locale.Error: unsupported locale setting` error message
# https://phabricator.wikimedia.org/P4538
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Homebrew

## node@12
export PATH="/usr/local/opt/node@12/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/node@12/lib"
export CPPFLAGS="-I/usr/local/opt/node@12/include"

## ruby
export PATH="/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"