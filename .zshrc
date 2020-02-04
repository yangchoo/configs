# Profiling Hook
if [[ "$ZPROF" = true ]]; then
  zmodload zsh/zprof
fi

# Path to your oh-my-zsh installation.
export ZSH=/home/yang/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="spaceship"
export SPACESHIP_DOCKER_SHOW=false
export SPACESHIP_BATTERY_SHOW=false
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export SPACESHIP_PYENV_SYMBOL=""

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
    arcanist 
    colorize 
    fzf 
    git 
    pyenv 
    python
    zsh-nvm
    zsh-syntax-highlighting 
    zsh-autosuggestions
)

# NVM Configs
## Lazy loading for nvm
export NVM_LAZY_LOAD=true

## Auto-use of .nvmrc
#autoload -U add-zsh-hook
#load-nvmrc() {
#  local node_version="$(nvm version)"
#  local nvmrc_path="$(nvm_find_nvmrc)"
#
#  if [ -n "$nvmrc_path" ]; then
#    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")
#
#    if [ "$nvmrc_node_version" = "N/A" ]; then
#      nvm install
#    elif [ "$nvmrc_node_version" != "$node_version" ]; then
#      nvm use
#    fi
#  elif [ "$node_version" != "$(nvm version default)" ]; then
#    echo "Reverting to nvm default version"
#    nvm use default
#  fi
#}
#add-zsh-hook chpwd load-nvmrc
#load-nvmrc
#

# User configuration
bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

# export MANPATH="/usr/local/man:$MANPATH"

# Add env.sh
. /home/yang/env.sh

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Fzf colors
# Base16 Tomorrow Night
# Author: Chris Kempson (http://chriskempson.com)

_gen_fzf_default_opts() {

local color00='#1d1f21'
local color01='#282a2e'
local color02='#373b41'
local color03='#969896'
local color04='#b4b7b4'
local color05='#c5c8c6'
local color06='#e0e0e0'
local color07='#ffffff'
local color08='#cc6666'
local color09='#de935f'
local color0A='#f0c674'
local color0B='#b5bd68'
local color0C='#8abeb7'
local color0D='#81a2be'
local color0E='#b294bb'
local color0F='#a3685a'

export FZF_DEFAULT_OPTS="
  --color=bg+:$color01,bg:$color00,spinner:$color0C,hl:$color0D
  --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C
  --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D
"

}

_gen_fzf_default_opts

# End prof hook
if [[ "$ZPROF" = true ]]; then
  zprof
fi
