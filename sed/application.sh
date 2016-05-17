#!/usr/bin/env bash

function run_sed_example1() {
    sed -i '/comment me out/s/^/#/g' file.txt
}

#run_sed_example1

function run_sed_example2() {
    sed -i '/mibs :/s/^/#/g' snmp.conf
}

run_sed_example2