# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/eclipse2212/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
POWERLEVEL9K_MODE='nerdfont-complete'

ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git,
  svn,
  laravel5,
  composer,
  npm,
  artisan
)

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias prog="cd /home/$USER/Documents/Programmes"
alias sql="mysql -u Eclipse2212 -p"
alias api="sudo apt install"
alias apl="apt list --upgradeable"
alias apu="sudo apt upgrade"
alias apr="sudo apt remove"
alias i3conf="vim ~/.config/i3/config"
alias light="xbacklight -set"
alias df="df -h"
alias kitten="kitty +kitten"


toggle_touchpad() {
    if [[ $1 == "on" ]]; then
	    xinput --enable 13
    elif [[ $1 == "off" ]]; then
	    xinput --disable 13
    fi
}

zshrc() {
	vim ~/.zshrc
	source ~/.zshrc
}

#Prompt on new line
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

#Empty line betweed end of last block and new prompt
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

#Lines prefixes
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="$ "

#Powerlevel battery segment
POWERLEVEL9K_BATTERY_BACKGROUND='none'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='yellow'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='green'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='20'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_BATTERY_VERBOSE=true

#Prompts segments
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=( os_icon user dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=( laravel_version background_jobs time)

#Add exa to path
export PATH=$PATH:~/.local/bin
export DOTNET_CLI_TELEMETRY_OPTOUT="true"
