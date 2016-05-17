#!/usr/bin/env bash

. ././../../basic_functions/string_util.sh
. ././../../basic_functions/file_util.sh

# Fine debug tool
export PS4='+(${BASH_SOURCE}:${LINENO}): ${FUNCNAME[0]:+${FUNCNAME[0]}(): }'
set -x

function run_file_exists_and_is_regular_with_executable_file() {
    #log $FUNCNAME
    local my_file="various_files/executable_file"
    if file_exists_and_is_a_regular_file $my_file
    then
        printf "File '$my_file' exists and is regular file"
    else
        printf "File '$my_file' does not exist or is not regular file"
    fi
}
run_file_exists_and_is_regular_with_executable_file
printf "\n\n"

################################################################################

function run_file_exists_and_is_executable_with_non_executable_file {
    #log $FUNCNAME
    local my_file="various_files/non_executable_file"
    if file_exists_and_is_executable $my_file
    then
        printf "File '$my_file' exists and is executable"
    else
        printf "File '$my_file' does not exist or is not executable"
    fi
}
run_file_exists_and_is_executable_with_non_executable_file
printf "\n\n"

################################################################################

function run_file_exists_and_is_executable_with_executable_file {
    #log $FUNCNAME
    local my_file="various_files/executable_file"
    if file_exists_and_is_executable $my_file
    then
        printf "File '$my_file' exists and is executable"
    else
        printf "File '$my_file' does not exist or is not executable"
    fi
}
run_file_exists_and_is_executable_with_executable_file
printf "\n"