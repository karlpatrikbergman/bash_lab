#!/usr/bin/env bash

# imports
. date_util.sh
. string_util.sh

app=`basename "$0"`
printf "\n"

function run_get_date() {
    printf "$app: Calling get_date in script date_util.sh:\n"
    printf "$(get_date)"
}
#run_get_date
#printf "\n\n"

function run_string_util_call_to_upper() {
    printf "$app: Calling to_upper_case in script string_util.sh:\n"
    printf "$(to_upper_case 'hej hej alla glada')"
}
run_string_util_call_to_upper;

printf "\n"