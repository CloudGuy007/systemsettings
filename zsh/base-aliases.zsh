# navigation
alias ll="ls -al"

# applications
alias chrome="open -a 'Google Chrome'"

# too many gcc installs...
alias gcc="gcc-4.7"

# git
alias gcmsgx='git commit --no-verify -m'
alias gcamx='git commit -a --no-verify -m'
alias gcnx!="git commit --amend --no-edit --no-verify"
alias ghlog='git log --all --graph --format="%C(yellow)%h %C(reset)%an %C(blue)%ar %C(red)%d %C(reset)%s"'
alias gs='git status'

# lazy python
alias p='python'

# nvm
alias nvpm='npm version patch -m'

# refresh aliases
# alias resource='source ~/.bash_profile'

function resource() {
  set -e;

  if [ "$1" = "--hard" ]; then
    echo Full zsh refresh
    if [ $(uname) = Darwin ]; then
      sh $SYS_DIR/setup.sh;
    else
      sh $SYS_DIR/setup_linux.sh;
    fi
  else
    echo Soft zsh refresh
    source ~/.bash_profile;
  fi
}

function mkexe() {
  touch $1;
  chmod a+x $1;
}
