# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/vincenthardouin/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	#docker
	#ember-cli
	git
	#gitignore
	iterm2
	#node
	#npm	
)

source $ZSH/oh-my-zsh.sh

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
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Git
# ---
alias ga="git add ."
alias gap="git add -p"
alias gfix='f() { git commit --fixup $1 };f'
alias gi="git ignore"
alias gk="git clone"
alias gl="git log --graph --decorate --pretty=oneline --abbrev-commit"
alias gn="git rebase --continue"
alias gp="git push"
alias gpf="git push --force-with-lease"
alias gs="git status"
alias gra="git rebase --abort"
alias gri="git rebase -i"
alias gy="git commit --amend --no-edit"
alias gay="git commit --all --amend --no-edit"

# Git Alias w/ bash script or .gitconfig
# --- 
alias gw="git wip"
alias gu="git unwip"
alias gpop="git pop"

gprev() { 
	git reflog | grep checkout | grep -o 'to .*$' | grep -o ' .*$' | awk '!x[$0]++' | fzf | xargs git switch
}

# NPM
# ---
alias nb="npm run build"
alias nd="npm run dev"
alias nc="npm run clean"
alias nci="npm ci"
alias ni="npm install --no-optional"
alias nid="npm install --save-dev"
alias nig="npm install --global"
alias nl="npm run lint"
alias nlf="npm run lint:fix"
alias np="npm publish"
alias ns="npm start"
alias nr="npm run"
alias nt="npm test"
alias nu="npm uninstall"
alias nw="npm run watch"
alias ny="npm run test:watch"

COMMON_FLAGS='--rm --interactive --tty --user 501:501 --volume $(pwd):/code --workdir /code'

# node 14
#alias node="docker run $COMMON_FLAGS node:14"
#alias yarn='node yarn'
#alias npm='node npm'
#alias npx='node npx'

alias ruby="docker run $COMMON_FLAGS ruby"

alias sp="docker run \
  -it \
  --rm \
  --name steampipe \
 	--mount type=bind,source=$HOME/.steampipe/config,target=/home/steampipe/.steampipe/config  \
  --mount type=bind,source=$HOME/.steampipe/plugins,target=/home/steampipe/.steampipe/plugins   \
  turbot/steampipe"

jira() {
  op run --env-file=$HOME/.config/op/jira -- docker run \
  --interactive \
  --tty \
  --rm \
  -e JIRA_API_TOKEN \
  --mount type=bind,source=$HOME/.jira-config,target=/root/.config/.jira/.config.yml \
  ghcr.io/ankitpokhrel/jira-cli:latest \
  -c "jira $1"
}

jnt() {
  op run --env-file=$HOME/.config/op/jira -- docker run \
  --interactive \
  --tty \
  --rm \
  -e JIRA_API_TOKEN \
  --mount type=bind,source=$HOME/.jira-config,target=/root/.config/.jira/.config.yml \
  ghcr.io/ankitpokhrel/jira-cli:latest \
  -c "jira issue create -s \"$1\" --custom Equipix=\"Experience d'Evaluation\""
}

# Docker
# ---
alias dcd="docker-compose down"
alias dcu="docker-compose up -d"

# THEFUCK
# ---
eval $(thefuck --alias)

# ZOXIDE
# ---
eval "$(zoxide init zsh)"

DEFAULT_USER=$(whoami)

# Starship
# ----
eval "$(starship init zsh)"

# FZF
# --- 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --follow --hidden'
export FZF_DEFAULT_OPTS='-m --height 50% --border'

j() {
    if [[ "$#" -ne 0 ]]; then
        cd $(autojump $@)
        return
    fi
    cd "$(autojump -s | sort -k1gr | awk '$1 ~ /[0-9]:/ && $2 ~ /^\// { for (i=2; i<=NF; i++) { print $(i) } }' |  fzf --height 40% --reverse --inline-info)" 
}


# JC
# ----
# Alias for jc because autojump used also jc 
alias jsonc="/usr/local/bin/jc"

autoload -U edit-command-line

## 1Password
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

## Mise
eval "$(mise activate zsh)"
