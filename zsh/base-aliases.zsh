alias ll="ls -al"
alias chrome="open -a 'Google Chrome'"
alias gcmsgx='git commit --no-verify -m'
alias gcamx='git commit -a --no-verify -m'
alias gcnx!="git commit --amend --no-edit --no-verify"
alias ghlog='git log --all --graph --format="%C(yellow)%h %C(reset)%an %C(blue)%ar %C(red)%d %C(reset)%s"'
alias gs='git status'
alias p='python'
alias resource='source ~/.bash_profile'

function mkexe() {
  touch $1;
  chmod a+x $1;
}
