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
#./calc_gcd.sh 10 0

# test7:引数に小数が含まれる
#./calc_gcd.sh 10 2.5

# test8:引数が整数の最大値を超えている
#./calc_gcd.sh 10 9223372036854775808

# test9:引数に負の数が含まれる
#./calc_gcd.sh 10 -20

# test10:引数が2つとも自然数
#./calc_gcd.sh 10 20

## test1~10の評価 
#if [ $? -eq 0 ]; then
#    echo "$0 is pass."
#    exit 0
#else
#    echo "$0 is fail."
#    exit 1
#fi


## CALCULATE_GREATEST_COMMON_DIVISORのテスト
# test11:引数に1が含まれると最大公約数は1になる
arg1=1
arg2=10
answer=1

# test12:引数が等しい場合、最大公約数も引数と等しい
#arg1=12345
#arg2=12345
#answer=12345

# test13:引数の順序が変わっても正しく最大公約数を求められる(1回目)
#arg1=2013
#arg2=1159
#answer=61

# test14:引数の順序が変わっても正しく最大公約数を求められる(2回目)
#arg1=1159
#arg2=2013
#answer=61

# test15:非常に大きい数の最大公約数を求める
# arg1=548877304097406976  # 2の40乗*71*79*89 (71,79,89は素数)
# arg2=646208272411394048  # 2の40乗*73*83*97 (73,83,97は素数)
# answer=1099511627776     # 2の40乗
 
## test11~15の評価
result=$(./calc_gcd.sh $arg1 $arg2 | awk '{print $5}')

if [ $result -eq $answer ]; then
    echo "$0 is pass."
else
    echo "$0 is fail."
fi
