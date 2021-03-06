#!/usr/bin/env bash
#! /bin/bash

# Usage of -n, conclusion:
# If test checks for non zero length strings, both conditions/tests using quotes like
#   ([-n "$variable"])
# and not using quotes like
#   ([-n $variable])
# will evaluate to TRUE when $variable actually is non zero string.
#
# But if $variable is emtpy string only condition WITH quoutes like
#   ([-n "$variable"])
# will evaluate to true

echo "First program argument is :" $1

# -n STRING
# True if the length of STRING is nonzero
if [ -n "$1" ]; then
    echo [ -n \"$1\" ] "(check with quotes) length is non zero"
fi

if [ -n $1 ]; then
    echo [ -n $1 ] "(check without quotes) length is non zero"
fi

# -z STRING
# True if the length of STRING is zero
if [ -z "$1" ]; then
    echo "$1 (check with quotes) length is zero"
fi

if [ -z $1 ]; then
    echo "$1 (check without quotes) length is zero"
fi



#if [ -z $1 ]; then
   # [ -x $exec ] || echo "!($exists exists and is executable), exit5"; exit 5
   # [ -f $config ] || echo "!($config exists and is a regular file), exit 6"; exit 6



    #if [ -n $1 ]; then
    #    echo "$1 (no quoutes) is not empty string"
    #fi

    #echo "-x $1" $[ -x $1]
    #foo=$[ -x "$1"]
    #echo $foo
    #echo "$1 is string of lentgh zero: $VAR1"
    #echo "$exec exists and is executable"
    #echo "$config exists and is a regular file"

#fi
