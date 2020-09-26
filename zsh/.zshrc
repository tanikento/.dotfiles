export PATH=~/Library/Python/3.4/bin:$PATH

# ------------------------------------------------
#  エイリアス設定
# ------------------------------------------------

# Docker
alias dc='docker-compose'
alias de='docker exec'
alias dp='docker ps'
alias di='docker images'

# Git
alias gi='git init'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gf='git fetch'
alias gm='git merge'
alias gl='git log'
alias gs='git status'
alias gb='git branch'
alias gco='git checkout'
alias gd='git diff'
alias gt='git log --graph --all --format="%x09%C(cyan bold)%an%Creset%x09%C(yellow)%h%Creset %C(magenta reverse)%d%Creset %s"'

# Shortcut
alias ll='ls -l'
alias la='ls -la'
alias vb='vi ~/.bashrc'
alias vbp='vi ~/.bash_profile'
alias sbp='source ~/.bash_profile'
alias vz='vi ~/.zshrc'
alias sz='source ~/.zshrc'
alias vs='vi ~/.ssh/config'
alias sps='system_profiler SPHardwareDataType'

# app
alias gooh='open /Applications/Google\ Chrome.app'
alias excel='open -a Microsoft\ Excel'
alias ngrok3000='./ngrok http -host-header="0.0.0.0:3000" 3000'


# --------------------------------------------------
# 基本設定
# -------------------------------------------------

# 日本語を使用
export LANG=ja_JP.UTF-8

# 補完
autoload -Uz compinit
compinit

# 補完後、メニュー選択モードになり左右キーで移動が出来る
zstyle ':completion:*:default' menu select=2

# 表示を詰めてくれる
setopt list_packed

# もしかして表示
setopt correct

# ディレクトリ名でcd
setopt auto_cd

# cdとlsの省略
setopt auto_cd
function chpwd() { ls }
cdpath=(.. ~ ~/training)

# ウィンドウとタブに名前表示
function precmd() {
  # カレントディレクトリを $HOME を ~ として表示
  local wname=`pwd | sed -e "s|$HOME|~|"`
  # カレントディレクトリ名
  local tname=`pwd | sed -e 's|^.*/||'`

  echo -ne "\033]2;$wname\007" # window title
  echo -ne "\033]1;$tname\007" # tab title
}

# Ruby
eval "$(rbenv init -)"


# ----------------------------------------------
# ヒストリー設定
# ----------------------------------------------

# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history

# メモリに保存される履歴の件数
export HISTSIZE=1000

# 履歴ファイルに保存される履歴の件数
export SAVEHIST=10000

# 開始と終了を記録
setopt extended_history

# 日時を表示
export HISTTIMEFORMAT='%F %T '

# 他のターミナルとヒストリーを共有
setopt share_history


# --------------------------------------------------
#  カレントディレクトリ表示
# --------------------------------------------------

autoload colors
colors

# vcs_infoロード
autoload -Uz vcs_info

# PROMPT変数内で変数参照する
setopt prompt_subst

# vcsの表示
zstyle ':vcs_info:*' formats '%s][* %F{yellow}%B%b%f'
zstyle ':vcs_info:*' actionformats '%s][* %F{yellow}%B%b%f(%F{red}%B%a%f)'

# プロンプト表示直前にvcs_info呼び出し
precmd() { vcs_info }

# プロンプト表示
PROMPT='
%B[${vcs_info_msg_0_}]:%~/%f
%F{yellow}%B>>$%b%f '


# --------------------------------------------------
#  brew
# --------------------------------------------------

# brewfile を自動で更新する
if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi

# brewfile の場所を変更する
export HOMEBREW_BREWFILE=~/dotfiles/Brewfile


# --------------------------------------------------
#  個別のzshrcの読み込み
# --------------------------------------------------
[ -f ~/.zshrc.lmi ] && source ~/.zshrc.lmi
