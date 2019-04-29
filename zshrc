
# needs go binary to set other paths
PATH=$PATH:/usr/local/bin:/usr/local/go/bin
export GOPATH=${HOME}/gocode

# set CDPATH variable
# leave the first one empty instead of using '.'
# as using '.' will cause `cd` to print subdirectory name when changing to a subdirectory
# inside current directory (`.`)
export CDPATH=":${HOME}:${HOME}/repos"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/tools/dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="amuse"
#ZSH_THEME="agnoster"

# enable dircolors
# eval `dircolors ${HOME}/.dircolors`

# set ls color for Mac
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

# mercurial completion
source /usr/local/share/zsh/site-functions

# FIX ME: need a separated alias file
alias vi='vim'

# make sure grep display color even after piping to another grep which is used by -v
alias grep='grep --color=always'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

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
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# zsh options
# enable extended glob for zsh, so you can use something like mv ^bak bak
setopt extended_glob

PATH=${HOME}/venv/main/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/go/bin:${HOME}/tools/scripts:/usr/local/bin:${PATH}:/usr/sbin:/sbin

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
# Always prefer vim
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

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
#

# enable comment in interactive mode
setopt interactivecomments

# add pyenv configuration
if which pyenv > /dev/null; then
    eval "$(pyenv init -)";
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
