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
cat ~/.cache/wal/sequences

# vim like key bindings in the terminal
fish_vi_key_bindings

# add .local/bin to PATH
export PATH="$HOME/.local/bin:$PATH"

# specify nvim as global editor
export EDITOR=nvim;

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
