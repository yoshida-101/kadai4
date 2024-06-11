#!/bin/bash

CHECK_ARG_COUNT () {
    if [ $# -ne 2 ]; then
        echo "引数を2つ入力してください"
        exit 1
    fi
}

# Main

CHECK_ARG_COUNT $@
