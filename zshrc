# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export PYTHONSTARTUP=/Users/smax/Library/Python/2.7/lib/python/site-packages/sitecustomize.py
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
DEFAULT_USER="smax"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# zsh plugins
plugins=(git brew sublime sprunge python osx nvm)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/go/bin:/usr/local/MacGPG2/bin"
export PATH="/usr/local/scripts:$PATH"
export PATH="$PATH:/opt/local/bin:/opt/local/sbin:/opt/gbdk/bin"
export PATH="$PATH:/Library/TeX/Distributions/Programs/texbin"
export ANDROID_HOME=/usr/local/opt/android-sdk

alias asciify="perl -i.bak -pe 's/[^[:ascii:]]//g'"
alias git\ fuckit="git add \. && git commit -m 'add files' && git push"
alias cd..='cd ../'                         # Go back 1 directory level (forfast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='subl'                           # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias catfn="tail -n +1"
alias gp="git push"
alias gpl="git pull"
alias gc="git commit"
alias vi=vim                                # Please don't ask
alias reboot="curl 192.168.0.1/sky_self_heal_reboot.cgi && echo 'Rebooting...'"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

alias zshconfig="vi ~/.zshrc"
alias lst="livestreamer"
alias myip='curl ip.appspot.com'
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH="/usr/local/sbin:$PATH"
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=$DEVKITPRO/devkitARM
export PATH=$PATH:$DEVKITARM/bin

export NVM_DIR="/Users/smax/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

function playmidi {

    SOUNDFONT='/usr/local/share/fluidsynth/generaluser.v.1.44.sf2'

    if [ -e "$SOUNDFONT" ]
    then 

        for i in "$@"
        do 
            if [ -e "$i" ]
            then
                (fluidsynth -i "$SOUNDFONT" "$i"  2>&1) >/dev/null
            else
                echo "[playmidi]: cannot find file at $i"   
                return 1
            fi  
        done 
    else
            echo "[playmidi]: SOUNDFONT file not found at $SOUNDFONT"
            return 1
    fi  
}

git() {
    if [ "$1" = 'fuckit' ]; then
        command git add . && git commit -m 'update' && git push
    else
        command git "$@"
    fi
}

# rbenv
rbenv_path="$HOME/.rbenv/bin"
export PATH="$rbenv_path:$PATH"
[ -d $rbenv_path ] && eval "$(rbenv init -)"

. /Users/smax/torch/install/bin/torch-activate

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export VIMRUNTIME=/Applications/MacVim.app/Contents/Resources/vim/runtime
