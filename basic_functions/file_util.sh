#!/usr/bin/env bash

# -x file
# True if file exists and is executable
# Seems to return the same result both with and without quotes
# for input parameter
function file_exists_and_is_executable() {
    if [ -x "$1" ]
    then
        return 0 # true
    else
        return 1 # false
    fi
}