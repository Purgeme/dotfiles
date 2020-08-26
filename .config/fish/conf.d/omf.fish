# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# make a quote on starting the shell
# fortune | cowsay

# random colorscripts from distro tube
# colorscript -e 24

# Custom Banner
figlet -f /usr/share/figlet/pagga.tlf Amitabha | lolcat

# persist the changes of pywal on opening new terminals
# cat ~/.cache/wal/sequences

# vim like key bindings in the terminal
fish_vi_key_bindings

# add .local/bin to PATH
export PATH="$HOME/.local/bin:$PATH"

# add GOPATH to PATH
export PATH="$HOME/go/bin:$PATH"

# specify nvim as global editor
export EDITOR=nvim;

# add custom scripts to path
export PATH="$HOME/.custom_scripts/:$PATH"

# add flutter to path
export PATH="$HOME/flutter/bin/:$PATH"

# fix blank windows on android studio
export _JAVA_AWT_WM_NONREPARENTING=1
export PATH="$HOME/.local/android-studio/bin/:$PATH"

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias nextcld='/home/azamath/Downloads/Nextcloud-2.6.5-x86_64.AppImage'
alias ncl='/home/azamath/.local/share/ncl-linux-x64/ncl'
alias tmux='tmux -u'
# to fix the issue of startify not starting (does not work)
# alias nvim='nvim +:Startify'
