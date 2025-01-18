#! /bin/bash

# A script that shows a battery warning on i3
# - suru
main() {

    FULL="full battery"
    LOW="low battery"

    while true; do

        PERC=$(cat //sys/class/power_supply/BAT0/capacity)
        STATUS=$(cat //sys/class/power_supply/BAT0/status)

        if [ $STATUS == Charging ]; then
            if [ $PERC -gt 95 ]; then
                notify-send $FULL
            fi
        else
            # restart messages, reset limits
            if [ $PERC -lt 10 ]; then
                notify-send $LOW 
            fi
        fi

        sleep 2s
        #exec i3-nagbar -m $PREC
    done

} >/dev/null

main
