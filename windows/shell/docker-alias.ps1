# docker

function dps() {
    # docker ps --no-trunc $args
    docker ps $args
}

function dpss() {
    docker ps --format="{{.ID}} {{.Names}}"
}

function dnls() {
    docker network ls $args
}

function dnprune() {
    docker network prune $args
}

function dvls() {
    docker volume ls $args
}

function dvprune() {
    docker volume prune $args
}

function dkill() {
    docker kill $args
}

function dstats() {
    docker stats $args
}

# docker compose

function dclean() {
    docker compose down --rmi all --volumes --remove-orphans
}

function ddestroy() {
    docker compose down --rmi all --volumes --remove-orphans; docker system prune -a
}

function dckill() {
    docker compose kill $args
}

function dcls() {
    docker compose ls $args
}

function dcps() {
    docker compose ps $args
}

function dcbuild() {
    docker compose build $args
}

function dcbuildnc() {
    docker compose build --no-cache $args
}

function dcup() {
    docker compose up $args
}

function dcupb() {
    docker compose up --build $args
}

function dcupd() {
    docker compose up -d $args
}

function dcupdb() {
    docker compose up -d --build $args
}

function dcupbd() {
    docker compose up -d --build $args
}

function dcdown() {
    docker compose down $args
}

function dcstart() {
    docker compose start $args
}

function dcstop() {
    docker compose stop $args
}

function dcrestart() {
    docker compose stop $args; docker compose start $args
}

function dcrm() {
    docker compose rm -fsv $args
}

function dsh() {
    docker exec -it $args /bin/sh
}

function dbash() {
    docker exec -it $args /bin/bash
}

function dcsh() {
    docker compose exec $args /bin/sh
}

function dcbash() {
    docker compose exec $args /bin/bash
}

function dcp() {
    docker cp $args
}

function dlogs() {
    docker logs -f $args
}

function dclogs() {
    docker compose logs -f $args
}
