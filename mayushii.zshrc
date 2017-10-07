source "$HOME/.dotfiles/profile.sh"

source "$HOME/.dotfiles/completion.zsh"

source "$HOME/.dotfiles/common_options.zsh"

source "$HOME/.dotfiles/prompt.zsh"

source "$HOME/.dotfiles/key_bindings.zsh"

source "$HOME/.dotfiles/server_aliases.sh"

[ -n "$XDG_CONFIG_HOME" ] && export XDG_CONFIG_HOME="$HOME/.config"

[ -d $HOME/torch ] && source $HOME/torch/install/bin/torch-activate
[ -d /opt/android-sdk ] && export ANDROID_HOME="/opt/android-sdk"
[ -d $HOME/android-sdk-linux ] && export ANDROID_HOME="$HOME/android-sdk-linux"
[ -n $ANDROID_HOME ] && export PATH="$ANDROID_HOME/build-tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH"
[ -d /usr/local/heroku ] && export PATH="/usr/local/heroku/bin:$PATH"
[ -d $XDG_CONFIG_HOME/itch/bin ] && export PATH="$XDG_CONFIG_HOME/itch/bin:$PATH"
[ -n "$(which gem)" ] && export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
[ -d $HOME/.cargo/bin ] && export PATH="$HOME/.cargo/bin:$PATH"


[ -f $HOME/.zshrc.local ] && source $HOME/.zshrc.local

[ -d $HOME/.local/bin ] && export PATH="$HOME/.local/bin:$PATH"

which neofetch && neofetch --disable packages
