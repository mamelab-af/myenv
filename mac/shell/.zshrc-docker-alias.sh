#!/bin/sh

# docker

function dps() {
    # command docker ps --no-trunc $*
    command docker ps $*
}
alias dpss="dps --format=\"{{.ID}} {{.Names}}\""

function dnls() {
    command docker network ls $*
}

function dnprune() {
    command docker network prune $*
}

function dvls() {
    command docker volume ls $*
}

function dvprune() {
    command docker volume prune $*
}

function dkill() {
    command docker kill $*
}

function dstats() {
    command docker stats $*
}

# docker compose

alias dclean="docker compose down --rmi all --volumes --remove-orphans"
alias ddestroy="docker compose down --rmi all --volumes --remove-orphans; docker system prune -a"

function dckill() {
    command docker compose kill $*
}

function dcls() {
    command docker compose ls $*
}

function dcps() {
    command docker compose ps $*
}

function dcbuild() {
    command docker compose build $*
}

function dcbuildnc() {
    command docker compose build --no-cache $*
}

function dcup() {
    command docker compose up $*
}

function dcupb() {
    command docker compose up --build $*
}

function dcupd() {
    command docker compose up -d $*
}

function dcupdb() {
    command docker compose up -d --build $*
}
alias dcupbd='dcupdb'

function dcdown() {
    command docker compose down $*
}

function dcstart() {
    command docker compose start $*
}

function dcstop() {
    command docker compose stop $*
}

function dcrestart() {
    command docker compose stop $*; docker compose start $*
}

function dcrm() {
    command docker compose rm -fsv $*
}

function dsh() {
    command docker exec -it $* /bin/sh
}

function dbash() {
    command docker exec -it $* /bin/bash
}

function dcsh() {
    command docker compose exec $* /bin/sh
}

function dcbash() {
    command docker compose exec $* /bin/bash
}

function dcp() {
    command docker cp $*
}

function dlogs() {
    command docker logs -f $*
}

function dclogs() {
    command docker compose logs -f $*
}
