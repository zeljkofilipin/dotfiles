# custom zsh prompt, working directory
PS1="%~$ "

# Fresh
export PATH=$PATH:~/.local/bin

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Homebrew

## ruby
export PATH="/opt/homebrew/lib/ruby/gems/3.0.0/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby@3.0/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/ruby@3.0/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby@3.0/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/ruby@3.0/lib/pkgconfig"

## java
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
