#!/bin/bash

source common.sh

allowall=0

for i in "${list[@]}"; do
    if [ -f "$HOME/$i" ] || [ -d "$HOME/$i" ]; then
        if [ $allowall -eq 0 ]; then
            warn "\"\e[1m$i\e[0m\" already exists."
            read -p "Skip? (y/n/a):" -n 1 -r
            echo
        fi

        if [[ $REPLY = "y" ]]; then
            warn "Overwriting $i"
            cp ./"$i" $HOME/"$i"
        elif [[ $REPLY = "n" ]]; then
            warn "Skipping $i..."
            continue
        elif [[ $REPLY = "a" ]]; then
            allowall=1
            warn "Overwriting $i"
            cp ./"$i" $HOME/"$i"
        else
            echo Abort.
            break
        fi
    fi
done
