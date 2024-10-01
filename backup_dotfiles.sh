# Simple backup script for my own personal dotfiles.
#
# By: Janregx (Kinan Principe)
#
# Created     : 01/10/2024
# Last change : 01/10/2024


#!/bin/bash

input=(
    .emacs.local
    .emacs
    .emacs.custom.el
)

log() {
    echo -e "[\e[32mLOG\e[0m]: $1"
}
err() {
    echo -e "[\e[31mERROR\e[0m]: $1"
}

# Emacs config files.
# TODO: implement deployment.

for i in "${input[@]}"; do
    log "Copying $i"

    if [ -d ~/"$i" ]; then
        cp -r ~/"$i" .
    elif [ -f ~/"$i" ]; then
        cp ~/"$i" .
    else
        err "Could not copy $i. Invalid file/folder type."
    fi
done

echo "All done!"
