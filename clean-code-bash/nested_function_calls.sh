#!/usr/bin/env bash

function reverse_string() {
    echo $(rev<<<"${1}")
}

function string_to_upper() {
    echo "${1^^}"
}

result=$(string_to_upper "$(reverse_string "hej hej")")
printf "Result: %s\n" "${result}"

