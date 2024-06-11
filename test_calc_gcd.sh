#!/bin/bash

# test1:引数の数が0
#./calc_gcd.sh

# test2:引数の数が1
./calc_gcd.sh 10

# test3:引数の数が2
#./calc_gcd.sh 10 20

# test4:引数の数が3
#./calc_gcd.sh 10 20 30

if [ $? -eq 0 ]; then
    echo "$0 is pass."
    exit 0
else
    echo "$0 is fail."
    exit 1
fi
