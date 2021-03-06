setopt auto_cd

# JAVA HOME EXPORTS
export ANDROID_TOOLS=/home/moraski/Android/Sdk/platform-tools
export JAVA_HOME=/home/moraski/dev/jdk1.8.0_291
export MAVEN_HOME=/home/moraski/dev/apache-maven-3.8.1
export MAVEN_REPO_SERVER=local
export MAVEN_REPO_URL=http://localhost:8080/manager/text
export MAVEN_REPO_USER=dev
export MAVEN_REPO_PASS=dev
export PATH=$PATH:$ANDROID_TOOLS:$JAVA_HOME/bin:$MAVEN_HOME/bin

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="bira"
#ZSH_THEME="agnoster"
#ZSH_THEME="bullet-train"
ZSH_THEME="vemonet_bira"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# Removed git because it was useless aliases (and conflict with gr)

# plugins
plugins=(git zsh-autosuggestions docker oc kubectl mvn ansible yarn-completion)
# TODO: argo
# ansible nmap postgres aws heroku
# yarn npm npx react-native 
# pip python virtualenv autopep8
# mvn 
# ruby gem rails rbenv bundler rvm 
# Seems to not work: pip yarn docker-compose npm npx

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Functions alias
previsao(){
    if [ -z "$1"];
        then
            curl https://wttr.in/Campo%20Mour%C3%A3o
        else 
            curl https://wttr.in/$1
    fi
}

meet(){
    if [ "$(date '+%A')" = "sexta" ] ; then
        google-chrome-stable --new-window 'https://meet.google.com/cba-kiat-hvn?authuser=1'
    else
        google-chrome-stable --new-window 'https://meet.google.com/yxj-yukm-mky?authuser=1'
    fi
}


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliase
# alias zshconfig="mate ~/.zshrc"
alias pip=pip3
alias onsafety='~/trabalho/onsafety'
alias desk='~/Desktop'
alias chrome="google-chrome-stable"
alias twitter="chrome www.twitter.com"
alias github="chrome www.github.com/joaomoraski"
alias lcllaravel="chrome http://localhost:8000"
alias lclonsafety="chrome http://localhost:8080"
alias speedtest="speedtest-cli"
alias rmb="rm ~/.zsh_history | rm ~/.mysql_history | rm ~/.bash_history"
alias rmm="rm -rfd"
alias mysql="mysql -u root -proot"
alias mysqlmob="mysql -u root -proot moblean"
alias compress='tar -czvf ' # Nome e o arquivo a ser compactado
alias decompress='tar -xzvf ' # Nome do arquivo para decompress
alias adb='/home/moraski/Android/Sdk/platform-tools/./adb'
alias snake='ruben-snake-cmd'
alias ports='sudo lsof -i -P -n'
alias facul='cd /home/moraski/faculdade/'
alias lampada='cd /home/moraski/dev/util/yeelight/ && source .venv/bin/activate && python3 main.py'

# Completion for the d2s python client: https://pypi.org/project/d2s/
#eval "$(_D2S_COMPLETE=source_zsh d2s)"
