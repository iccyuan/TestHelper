#!/bin/bash

# 字体颜色配置
Yellow="\033[33m"
Green="\033[32m"
Red="\033[31m"
Blue="\033[36m"
Font="\033[0m"

# 提示
INFO="[${Green}Info${Font}]"
ERROR="[${Red}Error${Font}]"
TIP="[${Green}Tip${Font}]"

yellow() {
    echo -e "${Yellow} $1 ${Font}"
}

green() {
    echo -e "${Green} $1 ${Font}"
}

red() {
    echo -e "${Red} $1 ${Font}"
}

blue() {
    echo -e "${Blue} $1 ${Font}"
}

run_wallet_mint() {
    ironfish wallet:mint
}

run_wallet_burn() {
    ironfish wallet:burn
}

run_wallet_send() {
    ironfish wallet:send --to dfc2679369551e64e3950e06a88e68466e813c63b100283520045925adbe59ca
}

run_faucet() {
    ironfish faucet
}

run_wallet_list() {
    ironfish wallet:accounts
}

run_wallet_address() {
    ironfish wallet:address
}

run_wallet_balances() {
    ironfish wallet:balances
}

run_wallet_transactions() {
    ironfish wallet:transactions
}

run_status() {
    ironfish status
}

start_menu() {
    
    clear

    while true
    do
    green " ========================================== "
    green "         ironfish 管理脚本"
    green "   fork from Allen_Li   v1.0.0"
    green " ========================================== "
    yellow " 1. 任务一:铸币"
    yellow " 2. 任务二:燃烧铸币"
    yellow " 3. 任务三:发送铸币"
    yellow " 4. 我的钱包"
    yellow " 5. 默认钱包地址"
    yellow " 6. 默认钱包余额"
    yellow " 7. 默认钱包交易记录"
    yellow " 8. 水龙头"
    yellow " 9. 查看状态"
    yellow " 0. 退出管理脚本"
    green " ========================================== "
    read -rp "Please enter a number:  " num
    case "$num" in
    1)
        run_wallet_mint
        ;;
    2)
        run_wallet_burn
        ;;
    3)
        run_wallet_send
        ;;
    4)
        run_wallet_list
        ;;
    5)
        run_wallet_address
        ;;
    6)
        run_wallet_balances
        ;;
    7)
        run_wallet_transactions
        ;;
    8)
        run_faucet
        ;;
    9)
        run_status
        ;;
    0)
        exit 1
        ;;
    *)
        echo
        echo -e " ${Error} 请输入正确的数字"
        ;;
    esac

    done
}
start_menu
