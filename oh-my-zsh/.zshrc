# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/home/bobo/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/bobo/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'

# User configuration

# Solve unknown terminal type
export TERM=xterm-256color

# CUDA
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/cuda/lib64"
export CUDA_HOME=/opt/cuda/

# Anaconda
# export PATH="/opt/anaconda/bin:$PATH"
. /opt/anaconda/etc/profile.d/conda.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mse ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Python
# alias python3="/usr/bin/python3"
# alias python2="/usr/bin/python2"
alias pyconda="/opt/anaconda/bin/python"

#Expressvpn
alias vpnr="expressvpn refresh"
alias vpnc="expressvpn connect smart"
alias vpnd="expressvpn disconnect"
alias vpns="expressvpn status"
alias netr="systemctl restart expressvpn"

# Pacman
alias upda="sudo pacman -Syu"
alias srch="yaourt -Ss"
alias instlp="sudo pacman -S"
alias instly="yaourt -S"
alias uninstl="sudo pacman -Rsc"
alias clc="sudo pacman -Sc"

# System
alias ll='ls -l'
alias la='ls -a'
alias ff='ranger'
alias edit='sudo nano'
alias mse="mousepad"

# Github
alias cl='git clone'
alias st='git status'
alias add='git add'
alias all='git add -A'
alias cm='git commit -m "'
alias cma='git commit -a'
alias push='git push'
alias pull='git pull'
alias hub='cd ~/workspace/github/'

# Hexo
alias blog='cd ~/workspace/github/bmdroid.github.io/'
alias gd='hexo g -d'

# Jupyter Notebook
alias note='jupyter-notebook --ip=0.0.0.0 --port=8080'

# virtual env Tensorflow
# alias vcpu='source ~/workspace/tensorflowcpu/bin/activate'
# alias vgpu='source ~/workspace/tensorflowgpu/bin/activate'

# Conda TensorFlow
alias ccpu='conda activate tfcpu'
alias cgpu='conda activate tfgpu'

# Hardware
alias temp="sensors"
alias auon='pulseaudio --kill ; pulseaudio --start'
alias nvon='sudo tee /proc/acpi/bbswitch <<< ON'
alias nvoff='sudo rmmod nvidia_uvm ; sudo rmmod nvidia ; sudo tee /proc/acpi/bbswitch <<< OFF'
alias koff='sudo msi-keyboard -m normal -c left,off, -c middle,off, -c right,off,high'
alias kon='sudo msi-keyboard -m normal -c left,blue,high -c middle,purple, -c right,red,medium'