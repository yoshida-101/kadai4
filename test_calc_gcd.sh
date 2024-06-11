#!/bin/bash

## CHECK_ARG_COUNTのテスト
# test1:引数の数が0
#./calc_gcd.sh

# test2:引数の数が1
#./calc_gcd.sh 10

# test3:引数の数が2
#./calc_gcd.sh 10 20

# test4:引数の数が3
#./calc_gcd.sh 10 20 30

## CHECK_IS_NATURAL_NUMBERのテスト
# test5:引数に文字が含まれる
#./calc_gcd.sh 10 テスト

# test6:引数に0が含まれる
./calc_gcd.sh 10 0

# test7:引数に小数が含まれる
#./calc_gcd.sh 10 2.5

# test8:引数が整数の最大値を超えている
#./calc_gcd.sh 10 9223372036854775808

# test9:引数に負の数が含まれる
#./calc_gcd.sh 10 -20

# test10:引数が2つとも自然数
#./calc_gdc.sh 10 20

if [ $? -eq 0 ]; then
    echo "$0 is pass."
    exit 0
else
    echo "$0 is fail."
    exit 1
fi
