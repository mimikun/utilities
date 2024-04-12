#!/bin/bash

pip freeze |
    sed \
        -e "s/=.*//g" \
        -e "s/ @.*//g" \
        >"$HOME"/linux_pip_packages.txt
