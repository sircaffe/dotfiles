#!/bin/bash

# Simple backup script for my own personal dotfiles.
#
# By: Janregx (Kinan Principe)
#
# Created     : 01/10/2024
# Last change : 01/10/2024

source common.sh

for i in "${list[@]}"; do
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
