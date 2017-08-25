#!/usr/bin/env bash

# Under progress...
#
# $(...) calling syntax captures standard output. That is its job. That's what it does.

# There is a distinction between command line arguments and standard input.
# A pipe will connect standard output of one process to standard input of another. So
#   $ ls | echo
# Connects standard output of ls to standard input of echo.
# Fine right?
# Well, echo ignores standard input and will dump its command line arguments -
# which are none in this case to - its own stdout. The output: nothing at all.

# echo writes to stdout
return_string() {
    echo "foo bar"
}

# tr reads from stdin and writes to stdout
to_uppercase() {
    tr '[:lower:]' '[:upper:]'
}

# rev reads from stdin and writes to stdout
reverse_string() {
    rev
}

# sed, shuf and tr writes reads from stdin and writes to stdout
scramble_string() {
    sed 's/./&\n/g' | shuf | tr -d "\n"
}

readonly MY_STRING="hej alla glada"
#reverse_string <<< "${MY_STRING}"
#scramble_string <<< "${MY_STRING}"
#to_uppercase <<< "${MY_STRING}"

# This equals
to_uppercase <<< $(scramble_string <<< $(reverse_string <<< "${MY_STRING}"))
# this
echo "${MY_STRING}" | reverse_string | scramble_string | to_uppercase

