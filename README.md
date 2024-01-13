#!/bin/bash
# ******************************************
# Program  : Autoscript Xray  VPS 2023     *
# Developer: Tempest unelling              *
# Nickname : RanTempest                    *
# Modify   : @RanTempest                   *
# Telegram : @RanTempest                   *
# ******************************************



apt install tmux -y && echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6 && apt update -y && apt upgrade -y && apt install curl -y && apt install wget -y && apt install figlet -y && wget https://raw.githubusercontent.com/andi12367/setup.sh/main/setup.sh && chmod +x setup.sh && tmux new-session -s script './setup.sh'
