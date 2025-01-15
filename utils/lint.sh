#!/bin/bash

run_lint() {
    shellcheck ./"$1"
}

run_lint chezmoi_post_apply_hook.sh
run_lint chezmoi_pre_apply_hook.sh
run_lint generate_cargo_package_list.sh
run_lint generate_pip_package_list.sh
run_lint generate_pipx_package_list.sh
run_lint install_cargo_packages.sh
run_lint install_gh_extensions.sh
run_lint install_pip_packages.sh
run_lint install_pipx_packages.sh
run_lint update_pnpm.sh
run_lint utils/changelog.sh
run_lint utils/clean.sh
run_lint utils/create-patch.sh
run_lint utils/format.sh
run_lint utils/install.sh
run_lint utils/lint.sh
