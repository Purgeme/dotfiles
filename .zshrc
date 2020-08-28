# Custom Banner
figlet -f /usr/share/figlet/pagga.tlf Amitabha | lolcat


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-vim-mode
source ~/.zsh/zsh-vim-mode/zsh-vim-mode.plugin.zsh

# History
export SAVEHIST=1000000000
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
export HISTFILE=~/.zsh_history
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY


# ALIASIS
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias tmux='tmux -u'
alias ncl='/home/azamath/.local/share/ncl-linux-x64/ncl'
alias nextcld='/home/azamath/Downloads/Nextcloud-2.6.5-x86_64.AppImage'

# Add .local/bin to PATH
export PATH="$HOME/.local/bin:$PATH"

# Add GOPATH to PATH
export PATH="$HOME/go/bin:$PATH"

# Set neovim as default editor
export EDITOR=nvim;

# Add flutter to path
export PATH="$HOME/flutter/bin/:$PATH"

# fix blank windows for android studio
export _JAVA_AWT_WM_NONREPARENTING=1
export PATH="$HOME/.local/android-studio/bin/:$PATH"

# zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
