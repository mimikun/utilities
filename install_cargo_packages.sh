#!/bin/bash

function existsCmd() {
    type -a "$1" >/dev/null 2>&1
}

while read -r line; do
    if ! existsCmd "$line"; then
        echo "$line is not found"
        pueue add -- "cargo install $line"
    fi
done <~/cargo_packages.txt
