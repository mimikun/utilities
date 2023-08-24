#!/bin/bash

current_dir=$(pwd)

run_shfmt() {
    shfmt ./"$1" >./fmt-"$1"
    mv ./fmt-"$1" ./"$1"
    chmod +x ./"$1"
}

run_shfmt generate_cargo_package_list.sh
run_shfmt git-ammend-commit.sh
run_shfmt git-browse.sh
run_shfmt git-hash.sh
run_shfmt git-ignore.sh
run_shfmt install_asdf_plugins.sh
run_shfmt install_cargo_packages.sh
run_shfmt install_gh_extensions.sh
run_shfmt update_pnpm.sh
run_shfmt update_poetry.sh

cd utils || exit
run_shfmt format.sh
run_shfmt install.sh
run_shfmt lint.sh
cd "$current_dir" || exit
