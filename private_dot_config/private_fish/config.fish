starship init fish | source
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
set -gx PATH "$HOME/.pyenv/versions/3.9.0/bin/wal" $PATH
set PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/shims $PYENV_ROOT/bin $PATH
pyenv rehash
# Load pyenv automatically by appending
# the following to ~/.config/fish/config.fish:
pyenv init - | source
source ~/.profile
source /usr/local/opt/asdf/asdf.fish
thefuck --alias | source
alias nvim="nvim"
alias vim="nvim"
alias vi="nvim"
alias cz="chezmoi"
set -gx EDITOR nvim
cat ~/.cache/wal/sequences &