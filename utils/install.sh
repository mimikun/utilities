#!/bin/bash

before_sudo() {
    if ! test "$(
        sudo uname >>/dev/null
        echo $?
    )" -eq 0; then
        exit 1
    fi
}

run_install() {
    sudo cp ./"$1".sh ~/.local/bin/"$1"
}

before_sudo
run_install generate_cargo_package_list
run_install git-ammend-commit
run_install git-browse
run_install git-hash
run_install git-ignore
run_install install_asdf_plugins
run_install install_cargo_packages
run_install install_gh_extensions
run_install update_pnpm
run_install update_poetry
