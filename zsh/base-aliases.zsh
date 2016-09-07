alias ll="ls -al"
alias chrome="open -a 'Google Chrome'"

alias gs='git status'
alias ghlog='git log --all --graph --format="%C(yellow)%h %C(reset)%an %C(blue)%ar %C(red)%d %C(reset)%s"'
alias resource='source ~/.bash_profile'
alias p='python'

function mkexe() {
  touch $1;
  chmod a+x $1;
}