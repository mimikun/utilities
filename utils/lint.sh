#!/bin/bash

run_lint() {
    shellcheck ./"$1"
}

run_lint chezmoi_post_apply_hook.sh
run_lint chezmoi_pre_apply_hook.sh
run_lint generate_cargo_package_list.sh
run_lint generate_pip_package_list.sh
run_lint git-amend-commit.sh
run_lint git-browse.sh
run_lint git-hash.sh
run_lint git-ignore.sh
run_lint install_asdf_plugins.sh
run_lint install_cargo_packages.sh
run_lint install_gh_extensions.sh
run_lint install_pip_packages.sh
run_lint update_pnpm.sh
run_lint update_poetry.sh
run_lint utils/format.sh
run_lint utils/install.sh
run_lint utils/lint.sh
