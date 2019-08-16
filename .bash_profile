source ~/.bashrc

eval "$(rbenv init -)"

if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

export PATH=$HOME/.nodebrew/current/bin:$PATH
