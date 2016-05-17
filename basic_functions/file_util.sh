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

# sed -i '/comment me out/s/^/#/g' file.txt
function comment_out_line() {
    local file="$1"
    local line="$2"
    if [ -a "$1" ] && [ "$#" -eq 2 ]
    then
         sed -i "/$line/s/^/#/g" "$file"
    else
        echo "Usage: <path-to-file> <line-to-comment-out>"
        if [ ! -a "$file" ]
        then
            echo "$file does not exist"
        fi
    fi
}

function un_comment_out_line() {
    local file="$1"
    local line="$2"
    if [ -a "$1" ] && [ "$#" -eq 2 ]
    then
        echo "Un-commenting line '$line' in file '$file'"
        sed -i "/$line/ s/^#//" "$file"
    else
        echo "Usage: <path-to-file> <line-to-comment-out>"
        if [ ! -a "$file" ]
        then
            echo "$file does not exist"
        fi
    fi
}