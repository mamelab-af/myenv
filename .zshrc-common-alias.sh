#!/bin/sh

alias ll="ls -la"

alias shrc="source ~/.zshrc"

alias lpath="echo $PATH | tr ':' '\n'"


function lsofkill() {
    command kill -9 $(lsof -t -i :$1)
}
