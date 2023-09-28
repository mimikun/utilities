function Invoke-GenerateCargoPackageList() {
    cargo install-update --list |
    Select-Object -Skip 3 |
    ForEach-Object { $_.Split(" ")[0] } |
    Where-Object { $_ -ne "" } |
    Out-File -FilePath $env:USERPROFILE\windows_cargo_packages.txt -Encoding utf8
}

Set-Alias -Name generate_cargo_package_list -Value Invoke-GenerateCargoPackageList
