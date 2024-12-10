#!/bin/bash

source common.sh

allowall=0

list=(
    .emacs.local
    .emacs
    .emacs.custom.el
)

# Logging Functions
log() {
    echo -e "[\e[32mLOG\e[0m]: $1"
}
err() {
    echo -e "[\e[31mERROR\e[0m]: $1"
}
warn() {
    echo -e "[\e[33mWARNING\e[0m]: $1"
}


make_syml() { ln -sf $(pwd)/"$i" $HOME/"$i"; }

for i in "${list[@]}"; do
    if [ -L "$HOME/$i" ]; then
        if [ $allowall -eq 0 ]; then
            warn "\e[1m$i\e[0m already exists."
            read -p "Overwrite? y/n/a: " -n 1 -r
            echo
        fi

        if [[ $REPLY = "y" ]]; then
            log "Deleting $i and creating corresponding symlink."
            make_syml
        elif [[ $REPLY = "n" ]]; then
            warn "Skipping $i..."
            continue
        elif [[ $REPLY = "a" ]]; then
            allowall=1
            log "Deleting $i and creating corresponding symlink."
            make_syml
        else
            echo Abort.
            break
        fi
    else
	make_syml	
    fi
done
