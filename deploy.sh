#!/bin/bash

fd=( $(cat COMMON) )


for i in "${fd[@]}"; do
    echo $i
done
