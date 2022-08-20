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

# git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }

# プロンプトカスタマイズ
PROMPT='
[%B%F{red}%n@%m%f%b:%F{green}%~%f]%F{cyan}$vcs_info_msg_0_%f
%F{yellow}$%f '