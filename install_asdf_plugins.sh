#!/bin/bash

while read -r line; do
    asdf plugin add $line
    sleep 1
done <~/asdf_plugin_list.txt
