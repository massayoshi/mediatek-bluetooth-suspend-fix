#!/usr/bin/env bash
case ${1} in
    pre)
    rfkill block all
    echo "Killed wifi/bluetooth"
    ;;
    post)
    rfkill unblock all
    echo "Started wifi/bluetooth"
    ;;
esac
