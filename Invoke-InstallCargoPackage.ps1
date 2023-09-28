function Invoke-InstallCargoPackage {
    function Invoke-ExistsCmd() {
        Get-Command -Name $1
        return $?
    }

    $pkglist = Join-Path -Path $env:USERPROFILE -ChildPath windows_cargo_packages.txt

    Get-Content -Path $pkglist |
    ForEach-Object {
        $pkg = $_
        if ! Invoke-ExistsCmd $pkg {
            Write-Output "$pkg is not found"
            cargo install $pkg
        }
    }
}

Set-Alias -Name install_cargo_package -Value Invoke-InstallCargoPackage
