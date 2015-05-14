alias ll="ls -al"
alias chrome="open -a 'Google Chrome'"
alias godacity="cd ~/Udacity/udacity; source venv/bin/activate;"
alias donedacity="deactivate"
alias gochromium="cd ~/code/chromium; source chrome/bin/activate;"
alias chromiumR="open /Users/cameron/code/chromium/depot_tools/src/out/Release/Chromium.app"
alias server="pushd ~/code/server; python -m SimpleHTTPServer 8000 &bg; popd"
alias courses="cd ~/Udacity/CD/"
alias serve="python -m SimpleHTTPServer"

# For quickly opening links on the server running at ~/code/server
openLocalhost() {
    start='http://localhost:8000'
    middle="${PWD##*/}"
    open $start/$middle/$1
}
alias ol=openLocalhost

# For Chromium
export PATH=$PATH:/Users/cameron/code/chromium/depot_tools

# For Caman/Cairo
export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig

# For Udacity
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

# Set architecture flags
export ARCHFLAGS="-arch x86_64"
# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# Setting PATH for Python 2.7
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Changing the colors so the terminal isn't so bland
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

#lazy p
alias p='python'

# Git enhancements
source ~/.git-completion.bash
source ~/.git-prompt.sh

# useful git aliases
alias ga='git add'
# alias gp='git push's
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gco='git checkout'
# alias gra='git remote add'
# alias grr='git remote rm'
alias gp='git pull'
alias gpr='git pull --rebase'
# alias gcl='git clone'

# colors!
cyan=$(tput setaf 33)
gray=$(tput setaf 242)
blue=$(tput setaf 27)
green=$(tput setaf 28)
yellow=$(tput setaf 221)
orange=$(tput setaf 202)
reset=$(tput sgr0)

# Returns the name of the git repo we're currently in, if any.
# Colored based on whether the repo is currently dirty or not.
function git_repo_colored {

	# If we're in a git repo
	if git branch > /dev/null 2>&1; then

		if [[ $(git status) = *"nothing to commit"* ]]; then
			# Clean repository - nothing to commit
			GIT_REPO_STATUS_COLOR=$green
		else
	    	# Changes to working tree
			GIT_REPO_STATUS_COLOR=$yellow
		fi

		CURR_GIT_REPO="$(__git_ps1 | tr -d ' ') "
	else
	  #  Prompt when not in GIT repo
	  CURR_GIT_REPO=''
	fi
}

function smart_pwd {
    local pwdmaxlen=25
    local trunc_symbol=".."
    local dir=${PWD##*/}
    local tmp=""
    pwdmaxlen=$(( ( pwdmaxlen < ${#dir} ) ? ${#dir} : pwdmaxlen ))
    NEW_PWD=${PWD/#$HOME/\~}
    local pwdoffset=$(( ${#NEW_PWD} - pwdmaxlen ))
    if [ ${pwdoffset} -gt "0" ]
    then
        tmp=${NEW_PWD:$pwdoffset:$pwdmaxlen}
        tmp=${trunc_symbol}/${tmp#*/}
        if [ "${#tmp}" -lt "${#NEW_PWD}" ]; then
            NEW_PWD=$tmp
        fi
    fi
}


PROMPT_COMMAND="git_repo_colored; smart_pwd"
PS1='\[$gray\]\u \[$GIT_REPO_STATUS_COLOR\]$CURR_GIT_REPO\[$reset\]\[$blue\]$NEW_PWD\n\[$orange\]$ \[$reset\]'