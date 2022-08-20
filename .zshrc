eval "$(nodenv init -)"
export PATH="$HOME/.nodenv/bin:$PATH"
export PATH=~/src/github.com/baseinc/basedev-docker/bin:$PATH

# homebrewのパス
# typeset -U path PATH
# path=(
#  /opt/homebrew/bin(N-/)
#  /opt/homebrew/sbin(N-/)
#  /usr/bin
#  /usr/sbin
#  /bin
#  /sbin
#  /usr/local/bin(N-/)
#  /usr/local/sbin(N-/)
#  /Library/Apple/usr/bin
# )

# pyenvのパス
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"
eval "$(pyenv init -)"