export CLICOLOR=1
export PATH=/Applications/gedit.app/Contents/MacOS/gedit:$PATH

gitPush() {
    git add .
    git commit -m "$*"
    git push origin master
}

gitCommit() {

    git add .
    git commit -m "$*"
}

alias gitpush=gitPush
alias gitcommit=gitCommit
alias hello='echo ${3}'
alias phpserver='php -S localhost:8080'
alias gedit='open -a gedit ${1}'
alias gethtml='cp ~/templates/index.html ./index.html'

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

source github.sh

PS1='$(git_prompt):\[\033[01;34m\]\W\[\033[00m\]\$ '
# PS1="\[$(git_prompt)\]\[\033[00m\]\W: "
