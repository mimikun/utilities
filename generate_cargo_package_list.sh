#!/bin/bash

cargo install-update --list |
    tail -n +4 |
    sed -e "s/ /\t/g" |
    cut -f 1 |
    sed "/^\$/d" |
    sort >"$HOME/.mimikun-pkglists/linux_cargo_packages.txt"
