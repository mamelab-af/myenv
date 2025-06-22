#!/bin/sh

alias ll="ls -la"

alias shrc="source ~/.zshrc"

alias lpath="echo $PATH | tr ':' '\n'"


function killport() {
    command kill -9 $(lsof -t -i :$1)
}

function killtty() {
    command kill -9 $(lsof -t -i :$1)
}
