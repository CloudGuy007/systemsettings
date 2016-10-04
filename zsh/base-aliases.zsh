alias ll="ls -al"
alias chrome="open -a 'Google Chrome'"
alias gcmsgx='git commit --no-verify -m'
alias ghlog='git log --all --graph --format="%C(yellow)%h %C(reset)%an %C(blue)%ar %C(red)%d %C(reset)%s"'
alias gs='git status'
alias p='python'
alias resource='source ~/.bash_profile'

function mkexe() {
  touch $1;
  chmod a+x $1;
}