#!/usr/bin/env bash

function bar() {
    exit 5
}

bar
echo $?