eval "$(nodenv init -)"
export PATH="$HOME/.nodenv/bin:$PATH"
export PATH=~/src/github.com/baseinc/basedev-docker/bin:$PATH

###### homebrewのパス ######
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


####### コマンドヒストリー #######
# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history

# メモリに保存される履歴の件数
export HISTSIZE=10000

# 履歴ファイルに保存される履歴の件数
export SAVEHIST=10000

# 重複を記録しない
setopt hist_ignore_dups

# 開始と終了を記録
setopt EXTENDED_HISTORY

# 余分なスペースを削除してヒストリに保存する
setopt hist_reduce_blanks


ZSH_THEME="candy"

autoload -Uz colors
colors

# git-promptの読み込み
source ~/.zsh/git-prompt.sh

# git-completionの読み込み
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit

# プロンプトのオプション表示設定
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# プロンプトの表示設定(好きなようにカスタマイズ可)
setopt PROMPT_SUBST ; PS1='%F{green}%n@%m%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f
\$ '
~