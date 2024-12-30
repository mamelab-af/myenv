# git

function gco() {
    git checkout $args
}

function gfetch() {
    git fetch $args
}

function gfetchp() {
    gfetch -p
}

function gcp() {
    git cherry-pick $args
}

function gbranch() {
    git branch $args
}

function gbra() {
    gbranch
}

function gbraall() {
    gbranch --all
}

function gbradelall() {
    git branch --merged | xargs git branch -d
}

# function gbraDELALL() {
#     git branch | xargs git branch -D
# }

function gbradel() {
    git branch -D $args
}

# function gbraDEL() {
#     git push origin --delete $args
#     git branch -D $args
# }

function gpull() {
    git pull origin $args
}

function gpullh() {
    git pull origin HEAD
}

function gpush() {
    git push origin $args
}

function gpushh() {
    git push origin HEAD
}

function greset() {
    git reset $args
}

function gresets() {
    git reset --soft $args
}

function gresetHARD() {
    git reset --hard $args
}

function glog() {
    git log $args
}

function glogf() {
    glog --pretty=format:'%H (%ai) %s'
}

function greflog() {
    git reflog $args
}

function gstatus() {
    git status $args
}

function gstash() {
    git stash $args
}

function gdiff() {
    git diff $args
}

function gsubmod() {
    git submodule $args
}
