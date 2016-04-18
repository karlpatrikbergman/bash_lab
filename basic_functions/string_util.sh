#!/usr/bin/env bash

function file_exists_and_is_a_regular_file() {
    if [ -f "$1" ]
    then
        return 0 # true
    else
        return 1 # false
    fi
}

function to_upper_case() {
    if [ -z "$1" ]
    then
        echo "-Parameter #1 is zero length.-"
    fi
    declare -u upper_case
    upper_case=$1
    echo "$upper_case"
}

# -n STRING
# True if the length of STRING is nonzero
function length_is_non_zero() {
    if [ -n "$1" ]
    then
        return 0 # true
    else
        return 1 # false
    fi
}

# -z STRING
# True if the length of STRING is zero
function length_is_zero() {
    if [ -z "$1" ]
    then
        return 0: # true
    else
        return 1 # false
    fi
}