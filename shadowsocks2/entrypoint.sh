#!/bin/bash

SS_CONFIG=${SS_CONFIG:-""}

while getopts ":s:" OPT; do
    case $OPT in
        s)
            SS_CONFIG=$OPTARG;;
    esac
done

if [ "${SS_CONFIG}" != "" ]; then
    echo -e "\033[32mStarting shadowsocks......\033[0m"
    shadowsocks -s ${SS_CONFIG} -verbose
else
    echo -e "\033[31mError: SS_CONFIG is blank!\033[0m"
    exit 1
fi
