#!/bin/bash

# shellcheck disable=SC2034
read_prompt="git commit --amend --no-edit. OK?"

if read_confirm; then
    git commit --amend --no-edit
fi
