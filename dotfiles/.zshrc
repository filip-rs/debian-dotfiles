plugins=(
    git
    fast-syntax-highlighting
    zsh-autosuggestions
    zsh-autopair
    you-should-use
    zsh-history-substring-search
    # add others here
)
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
#zmodload zsh/zprof

# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# path to cargo programs
export PATH="$PATH:/home/filip/.cargo/bin"
export BROWSER=librewolf

export GH_CONFIG_DIR="$HOME/.config/gh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
#

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Enable completion
autoload -Uz compinit && compinit -d ~/.config/zsh/.zcompdump


bindkey '^[[A' history-substring-search-up   # Up arrow
bindkey '^[[B' history-substring-search-down # Down arrow


[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh


export HISTSIZE=12000
export SAVEHIST=10000
export HISTFILE=~/.zshhist
export HISTDUP=erase

setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
#
#
#
#
###### source $ZSH/oh-my-zsh.sh
#cd ~
#
# Example aliases
alias zshconf="nvim ~/.zshrc"
# alias ohmyzsh="nvim ~/.config/.oh-my-zsh"

bindkey '^A' beginning-of-line   # Ctrl-A: Move to beginning
bindkey '^E' end-of-line         # Ctrl-E: Move to end

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

alias please="sudo"
alias fking="sudo"
alias wifilist="nmcli device wifi list"
alias wificonnect="nmcli device wifi connect"
#alias performance="sudo cpupower frequency-set -g performance"
#alias powersave="sudo cpupower frequency-set -g powersave"
alias c="clear"
alias nfch="neofetch --ascii ~/.config/neofetch/poop.txt"
alias lss="eza --tree --icons --level=2"
alias ls="eza --icons"
alias la="eza --long --header --icons --git --all"
alias py="python"
alias wifix="rfkill unblock wlan"
alias serialfix="sudo chmod +766 /dev/ttyACM0"
alias cpufetch="cpufetch --style fancy --color 230,50,45:240,230,230:0,0,0:250,70,65:170,170,170"
alias fetch="fastfetch"
alias update="sudo pacman -Syyu && paru"
alias desktopentry="/usr/share/applications/"
alias nvide='nohup neovide & disown'
alias pyvenv="chmod +x .venv/bin/activate && source .venv/bin/activate"
alias desktopentry="cd /usr/share/applications/"
alias bt="sudo systemctl start bluetooth"
alias btui="bluetuith"
alias refreshmirrors="rate-mirrors arch | sudo tee /etc/pacman.d/mirrorlist"
alias webpconvert="for file in *.webp; dwebp $file -o ${file/%.webp/.png} && rm $file"
alias heicconvert="for file in *.heic; do heif-convert $file ${file/%.heic/.png}; done"
alias gpt="chatgpt.sh -cc"
alias qrc="qrencode -t UTF8"
alias mccmd="mcrcon -H 129.241.208.10 -P 25575 -p "

#alias powersave="sudo echo "2000000" > /sys/devices/system/cpu/cpu*/cpufreq/scaling_max_freq"
#alias performance="sudo echo "3201000" > /sys/devices/system/cpu/cpu*/cpufreq/scaling_max_freq"



export PATH="$HOME/.local/bin:$PATH"
export EDITOR="nvim"

# configure and init zoxide
eval "$(zoxide init zsh)"
alias cd="z"

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# source ~/.fzf-git.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#zprof

source $ZSH/oh-my-zsh.sh
source ~/powerlevel10k/powerlevel10k.zsh-theme

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  if tmux ls 2>/dev/null | grep -vq 'no server running'; then
    exec tmux a
  else
    exec tmux
  fi
fi

