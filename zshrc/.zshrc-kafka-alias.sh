#!/bin/sh

function consume() {
    command docker compose exec kafka kafka-console-consumer --bootstrap-server kafka:9092 --topic $*
}
