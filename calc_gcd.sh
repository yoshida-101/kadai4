#!/bin/bash

# 終了ステータスは以下の通りとする
# 0: 正常終了
# 1: 引数の数が2ではない
# 2: 引数が自然数ではない
# 3: 引数が整数の最大値を超えている

CHECK_ARG_COUNT () {
    if [ $# -ne 2 ]; then
        echo "引数を2つ入力してください"
        exit 1
    fi
}


CHECK_IS_NATURAL_NUMBER () {
    # exprは解が0のときに終了ステータス1を返す
    # exprは引数が整数でないときに終了ステータス2を返す
    expr $1 + 0 >/dev/null 2>&1

    if [ $? -ne 0 ]; then
        echo "$1 は自然数ではありません"
        exit 2
    # 整数の最大値を超えているか確認する
    # オーバーフローして文字列として一致しないことを確認する
    elif [ $(( $1 + 0 )) != $1 ]; then
        echo "整数の最大値を超えています"
        exit 3
    # 負の数か確認する
    elif [ $1 -lt 0 ]; then
        echo "$1 は自然数ではありません"
        exit 2
    fi
}


# Main
CHECK_ARG_COUNT $@

for i in "$@"; do
    CHECK_IS_NATURAL_NUMBER ${i}
done
