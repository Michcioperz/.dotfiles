zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=** r:|=**' 'm:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=** r:|=**' 'm:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=** r:|=**' 'm:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=** r:|=**'
zstyle ':completion:*' max-errors 3
zstyle :compinstall filename '/home/michcioperz/.zshrc'

autoload -Uz compinit
compinit
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd beep
unsetopt extendedglob nomatch notify
bindkey -e

autoload -Uz promptinit
promptinit
prompt walters

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

export VISUAL=vim EDITOR=vim

alias ls="ls --color=auto"
alias grep="grep --color=auto"

alias aoba="ssh aoba.meekchopp.es"
alias shiraishi="ssh shiraishi.meekchopp.es"
alias tanaka="ssh staszic.space"
alias megumin="ssh megumin.meekchopp.es"

export VISUAL=vim EDITOR=vim

[ -n "$XDG_CONFIG_HOME" ] && export XDG_CONFIG_HOME="$HOME/.config"

[ -d $HOME/.local/bin ] && export PATH="$HOME/.local/bin:$PATH"
[ -d $HOME/torch ] && source $HOME/torch/install/bin/torch-activate
[ -d /opt/android-sdk ] && export ANDROID_HOME="/opt/android-sdk"
[ -d $HOME/android-sdk-linux ] && export ANDROID_HOME="$HOME/android-sdk-linux"
[ -n $ANDROID_HOME ] && export PATH="$ANDROID_HOME/build-tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH"
[ -d /usr/local/heroku ] && export PATH="/usr/local/heroku/bin:$PATH"
[ -d $XDG_CONFIG_HOME/itch/bin ] && export PATH="$XDG_CONFIG_HOME/itch/bin:$PATH"
[ -n "$(which gem)" ] && export PATH="$(ruby -e 'print Gem.user_dir'):$PATH"
[ -f $HOME/.zshrc.local ] && source $HOME/.zshrc.local
[ -d $HOME/.cargo/bin ] && export PATH="$HOME/.cargo/bin:$PATH"


neofetch --disable packages
