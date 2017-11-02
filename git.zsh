# Git aliases
alias gac="git add -A && git commit -m "
alias gam="git add -A && git commit --amend "
alias gco="git checkout"
alias gcob="git checkout -b"
alias gcot="git checkout --track"
alias gpl="git pull"
alias gps="git push"
alias grv="git remote -v"
alias grb="git branch -d"
alias grsh="git reset --hard"
alias gcp="git cherry-pick"
alias gs="git status"
alias gpom="git pull origin master"
alias gmtheirs="git merge --strategy-option theirs"
alias gmours="git merge --strategy-option ours"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gl="git log --graph --pretty=oneline"
alias gcon="grep -lr '<<<<<<<' ."
alias gresolve="grep -lr '<<<<<<<' . | xargs git checkout"
alias gresolve2='code $(git diff --name-only --diff-filter=U)'
alias gh='git config --get remote.origin.url | ruby -ne "puts %{https://github.com/#{\$_.split(/.com[\:\/]/)[-1].gsub(%{.git},%{})}}"| xargs open'


# Thanks to Tim Hopper for this
function gpo {
    CURRENT_BRANCH=$(git branch | awk '/^\* / { print $2 }')
    git push --set-upstream origin $CURRENT_BRANCH
}

function gdd () {
  git diff $1 --color | diff-so-fancy
}

alias gchange='gh-changelog -m -s `git log --tags --pretty="format:%cI" -n1`'
