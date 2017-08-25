#!/usr/bin/env bash

# To return values other than integers we need to use echo (not return)
# To retrieve return values with command substitution we also need echo (not return)
# or we can use $?

# To be able to evaluate a function call like this:
#   if uri_has_expected_pattern "/DbPopulation/27.0.2.9ad8eca"; then
#       echo "true"
#   fi
# we need to use return values/expressions, not echo

function is_alpha_numeric() {
    [[ "${1}" =~ ^[A-Za-z0-9]*$ ]]
}

function string_length_is_3() {
    [ ${#1} -eq 3 ]
}

function is_alpha_numberic_and_length_3() {
    is_alpha_numeric ${1} && string_length_is_3 ${1}

}
readonly my_string="bar"
if is_alpha_numberic_and_length_3 ${my_string}; then
    printf "my_string: %s\n" "${my_string}"
fi