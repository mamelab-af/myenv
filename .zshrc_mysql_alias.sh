#!/bin/sh

function mysqll() {
    command mysql -uroot -ppassword -h127.0.0.1 -P3306 $*
}
