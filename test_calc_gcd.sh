#!/bin/bash

# 引数の数が0
./calc_gcd.sh

if [ $? -eq 0 ]; then
    echo "$0 is pass."
    exit 0
else
    echo "$0 is fail."
    exit 1
fi
