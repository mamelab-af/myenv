#!/bin/sh

function gco() {
    command git checkout $*
}

function gfetch() {
    command git fetch $*
}
alias gfetchp="gfetch -p"

function gcp() {
    command git cherry-pick $*
}

function gbranch() {
    command git branch $*
}
alias gbra="gbranch"
alias gbraall="gbranch --all"
alias gbradelall="git branch --merged | xargs git branch -d"
alias gbraDELALL="git branch | xargs git branch -D"

function gbradel() {
    command git branch -D $*
}

function gbraDEL() {
    command git push origin --delete $*
    git branch -D $*
}

function gpull() {
    command git pull origin $*
}
alias gpullh="git pull origin HEAD"

function gpush() {
    command git push origin $*
}
alias gpushh="git push origin HEAD"

function greset() {
    command git reset $*
}

function gresets() {
    command git reset --soft $*
}

function gresetHARD() {
    command git reset --hard $*
}

function glog() {
    command git log $*
}
alias glogf="glog --pretty=format:'%H (%ai) %s'"

function greflog() {
    command git reflog $*
}

function gstatus() {
    command git status $*
}

function gstash() {
    command git stash $*
}

function gdiff() {
    command git diff $*
}

function gsubmod() {
    command git submodule $*
}

function gsubmod() {
    command git submodule $*
}

function gbrename() {
    command git branch -m $1 $2
    command git push origin :$1 $2
    command git push origin -u $2
}
