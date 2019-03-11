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
alias d_data="cd /media/$USER/DATA"
alias sql="mysql -u Eclipse2212 -p"
alias python="python3"
alias apl="apt list --upgradeable"
alias apu="sudo apt upgrade"
alias zzz="sudo systemctl suspend"
alias ZZZ="sudo systemctl hibernate"
alias :q="exit"
alias sapi="sudo apt install"
alias i3conf="vim ~/.config/i3/config"
alias zshrc="vim ~/.zshrc"
alias vertoffscreen="xrandr --output DP-1-1 --auto --left-of eDP-1-1 --rotate left"
alias light="xrandr --output eDP-1-1 --brightness "
alias cat="bat"
alias df="df -h"

toggle_touchpad() {
    if [[ $1 == "on" ]]; then
	    xinput --enable 14
    elif [[ $1 == "off" ]]; then
	    xinput --disable 14
    fi
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
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=( battery laravel_version background_jobs time)

#Add exa to path
export PATH=$PATH:/opt/exa:~/.local/bin:/opt/factorio/bin/x64
export SCRIPTS=~/Documents/Programmes/scripts
export DOTNET_CLI_TELEMETRY_OPTOUT="true"
